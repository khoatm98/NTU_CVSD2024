`timescale 1ns/10ps
module IOTDF( clk, rst, in_en, iot_in, fn_sel, busy, valid, iot_out);
input          clk;
input          rst;
input          in_en;
input  [7:0]   iot_in;
input  [2:0]   fn_sel;
output         busy;
output         valid;
output [127:0] iot_out;

// ---------------------------------------------------------------------------
// Parameter declaration
// ---------------------------------------------------------------------------
localparam S_RESET     = 3'd0;
localparam S_READ      = 3'd1;
localparam S_DES_ENC   = 3'd2;
localparam S_DES_DEC   = 3'd3;
localparam S_CRC       = 3'd4;
localparam S_TOP_MAX   = 3'd5;
localparam S_LAST_MIN  = 3'd6;
// ---------------------------------------------------------------------------
// Reg and wire declaration
// ---------------------------------------------------------------------------
reg[2:0] cs, ns;
reg busy_r;

// Clock gating
wire clk_f1;
wire clk_f2;
wire clk_f3;
wire clk_f4;
wire clk_f5;

reg  [127: 0] data_r;
wire [7:0]    data_w [15:0];
wire [63:0]    main_key_w;
wire [63:0]    plain_text_w;
wire [47:0]    key_w;
wire [127:0]    cipher_text_out_w;
wire 			cipher_out_valid_w;
wire [2:0]      crc_out_w;
wire 			crc_out_valid_w;
wire [127:0]    top2max_out_w;
wire 			top2max_out_valid_w;
reg [3:0] input_cnt;
reg [3:0] round_r;
reg       first_r;

reg         valid_r;
reg [127:0] iot_out_r;


genvar i;
// ---------------------------------------------------------------------------
// Assignment Block
// ---------------------------------------------------------------------------
generate 
	for( i = 0; i < 16; i = i + 1) begin: data_wire_extract
		assign data_w[i] = data_r[{i[3:0],3'b000} +: 8];
	end
endgenerate

assign busy = 0;//ns != READ;

assign main_key_w   = data_r[127:64];
assign plain_text_w = data_r[63:0]   ;

assign clk_f1 = clk;// & (fn_sel == 3'b001 || fn_sel == 3'b010);
assign clk_f3 = clk;// & fn_sel == 3'b011;
assign clk_f4 = clk;// & (fn_sel == 3'b100 || fn_sel == 3'b101);

assign iot_out = iot_out_r;    
assign valid   = valid_r;  

// ---------------------------------------------------------------------------
// Submodules declaration
// ---------------------------------------------------------------------------
key_gen u_key_gen(
				  .clk(clk_f1),
				  .main_key(main_key_w),
				  .round(round_r),
				  .mode(fn_sel[0]),
				  .rst(rst),
				  .key_out(key_w)
				  );
				  
ciptext_gen u_ciptext_gen(
				  .clk(clk_f1),
				  .plain_text(plain_text_w),
				  .main_key(main_key_w),
				  .key_in(key_w),
				  .first(first_r),
				  .rst(rst),
				  .o_out_valid(cipher_out_valid_w),
				  .cipher_text(cipher_text_out_w)
				  );
				  
crc_calc u_crc_calc(
				  .clk(clk_f3),
				  .i_data(data_r),
				  .first(first_r),
				  .rst(rst),
				  .o_out_valid(crc_out_valid_w),
				  .o_crc(crc_out_w)
				  );
				  
top2maxmin u_top2maxmin(
				  .clk(clk_f4),
				  .i_data(data_r),
				  .first(first_r),
				  .round(round_r),
				  .maxmin(~fn_sel[0]),
				  .rst(rst),
				  .o_out_valid(top2max_out_valid_w),
				  .o_top2max(top2max_out_w)
				  );
// ---------------------------------------------------------------------------
// Combinational Block
// ---------------------------------------------------------------------------
always @(*) begin
	case(cs)
		S_RESET:    ns = S_READ;
		S_READ :    begin
			case(fn_sel)
				3'b001  : ns = &input_cnt[3:0] ? S_DES_ENC  : S_READ;
				3'b010  : ns = &input_cnt[3:0] ? S_DES_DEC  : S_READ;
				3'b011  : ns = &input_cnt[3:0] ? S_CRC      : S_READ;
				3'b100  : ns = &input_cnt[3:0] ? S_TOP_MAX  : S_READ;
				default : ns = &input_cnt[3:0] ? S_LAST_MIN : S_READ;
			endcase
		end 
		default : ns = cs;
	endcase
end

// ---------------------------------------------------------------------------
// Sequential Block
// ---------------------------------------------------------------------------

always @ (posedge clk or posedge rst) begin
	if(rst) begin
		cs <= 0;
	end
	else begin
		cs <= ns;
	end
end

always @ (posedge clk or posedge rst) begin
	if(rst)
		data_r <= 0;
	else
		data_r <= in_en ? {iot_in , data_r[127:8]} : data_r;
end

always @ (posedge clk or posedge rst) begin
	if(rst)
		round_r <= 0;
	else
		round_r <= input_cnt == 15 && in_en ? 0 : round_r + 1;
end

always @ (posedge clk or posedge rst) begin
	if(rst)
		input_cnt <= 0;
	else
		input_cnt <= input_cnt + in_en;
end

always @ (posedge clk or posedge rst) begin
	if(rst)
		first_r <= 0;
	else
		first_r <= input_cnt == 15 && in_en;
end

always @ (posedge clk or posedge rst) begin
	if(rst) begin
		valid_r   <= 0;
		iot_out_r <= 0;
	end
	else begin
		valid_r   <= (fn_sel == 3'b001 || fn_sel == 3'b010) ? cipher_out_valid_w : (fn_sel == 3'b011 ? crc_out_valid_w : top2max_out_valid_w); //cipher_out_valid_w || crc_out_valid_w || top2max_out_valid_w;
		iot_out_r <= (fn_sel == 3'b001 || fn_sel == 3'b010) ? cipher_text_out_w : (fn_sel == 3'b011 ? {125'd0, crc_out_w} : top2max_out_w);
	end
end

endmodule


module key_gen (
input          clk,
input   [63:0] main_key,
input   [3: 0] round,
input          mode, // 1 encr 0 decr
input          rst,
output  [47:0] key_out);

wire    [55:0] cipher_key_w;
reg     [55:0] pc2_in_r;
wire    [47:0] key;
reg			   cip_en_r;
assign key_out = key;
assign cipher_key_w = {main_key[7]  ,main_key[15] ,main_key[23] ,main_key[31]
				      ,main_key[39] ,main_key[47] ,main_key[55] ,main_key[63]
				      ,main_key[6]  ,main_key[14] ,main_key[22] ,main_key[30]
				      ,main_key[38] ,main_key[46] ,main_key[54] ,main_key[62]
				      ,main_key[5]  ,main_key[13] ,main_key[21] ,main_key[29]
				      ,main_key[37] ,main_key[45] ,main_key[53] ,main_key[61]
				      ,main_key[4]  ,main_key[12] ,main_key[20] ,main_key[28]
				      ,main_key[1]  ,main_key[9]  ,main_key[17] ,main_key[25]
				      ,main_key[33] ,main_key[41] ,main_key[49] ,main_key[57]
				      ,main_key[2]  ,main_key[10] ,main_key[18] ,main_key[26]
				      ,main_key[34] ,main_key[42] ,main_key[50] ,main_key[58]
				      ,main_key[3]  ,main_key[11] ,main_key[19] ,main_key[27]
				      ,main_key[35] ,main_key[43] ,main_key[51] ,main_key[59]
				      ,main_key[36] ,main_key[44] ,main_key[52] ,main_key[60]};
					  
assign key = {pc2_in_r[42] ,pc2_in_r[39]
			 ,pc2_in_r[45] ,pc2_in_r[32]
			 ,pc2_in_r[55] ,pc2_in_r[51]
			 ,pc2_in_r[53] ,pc2_in_r[28]
			 ,pc2_in_r[41] ,pc2_in_r[50]
			 ,pc2_in_r[35] ,pc2_in_r[46]
			 ,pc2_in_r[33] ,pc2_in_r[37]
			 ,pc2_in_r[44] ,pc2_in_r[52]
			 ,pc2_in_r[30] ,pc2_in_r[48]
			 ,pc2_in_r[40] ,pc2_in_r[49]
			 ,pc2_in_r[29] ,pc2_in_r[36]
			 ,pc2_in_r[43] ,pc2_in_r[54]
			 ,pc2_in_r[15] ,pc2_in_r[4] 
			 ,pc2_in_r[25] ,pc2_in_r[19]
			 ,pc2_in_r[9]  ,pc2_in_r[1] 
			 ,pc2_in_r[26] ,pc2_in_r[16]
			 ,pc2_in_r[5]  ,pc2_in_r[11]
			 ,pc2_in_r[23] ,pc2_in_r[8]
			 ,pc2_in_r[12] ,pc2_in_r[7] 
			 ,pc2_in_r[17] ,pc2_in_r[0]
			 ,pc2_in_r[22] ,pc2_in_r[3] 
			 ,pc2_in_r[10] ,pc2_in_r[14]
			 ,pc2_in_r[6]  ,pc2_in_r[20]
			 ,pc2_in_r[27] ,pc2_in_r[24]};

always@ (posedge clk or posedge rst) begin
	if(rst)
		pc2_in_r <= 0;
	else begin
		if(mode) begin
			case(round)
				4'd0   : pc2_in_r <= {cipher_key_w[54:28] ,cipher_key_w[55], cipher_key_w[26:0]  ,cipher_key_w[27]};
				4'd1   : pc2_in_r <= {pc2_in_r[54:28], pc2_in_r[55]   , pc2_in_r[26:0], pc2_in_r[27]};	
				4'd8   : pc2_in_r <= {pc2_in_r[54:28], pc2_in_r[55]   , pc2_in_r[26:0], pc2_in_r[27]};	
				4'd15  : pc2_in_r <= {pc2_in_r[54:28], pc2_in_r[55]   , pc2_in_r[26:0], pc2_in_r[27]};			
				default: pc2_in_r <= {pc2_in_r[53:28], pc2_in_r[55:54], pc2_in_r[25:0], pc2_in_r[27:26]};
			endcase
		end
		else begin
			case(round)
				4'd0   : pc2_in_r <= {cipher_key_w};
				4'd1   : pc2_in_r <= {pc2_in_r[28], pc2_in_r[55:29]   , pc2_in_r[0], pc2_in_r[27:1]};		
				4'd8   : pc2_in_r <= {pc2_in_r[28], pc2_in_r[55:29]   , pc2_in_r[0], pc2_in_r[27:1]};		
				4'd15  : pc2_in_r <= {pc2_in_r[28], pc2_in_r[55:29]   , pc2_in_r[0], pc2_in_r[27:1]};			
				default: pc2_in_r <= {pc2_in_r[29:28], pc2_in_r[55:30], pc2_in_r[1:0], pc2_in_r[27:2]};
			endcase
		end
	end
end

endmodule

module ciptext_gen (
input          clk,
input   [63:0] main_key,
input   [63:0] plain_text,
input   [47:0] key_in,
input          first,
input          rst,
output         o_out_valid,
output  [127:0] cipher_text);

wire [63:0] init_permutation_w;
wire [63:0] final_permutation_w;
reg [31:0] L_wait_r;
reg [31:0] R_wait_r;
reg [31:0] L_ready_r;
reg [31:0] R_ready_r;
wire [31:0] sbox_out_w;
reg   [63:0] main_key_r;
reg [47:0] key_in_r;
reg [15:0] first_r;


assign final_permutation_w = {L_ready_r ^ sbox_out_w, R_ready_r};

assign init_permutation_w = {plain_text[64-58], plain_text[64-50], plain_text[64-42], plain_text[64-34], plain_text[64-26], plain_text[64-18], plain_text[64-10], plain_text[64-2],
                             plain_text[64-60], plain_text[64-52], plain_text[64-44], plain_text[64-36], plain_text[64-28], plain_text[64-20], plain_text[64-12], plain_text[64-4],
                             plain_text[64-62], plain_text[64-54], plain_text[64-46], plain_text[64-38], plain_text[64-30], plain_text[64-22], plain_text[64-14], plain_text[64-6],
                             plain_text[64-64], plain_text[64-56], plain_text[64-48], plain_text[64-40], plain_text[64-32], plain_text[64-24], plain_text[64-16], plain_text[64-8],
                             plain_text[64-57], plain_text[64-49], plain_text[64-41], plain_text[64-33], plain_text[64-25], plain_text[64-17], plain_text[64-9],  plain_text[64-1],
                             plain_text[64-59], plain_text[64-51], plain_text[64-43], plain_text[64-35], plain_text[64-27], plain_text[64-19], plain_text[64-11], plain_text[64-3],
                             plain_text[64-61], plain_text[64-53], plain_text[64-45], plain_text[64-37], plain_text[64-29], plain_text[64-21], plain_text[64-13], plain_text[64-5],
                             plain_text[64-63], plain_text[64-55], plain_text[64-47], plain_text[64-39], plain_text[64-31], plain_text[64-23], plain_text[64-15], plain_text[64-7]};
							 
assign cipher_text[127:64] = main_key_r;				 
assign cipher_text[63:0]   = first_r[15] ? {final_permutation_w[64-40], final_permutation_w[64-8], final_permutation_w[64-48], final_permutation_w[64-16], final_permutation_w[64-56], final_permutation_w[64-24], final_permutation_w[64-64], final_permutation_w[64-32],
											final_permutation_w[64-39], final_permutation_w[64-7], final_permutation_w[64-47], final_permutation_w[64-15], final_permutation_w[64-55], final_permutation_w[64-23], final_permutation_w[64-63], final_permutation_w[64-31],
											final_permutation_w[64-38], final_permutation_w[64-6], final_permutation_w[64-46], final_permutation_w[64-14], final_permutation_w[64-54], final_permutation_w[64-22], final_permutation_w[64-62], final_permutation_w[64-30],
											final_permutation_w[64-37], final_permutation_w[64-5], final_permutation_w[64-45], final_permutation_w[64-13], final_permutation_w[64-53], final_permutation_w[64-21], final_permutation_w[64-61], final_permutation_w[64-29],
											final_permutation_w[64-36], final_permutation_w[64-4], final_permutation_w[64-44], final_permutation_w[64-12], final_permutation_w[64-52], final_permutation_w[64-20], final_permutation_w[64-60], final_permutation_w[64-28],
											final_permutation_w[64-35], final_permutation_w[64-3], final_permutation_w[64-43], final_permutation_w[64-11], final_permutation_w[64-51], final_permutation_w[64-19], final_permutation_w[64-59], final_permutation_w[64-27],
											final_permutation_w[64-34], final_permutation_w[64-2], final_permutation_w[64-42], final_permutation_w[64-10], final_permutation_w[64-50], final_permutation_w[64-18], final_permutation_w[64-58], final_permutation_w[64-26],
											final_permutation_w[64-33], final_permutation_w[64-1], final_permutation_w[64-41], final_permutation_w[64-9],  final_permutation_w[64-49], final_permutation_w[64-17], final_permutation_w[64-57], final_permutation_w[64-25]} : 0;


sbox u_sbox(.R(R_ready_r), .K(key_in), .sbox_out(sbox_out_w));

always @(posedge clk or posedge rst) begin
	if (rst) begin
		R_ready_r   <= 0;
		L_ready_r   <= 0;
		main_key_r  <= 0;
		first_r     <= 0;
	end else begin
		R_ready_r   <= (first ? init_permutation_w[31:0]  : L_ready_r ^ sbox_out_w);
		L_ready_r   <= (first ? init_permutation_w[63:32] : R_ready_r);
		main_key_r  <=  first ? main_key : main_key_r;
		first_r     <=  first ? 16'b0000_0000_0000_0001 : {first_r[14:0],1'b0};
	end
end

assign o_out_valid = first_r[15];


endmodule

module sbox
(
input [31:0] R,
input [47:0] K,
output [31:0] sbox_out
);

wire [63:0] sbox[7:0][3:0]; // 63 bit wide entries per row, 8 sboxes, 4 rows per sbox
// *********************************************************************************************************************************
// Creating the S-boxes LUT
// *********************************************************************************************************************************
//always @(*) begin	 
	// S1:
assign  sbox[0][0] = {4'd14, 4'd4, 4'd13, 4'd1, 4'd2, 4'd15, 4'd11, 4'd8, 4'd3, 4'd10, 4'd6, 4'd12, 4'd5, 4'd9, 4'd0, 4'd7}; 
assign  sbox[0][1] = {4'd0, 4'd15, 4'd7, 4'd4, 4'd14, 4'd2, 4'd13, 4'd1, 4'd10, 4'd6, 4'd12, 4'd11, 4'd9, 4'd5, 4'd3, 4'd8};
assign  sbox[0][2] = {4'd4, 4'd1, 4'd14, 4'd8, 4'd13, 4'd6, 4'd2, 4'd11, 4'd15, 4'd12, 4'd9, 4'd7, 4'd3, 4'd10, 4'd5, 4'd0};
assign	sbox[0][3] = {4'd15, 4'd12, 4'd8, 4'd2, 4'd4, 4'd9, 4'd1, 4'd7, 4'd5, 4'd11, 4'd3, 4'd14, 4'd10, 4'd0, 4'd6, 4'd13}; 
	 
	// S2:
assign  sbox[1][0] = {4'd15, 4'd1, 4'd8, 4'd14, 4'd6, 4'd11, 4'd3, 4'd4, 4'd9, 4'd7, 4'd2, 4'd13, 4'd12, 4'd0, 4'd5, 4'd10}; 
assign  sbox[1][1] = {4'd3, 4'd13, 4'd4, 4'd7, 4'd15, 4'd2, 4'd8, 4'd14, 4'd12, 4'd0, 4'd1, 4'd10, 4'd6, 4'd9, 4'd11, 4'd5};
assign  sbox[1][2] = {4'd0, 4'd14, 4'd7, 4'd11, 4'd10, 4'd4, 4'd13, 4'd1, 4'd5, 4'd8, 4'd12, 4'd6, 4'd9, 4'd3, 4'd2, 4'd15};
assign	sbox[1][3] = {4'd13, 4'd8, 4'd10, 4'd1, 4'd3, 4'd15, 4'd4, 4'd2, 4'd11, 4'd6, 4'd7, 4'd12, 4'd0, 4'd5, 4'd14, 4'd9}; 
	 
	// S3:
assign  sbox[2][0] = {4'd10, 4'd0, 4'd9, 4'd14, 4'd6, 4'd3, 4'd15, 4'd5, 4'd1, 4'd13, 4'd12, 4'd7, 4'd11, 4'd4, 4'd2, 4'd8}; 
assign  sbox[2][1] = {4'd13, 4'd7, 4'd0, 4'd9, 4'd3, 4'd4, 4'd6, 4'd10, 4'd2, 4'd8, 4'd5, 4'd14, 4'd12, 4'd11, 4'd15, 4'd1};
assign  sbox[2][2] = {4'd13, 4'd6, 4'd4, 4'd9, 4'd8, 4'd15, 4'd3, 4'd0, 4'd11, 4'd1, 4'd2, 4'd12, 4'd5, 4'd10, 4'd14, 4'd7};
assign	sbox[2][3] = {4'd1, 4'd10, 4'd13, 4'd0, 4'd6, 4'd9, 4'd8, 4'd7, 4'd4, 4'd15, 4'd14, 4'd3, 4'd11, 4'd5, 4'd2, 4'd12}; 
	 
	// S4:
assign  sbox[3][0] = {4'd7, 4'd13, 4'd14, 4'd3, 4'd0, 4'd6, 4'd9, 4'd10, 4'd1, 4'd2, 4'd8, 4'd5, 4'd11, 4'd12, 4'd4, 4'd15}; 
assign  sbox[3][1] = {4'd13, 4'd8, 4'd11, 4'd5, 4'd6, 4'd15, 4'd0, 4'd3, 4'd4, 4'd7, 4'd2, 4'd12, 4'd1, 4'd10, 4'd14, 4'd9};
assign  sbox[3][2] = {4'd10, 4'd6, 4'd9, 4'd0, 4'd12, 4'd11, 4'd7, 4'd13, 4'd15, 4'd1, 4'd3, 4'd14, 4'd5, 4'd2, 4'd8, 4'd4};
assign	sbox[3][3] = {4'd3, 4'd15, 4'd0, 4'd6, 4'd10, 4'd1, 4'd13, 4'd8, 4'd9, 4'd4, 4'd5, 4'd11, 4'd12, 4'd7, 4'd2, 4'd14}; 
	 
	// S5:
assign  sbox[4][0] = {4'd2, 4'd12, 4'd4, 4'd1, 4'd7, 4'd10, 4'd11, 4'd6, 4'd8, 4'd5, 4'd3, 4'd15, 4'd13, 4'd0, 4'd14, 4'd9}; 
assign  sbox[4][1] = {4'd14, 4'd11, 4'd2, 4'd12, 4'd4, 4'd7, 4'd13, 4'd1, 4'd5, 4'd0, 4'd15, 4'd10, 4'd3, 4'd9, 4'd8, 4'd6};
assign  sbox[4][2] = {4'd4, 4'd2, 4'd1, 4'd11, 4'd10, 4'd13, 4'd7, 4'd8, 4'd15, 4'd9, 4'd12, 4'd5, 4'd6, 4'd3, 4'd0, 4'd14};
assign	sbox[4][3] = {4'd11, 4'd8, 4'd12, 4'd7, 4'd1, 4'd14, 4'd2, 4'd13, 4'd6, 4'd15, 4'd0, 4'd9, 4'd10, 4'd4, 4'd5, 4'd3}; 
	 
	// S6:
assign  sbox[5][0] = {4'd12, 4'd1, 4'd10, 4'd15, 4'd9, 4'd2, 4'd6, 4'd8, 4'd0, 4'd13, 4'd3, 4'd4, 4'd14, 4'd7, 4'd5, 4'd11}; 
assign  sbox[5][1] = {4'd10, 4'd15, 4'd4, 4'd2, 4'd7, 4'd12, 4'd9, 4'd5, 4'd6, 4'd1, 4'd13, 4'd14, 4'd0, 4'd11, 4'd3, 4'd8};
assign  sbox[5][2] = {4'd9, 4'd14, 4'd15, 4'd5, 4'd2, 4'd8, 4'd12, 4'd3, 4'd7, 4'd0, 4'd4, 4'd10, 4'd1, 4'd13, 4'd11, 4'd6};
assign	sbox[5][3] = {4'd4, 4'd3, 4'd2, 4'd12, 4'd9, 4'd5, 4'd15, 4'd10, 4'd11, 4'd14, 4'd1, 4'd7, 4'd6, 4'd0, 4'd8, 4'd13}; 
	 
	// S7:
assign  sbox[6][0] = {4'd4, 4'd11, 4'd2, 4'd14, 4'd15, 4'd0, 4'd8, 4'd13, 4'd3, 4'd12, 4'd9, 4'd7, 4'd5, 4'd10, 4'd6, 4'd1}; 
assign  sbox[6][1] = {4'd13, 4'd0, 4'd11, 4'd7, 4'd4, 4'd9, 4'd1, 4'd10, 4'd14, 4'd3, 4'd5, 4'd12, 4'd2, 4'd15, 4'd8, 4'd6};
assign  sbox[6][2] = {4'd1, 4'd4, 4'd11, 4'd13, 4'd12, 4'd3, 4'd7, 4'd14, 4'd10, 4'd15, 4'd6, 4'd8, 4'd0, 4'd5, 4'd9, 4'd2};
assign	sbox[6][3] = {4'd6, 4'd11, 4'd13, 4'd8, 4'd1, 4'd4, 4'd10, 4'd7, 4'd9, 4'd5, 4'd0, 4'd15, 4'd14, 4'd2, 4'd3, 4'd12}; 
	 
	// S8:
assign	sbox[7][0] = {4'd13, 4'd2, 4'd8, 4'd4, 4'd6, 4'd15, 4'd11, 4'd1, 4'd10, 4'd9, 4'd3, 4'd14, 4'd5, 4'd0, 4'd12, 4'd7}; 
assign  sbox[7][1] = {4'd1, 4'd15, 4'd13, 4'd8, 4'd10, 4'd3, 4'd7, 4'd4, 4'd12, 4'd5, 4'd6, 4'd11, 4'd0, 4'd14, 4'd9, 4'd2};
assign  sbox[7][2] = {4'd7, 4'd11, 4'd4, 4'd1, 4'd9, 4'd12, 4'd14, 4'd2, 4'd0, 4'd6, 4'd10, 4'd13, 4'd15, 4'd3, 4'd5, 4'd8};
assign  sbox[7][3] = {4'd2, 4'd1, 4'd14, 4'd7, 4'd4, 4'd10, 4'd8, 4'd13, 4'd15, 4'd12, 4'd9, 4'd0, 4'd3, 4'd5, 4'd6, 4'd11}; 
//end
// *********************************************************************************************************************************
// End creating the S-boxes LUT
// *********************************************************************************************************************************	 

// *********************************************************************************************************************************
// Expansion
// *********************************************************************************************************************************

wire [47:0] R_expand_w;

assign R_expand_w = {R[32-32], R[32-1],  R[32-2],  R[32-3],  R[32-4],  R[32-5],
                     R[32-4],  R[32-5],  R[32-6],  R[32-7],  R[32-8],  R[32-9],
                     R[32-8],  R[32-9],  R[32-10], R[32-11], R[32-12], R[32-13],
                     R[32-12], R[32-13], R[32-14], R[32-15], R[32-16], R[32-17],
                     R[32-16], R[32-17], R[32-18], R[32-19], R[32-20], R[32-21],
                     R[32-20], R[32-21], R[32-22], R[32-23], R[32-24], R[32-25],
                     R[32-24], R[32-25], R[32-26], R[32-27], R[32-28], R[32-29],
                     R[32-28], R[32-29], R[32-30], R[32-31], R[32-32], R[32-1]};
// *********************************************************************************************************************************
// Output
// *********************************************************************************************************************************
wire [47:0] keyXrexp_w;
wire [1:0] row[7:0];
wire [3:0] column[7:0];
wire  [31:0] sbox_outs_w;

assign keyXrexp_w =  R_expand_w^K;
	// s-box-1
assign row[0]             = {keyXrexp_w[47], keyXrexp_w[42]};
assign column[0]          = keyXrexp_w[46:43];
assign sbox_outs_w[31:28] = sbox[0][row[0]][63 - column[0] * 4'd4 -: 4];
	
	// s-box-2
assign row[1] = {keyXrexp_w[41], keyXrexp_w[36]};
assign column[1] = keyXrexp_w[40:37];
assign sbox_outs_w[27:24] = sbox[1][row[1]][63 - column[1] * 4 -: 4];
	
	// s-box-3
assign row[2] = {keyXrexp_w[35], keyXrexp_w[30]};
assign column[2] = keyXrexp_w[34:31];
assign sbox_outs_w[23:20] = sbox[2][row[2]][63 - column[2] * 4 -: 4];
	
	// s-box-4
assign row[3] = {keyXrexp_w[29], keyXrexp_w[24]};
assign column[3] = keyXrexp_w[28:25];
assign sbox_outs_w[19:16] = sbox[3][row[3]][63 - column[3] * 4 -: 4];
	 
	// s-box-5
assign row[4] = {keyXrexp_w[23], keyXrexp_w[18]};
assign column[4] = keyXrexp_w[22:19];
assign sbox_outs_w[15:12] = sbox[4][row[4]][63 - column[4] * 4 -: 4];

	// s-box-6
assign row[5] = {keyXrexp_w[17], keyXrexp_w[12]};
assign column[5] = keyXrexp_w[16:13];
assign sbox_outs_w[11:8] = sbox[5][row[5]][63 - column[5] * 4 -: 4];

	// s-box-7
assign row[6] = {keyXrexp_w[11], keyXrexp_w[6]};
assign column[6] = keyXrexp_w[10:7];
assign sbox_outs_w[7:4] = sbox[6][row[6]][63 - column[6] * 4 -: 4];

	// s-box-8
assign row[7] = {keyXrexp_w[5], keyXrexp_w[0]};
assign column[7] = keyXrexp_w[4:1];
assign sbox_outs_w[3:0] = sbox[7][row[7]][63 - column[7] * 4 -: 4];

assign sbox_out =   {sbox_outs_w[32-16], sbox_outs_w[32-7],  sbox_outs_w[32-20], sbox_outs_w[32-21],
					 sbox_outs_w[32-29], sbox_outs_w[32-12], sbox_outs_w[32-28], sbox_outs_w[32-17],
					 sbox_outs_w[32-1],  sbox_outs_w[32-15], sbox_outs_w[32-23], sbox_outs_w[32-26],
					 sbox_outs_w[32-5],  sbox_outs_w[32-18], sbox_outs_w[32-31], sbox_outs_w[32-10],
					 sbox_outs_w[32-2],  sbox_outs_w[32-8],  sbox_outs_w[32-24], sbox_outs_w[32-14],
					 sbox_outs_w[32-32], sbox_outs_w[32-27], sbox_outs_w[32-3],  sbox_outs_w[32-9],
					 sbox_outs_w[32-19], sbox_outs_w[32-13], sbox_outs_w[32-30], sbox_outs_w[32-6],
					 sbox_outs_w[32-22], sbox_outs_w[32-11], sbox_outs_w[32-4],  sbox_outs_w[32-25]};

endmodule

module crc_calc 
(
input 			clk,
input [127:0] 	i_data,
input 			first,
input 			rst,
output 			o_out_valid,
output [2:0]    o_crc
);

wire inv_1_w;
wire inv_2_w;
wire [2:0]   crc;
reg  [2:0]   crcIn;
reg  [15:0]  first_r;
reg  [127:0] data;
wire [7:0]   data_w = first ? i_data[127:120] : data[119:112];

assign o_out_valid = first_r[15];
assign inv_1_w =  data_w[0] ^ data_w[1] ^ data_w[3] ^ data_w[4] ^ data_w[6] ^ data_w[7];
assign inv_2_w =  data_w[0] ^ data_w[2] ^ data_w[3] ^ data_w[5] ^ data_w[6];

assign crc[0] = 1'b0;
assign crc[1] = first ? inv_1_w : crcIn[2] ^ crcIn[1] ^ inv_1_w;
assign crc[2] = first ? inv_2_w : crcIn[1] ^ crcIn[0] ^ inv_2_w;

assign o_crc = crcIn;

always@ (posedge clk or posedge rst)	begin
	if (rst) begin
		crcIn 		<= 0;
	    first_r     <= 0;
	    data  		<= 0;
	end else begin
		crcIn 		<= crc;
		first_r     <= first ? 16'b0000_0000_0000_0001 : {first_r[14:0],1'b0};
		data  		<= first ? i_data : {data[119:0],8'b0};
	end
end
endmodule

module top2maxmin 
(
input 			  clk,
input [127:0] 	  i_data,
input 			  first,
input 			  rst,
input 			  maxmin,
input [  3:0]	  round,
output 			  o_out_valid,
output [127:0]    o_top2max
);

reg [127:0] max1_r;
reg [127:0] max2_r;
reg [127:0] max1_wait_r;
reg [127:0] max2_wait_r;

/* reg [127:0] min1_r;
reg [127:0] min2_r;
reg [127:0] min1_wait_r;
reg [127:0] min2_wait_r; */

reg [127:0] new_data_r;
reg [2:0  ] cnt;

reg [127:0] o1_max_r;
reg [127:0] o2_max_r;

/* reg [127:0] o1_min_r;
reg [127:0] o2_min_r; */

reg [129:0] valid_r;
wire c1_w;
wire c2_w;
wire done_w;
wire done2_w;
reg first_r;

assign o_top2max   = o1_max_r;
assign o_out_valid = valid_r[129];

compare_128bit u_compare_128bit_inst1( clk, first_r | rst, max1_r, new_data_r, c1_w, done_w);
compare_128bit u_compare_128bit_inst2( clk, first_r | rst, max2_r, new_data_r, c2_w, done2_w);

always @ (*) begin
	if (done_w) begin
		case({maxmin,c1_w, c2_w})
			3'b111  : begin  // a < c, b < c
				max2_wait_r = max1_r;
				max1_wait_r = new_data_r;
			end
			3'b101  : begin // a > c, b < c
				max2_wait_r = new_data_r;
				max1_wait_r = max1_r;
			end
			3'b100  : begin             // a > c, b > c
				max2_wait_r = max2_r;
				max1_wait_r = max1_r;
			end
			3'b000  : begin // a > c, b > c
				max2_wait_r = max1_r;
				max1_wait_r = new_data_r;
			end
			3'b010  : begin // a < c, b > c
				max2_wait_r = new_data_r;
				max1_wait_r = max1_r;
			end
			default : begin  //  a < c, b < c
				max2_wait_r = max2_r;
				max1_wait_r = max1_r;
			end
		endcase
	end else begin
		max2_wait_r = max2_r;
		max1_wait_r = max1_r;
	end
end

always @ (posedge clk or posedge rst) begin
	if(rst) begin
		max1_r <= 0;
		max2_r <= 0;
		new_data_r <= 0;
		cnt    <= 0;
		first_r <= 0;
		o1_max_r    <= 0;
		o2_max_r    <= 0;
		valid_r <= 0;
	end else begin
		max1_r      <= first && cnt==0 ? i_data : max1_wait_r;
		max2_r      <= first && cnt==0 ? (maxmin ? 0 : 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff) : max2_wait_r;
		o1_max_r    <= cnt == 0 ? max1_wait_r : o2_max_r;
		o2_max_r    <= max2_wait_r;
		new_data_r  <= first ? (|cnt[2:0] ? i_data : (maxmin ? 0 : 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff))  : new_data_r;
		first_r     <= first;
		cnt         <= first ? cnt + 1 : cnt;
		valid_r     <= first && cnt==0 ? {valid_r[128:0],1'b0} | 8'd3 : {valid_r[128:0],1'b0};
	end
end


endmodule

module compare_128bit (
    input clk,                // Clock signal
    input reset,              // Active high reset
    input [127:0] a,          // 128-bit input A
    input [127:0] b,          // 128-bit input B
    output res,          // Output: 1 if A < B, 0 otherwise
	output done         
);
	
	reg less;

    reg [3:0] byte_idx;       // Byte index for comparison (0 to 15)
    wire [8:0] a_byte, b_byte; // Byte for A and B
    reg comparing;             // Flag to indicate if comparison is ongoing
    reg [134:0] a_r ;          // 128-bit input A
    reg [134:0] b_r ;          // 128-bit input B
	assign res = done ? less : 0;
	assign done = byte_idx == 14;
	
	assign a_byte = a_r[134 -: 9];
	assign b_byte = b_r[134 -: 9];
    // Comparison process
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            less <= 0;         // Default to A < B
			comparing <= 1;       
            byte_idx <= 0;     // Start at the first byte
			a_r  <= {7'd0, a};
			b_r  <= {7'd0, b};
        end else begin
			a_r <= {a_r[125:0],9'd0};
			b_r <= {b_r[125:0],9'd0};
			byte_idx <= byte_idx + 1;  
			if (comparing) begin
				if (a_byte < b_byte) begin
					less <= 1;    
					comparing <= 0;
				end else if (a_byte == b_byte) begin
					less    <= less;    
					comparing <= comparing;
				end else begin
					comparing <= 0;
					less    <= less;     
				end
			
			end else begin
				less    <= less;    
				comparing <= comparing;
			end
        end
    end
endmodule
