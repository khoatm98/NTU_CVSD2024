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


// ---------------------------------------------------------------------------
// Reg and wire declaration
// ---------------------------------------------------------------------------

reg  [127: 0] data_r;
reg  [127: 0] data_buffer_r;   // for max min operation
wire [7:0]    data_w [15:0];
wire [63:0]    main_key_w;
wire [63:0]    plain_text_w;
wire CRC_en;
wire MAXMIN_en;

reg [3:0] input_cnt;
reg [3:0] round_r;
reg       first_r;

reg         valid_r;
reg [127:0] iot_out_r;

reg			clk_DES_en; 
reg			clk_CRC_en;
reg			clk_MINMAX_en;          
genvar i;
// ---------------------------------------------------------------------------
// Assignment Block
// ---------------------------------------------------------------------------


assign busy = 0;

assign main_key_w   = data_r[127:64];
assign plain_text_w = data_r[63:0]   ;


assign iot_out = iot_out_r;    
assign valid   = round_r == 1 && clk_DES_en || (CRC_en && first_r && round_r == 0);  

// ---------------------------------------------------------------------------
// Submodules declaration
// ---------------------------------------------------------------------------

				  
// ---------------------------------------------------------------------------
// DES Encryption/ Decryption
// ---------------------------------------------------------------------------

reg	    DES_en;
reg      [55:0] PC2_permutation_r;
wire     [55:0] PC2_permutation_w;

wire    [55:0] PC1_permutation_w;
wire    [55:0] cipher_key2_w;


wire    [47:0] key;
wire    [63:0] init_permutation_w;
wire    [63:0] cipher_text;
wire    [63:0] final_permutation_w;
reg     [31:0] L_ready_r;
reg     [31:0] R_ready_r;
reg     [31:0] L_wait_r;
reg     [31:0] R_wait_r;
wire    [31:0] sbox_out_w;

assign PC2_permutation_w = data_buffer_r[55:0];

assign PC1_permutation_w = {main_key_w[7]  ,main_key_w[15] ,main_key_w[23] ,main_key_w[31]
				      ,main_key_w[39] ,main_key_w[47] ,main_key_w[55] ,main_key_w[63]
				      ,main_key_w[6]  ,main_key_w[14] ,main_key_w[22] ,main_key_w[30]
				      ,main_key_w[38] ,main_key_w[46] ,main_key_w[54] ,main_key_w[62]
				      ,main_key_w[5]  ,main_key_w[13] ,main_key_w[21] ,main_key_w[29]
				      ,main_key_w[37] ,main_key_w[45] ,main_key_w[53] ,main_key_w[61]
				      ,main_key_w[4]  ,main_key_w[12] ,main_key_w[20] ,main_key_w[28]
				      ,main_key_w[1]  ,main_key_w[9]  ,main_key_w[17] ,main_key_w[25]
				      ,main_key_w[33] ,main_key_w[41] ,main_key_w[49] ,main_key_w[57]
				      ,main_key_w[2]  ,main_key_w[10] ,main_key_w[18] ,main_key_w[26]
				      ,main_key_w[34] ,main_key_w[42] ,main_key_w[50] ,main_key_w[58]
				      ,main_key_w[3]  ,main_key_w[11] ,main_key_w[19] ,main_key_w[27]
				      ,main_key_w[35] ,main_key_w[43] ,main_key_w[51] ,main_key_w[59]
				      ,main_key_w[36] ,main_key_w[44] ,main_key_w[52] ,main_key_w[60]};
			   
assign key = {PC2_permutation_w[42] ,PC2_permutation_w[39],PC2_permutation_w[45] ,PC2_permutation_w[32],PC2_permutation_w[55] ,PC2_permutation_w[51]
			 ,PC2_permutation_w[53] ,PC2_permutation_w[28],PC2_permutation_w[41] ,PC2_permutation_w[50],PC2_permutation_w[35] ,PC2_permutation_w[46]
			 ,PC2_permutation_w[33] ,PC2_permutation_w[37],PC2_permutation_w[44] ,PC2_permutation_w[52],PC2_permutation_w[30] ,PC2_permutation_w[48]
			 ,PC2_permutation_w[40] ,PC2_permutation_w[49],PC2_permutation_w[29] ,PC2_permutation_w[36],PC2_permutation_w[43] ,PC2_permutation_w[54]
			 ,PC2_permutation_w[15] ,PC2_permutation_w[4] ,PC2_permutation_w[25] ,PC2_permutation_w[19],PC2_permutation_w[9]  ,PC2_permutation_w[1] 
			 ,PC2_permutation_w[26] ,PC2_permutation_w[16],PC2_permutation_w[5]  ,PC2_permutation_w[11],PC2_permutation_w[23] ,PC2_permutation_w[8]
			 ,PC2_permutation_w[12] ,PC2_permutation_w[7] ,PC2_permutation_w[17] ,PC2_permutation_w[0] ,PC2_permutation_w[22] ,PC2_permutation_w[3] 
			 ,PC2_permutation_w[10] ,PC2_permutation_w[14],PC2_permutation_w[6]  ,PC2_permutation_w[20],PC2_permutation_w[27] ,PC2_permutation_w[24]};



wire [27:0] l_block[15:0], r_block[15:0];

always @ (*) begin
	case(round_r)
		4'd0   : PC2_permutation_r = fn_sel[0] ? {PC1_permutation_w[54:28] ,PC1_permutation_w[55]   , PC1_permutation_w[26:0], PC1_permutation_w[27]}    : {PC1_permutation_w};
		4'd1   : PC2_permutation_r = fn_sel[0] ? {PC2_permutation_w[54:28], PC2_permutation_w[55]   , PC2_permutation_w[26:0], PC2_permutation_w[27]}    : {PC2_permutation_w[28]   , PC2_permutation_w[55:29]   , PC2_permutation_w[0], PC2_permutation_w[27:1]};		
		4'd8   : PC2_permutation_r = fn_sel[0] ? {PC2_permutation_w[54:28], PC2_permutation_w[55]   , PC2_permutation_w[26:0], PC2_permutation_w[27]}    : {PC2_permutation_w[28]   , PC2_permutation_w[55:29]   , PC2_permutation_w[0], PC2_permutation_w[27:1]};		
		4'd15  : PC2_permutation_r = fn_sel[0] ? {PC2_permutation_w[54:28], PC2_permutation_w[55]   , PC2_permutation_w[26:0], PC2_permutation_w[27]}    : {PC2_permutation_w[28]   , PC2_permutation_w[55:29]   , PC2_permutation_w[0], PC2_permutation_w[27:1]};				
		default: PC2_permutation_r = fn_sel[0] ? {PC2_permutation_w[53:28], PC2_permutation_w[55:54], PC2_permutation_w[25:0], PC2_permutation_w[27:26]} : {PC2_permutation_w[29:28], PC2_permutation_w[55:30], PC2_permutation_w[1:0], PC2_permutation_w[27:2]};
	endcase
end

assign init_permutation_w = {plain_text_w[64-58],plain_text_w[64-50], plain_text_w[64-42], plain_text_w[64-34], plain_text_w[64-26], plain_text_w[64-18], plain_text_w[64-10], plain_text_w[64-2],
                             plain_text_w[64-60],plain_text_w[64-52], plain_text_w[64-44], plain_text_w[64-36], plain_text_w[64-28], plain_text_w[64-20], plain_text_w[64-12], plain_text_w[64-4],
                             plain_text_w[64-62],plain_text_w[64-54], plain_text_w[64-46], plain_text_w[64-38], plain_text_w[64-30], plain_text_w[64-22], plain_text_w[64-14], plain_text_w[64-6],
                             plain_text_w[64-64],plain_text_w[64-56], plain_text_w[64-48], plain_text_w[64-40], plain_text_w[64-32], plain_text_w[64-24], plain_text_w[64-16], plain_text_w[64-8],
                             plain_text_w[64-57],plain_text_w[64-49], plain_text_w[64-41], plain_text_w[64-33], plain_text_w[64-25], plain_text_w[64-17], plain_text_w[64-9],  plain_text_w[64-1],
                             plain_text_w[64-59],plain_text_w[64-51], plain_text_w[64-43], plain_text_w[64-35], plain_text_w[64-27], plain_text_w[64-19], plain_text_w[64-11], plain_text_w[64-3],
                             plain_text_w[64-61],plain_text_w[64-53], plain_text_w[64-45], plain_text_w[64-37], plain_text_w[64-29], plain_text_w[64-21], plain_text_w[64-13], plain_text_w[64-5],
                             plain_text_w[64-63],plain_text_w[64-55], plain_text_w[64-47], plain_text_w[64-39], plain_text_w[64-31], plain_text_w[64-23], plain_text_w[64-15], plain_text_w[64-7]};
				 
assign cipher_text[63:0]   =  {final_permutation_w[64-40], final_permutation_w[64-8], final_permutation_w[64-48], final_permutation_w[64-16], final_permutation_w[64-56], final_permutation_w[64-24], final_permutation_w[64-64], final_permutation_w[64-32],
							   final_permutation_w[64-39], final_permutation_w[64-7], final_permutation_w[64-47], final_permutation_w[64-15], final_permutation_w[64-55], final_permutation_w[64-23], final_permutation_w[64-63], final_permutation_w[64-31],
							   final_permutation_w[64-38], final_permutation_w[64-6], final_permutation_w[64-46], final_permutation_w[64-14], final_permutation_w[64-54], final_permutation_w[64-22], final_permutation_w[64-62], final_permutation_w[64-30],
							   final_permutation_w[64-37], final_permutation_w[64-5], final_permutation_w[64-45], final_permutation_w[64-13], final_permutation_w[64-53], final_permutation_w[64-21], final_permutation_w[64-61], final_permutation_w[64-29],
							   final_permutation_w[64-36], final_permutation_w[64-4], final_permutation_w[64-44], final_permutation_w[64-12], final_permutation_w[64-52], final_permutation_w[64-20], final_permutation_w[64-60], final_permutation_w[64-28],
							   final_permutation_w[64-35], final_permutation_w[64-3], final_permutation_w[64-43], final_permutation_w[64-11], final_permutation_w[64-51], final_permutation_w[64-19], final_permutation_w[64-59], final_permutation_w[64-27],
							   final_permutation_w[64-34], final_permutation_w[64-2], final_permutation_w[64-42], final_permutation_w[64-10], final_permutation_w[64-50], final_permutation_w[64-18], final_permutation_w[64-58], final_permutation_w[64-26],
							   final_permutation_w[64-33], final_permutation_w[64-1], final_permutation_w[64-41], final_permutation_w[64-9],  final_permutation_w[64-49], final_permutation_w[64-17], final_permutation_w[64-57], final_permutation_w[64-25]};

always @* begin
	R_wait_r = L_ready_r ^ sbox_out_w;
	L_wait_r = R_ready_r;
end

assign final_permutation_w = {R_wait_r, L_wait_r};

sbox u_sbox(.R(R_ready_r), .K(key), .sbox_out(sbox_out_w));

always @(posedge clk) begin
	if (DES_en) begin
		R_ready_r   <= (round_r == 0 ? init_permutation_w[31:0]  : R_wait_r);
		L_ready_r   <= (round_r == 0 ? init_permutation_w[63:32] : L_wait_r);
	end else begin
		R_ready_r   <= R_ready_r  ;
		L_ready_r   <= L_ready_r  ;
	end
end

always @(*) begin
	DES_en = (fn_sel == 3'b001 || fn_sel == 3'b010);
end
// ---------------------------------------------------------------------------
// CRC
// ---------------------------------------------------------------------------

wire inv_1_w;
wire inv_2_w;
wire  [2:0]   crc;

assign CRC_en = fn_sel == 3'b011;

//wire inv_1_036_w = ~CRC_en ? 0 :iot_in[0] ^ iot_in[3] ^ iot_in[6];
//wire inv_1_147_w = ~CRC_en ? 0 :iot_in[1] ^ iot_in[4] ^ iot_in[7];
//wire inv_1_25_w  = ~CRC_en ? 0 :iot_in[2] ^ iot_in[5];
wire inv_1_036_w = iot_in[0] ^ iot_in[3] ^ iot_in[6];
wire inv_1_147_w = iot_in[1] ^ iot_in[4] ^ iot_in[7];
wire inv_1_25_w  = iot_in[2] ^ iot_in[5];

assign inv_1_w =  inv_1_036_w ^ inv_1_147_w;
assign inv_2_w =  inv_1_036_w ^ inv_1_25_w;

wire inv_1_2_w = inv_1_147_w^inv_1_25_w;


assign crc[0] = 1'b0;
assign crc[1] = round_r%3 == 0 ? inv_1_w   : (round_r%3 == 1 ?  inv_1_2_w   : inv_2_w   );
assign crc[2] = round_r%3 == 0 ? inv_2_w   : (round_r%3 == 1 ?  inv_1_w     : inv_1_2_w );


// ---------------------------------------------------------------------------
// Top Max -- Last Min
// ---------------------------------------------------------------------------
assign MAXMIN_en = (fn_sel == 3'b100 || fn_sel == 3'b101);

reg [127:0] first_output ;
reg [127:0] second_output;
reg [127:0] intermediate ;

comparator u_comp_inst0()



// ---------------------------------------------------------------------------
// Combinational Block
// ---------------------------------------------------------------------------


// ---------------------------------------------------------------------------
// Sequential Block
// ---------------------------------------------------------------------------



always @ (posedge clk or posedge rst) begin
	if(rst)
		clk_DES_en <= 0;
	else begin
		if(~clk_DES_en )
			clk_DES_en <= round_r[1] && in_en && first_r&& DES_en;
		else
			clk_DES_en <= clk_DES_en;
	end
		
end

always @ (posedge clk) begin
	if(first_r && DES_en)
		data_buffer_r[55:0] <= PC2_permutation_r;
	else begin
		data_buffer_r[55:0] <= data_buffer_r[55:0];
	end
end

always @ (posedge clk) begin
	if(MAXMIN_en)
		data_buffer_r[127:56] <= 0;
	else begin
		data_buffer_r[127:56] <= data_buffer_r[127:56]; 
	end
end



always @ (posedge clk) begin
	if(in_en && DES_en)
		data_r <= {iot_in , data_r[127:8]};
	else begin
		data_r <= data_r;
	end
end

always @ (posedge clk or posedge rst) begin
	if(rst)
		round_r <= 0;
	else begin
		round_r <= round_r + in_en;
	end
		
end

always @ (posedge clk or posedge rst) begin
	if(rst)
		first_r <= 0;
	else begin
		if(~first_r) begin 
			first_r <= (round_r == 15 && in_en); 
		end else
			first_r <= first_r;
	end
end

//always @ (posedge clk or posedge rst) begin
//	if(rst) begin
//		valid_r   <= 0;
//	end
//	else begin
//		if(clk_DES_en) begin
//			valid_r           <= round_r == 0;
//		end else begin
//			valid_r           <= valid_r;
//		end
//	end
//end

always @ (posedge clk) begin
	if(clk_DES_en) begin
		iot_out_r[127:64] <=  round_r == 8 ? data_r[63:0] : iot_out_r[127:64];
	end else if(CRC_en) begin
		iot_out_r[127:64] <= 0;
	end else begin
		iot_out_r[127:64] <= iot_out_r[127:64];
	end
end

always @ (posedge clk) begin
	if(clk_DES_en) begin
		iot_out_r[63:0]   <= round_r == 0 ? cipher_text[63:0] : iot_out_r[63:0];
	end else if (CRC_en) begin
		iot_out_r[63:3]   <= 0;
		iot_out_r[0]      <= 0;
		iot_out_r[2:1]    <= round_r == 0 ? crc[2:1] : {iot_out_r[2]^crc[2] , iot_out_r[1]^crc[1]};
	end else begin
		iot_out_r[63:0]   <= iot_out_r[63:0];
	end
end
endmodule


module sbox
(
input [31:0] R,
input [47:0] K,
output [31:0] sbox_out
);

wire [63 :0] sbox[7:0][3:0]; // 63 bit wide entries per row, 8 sboxes, 4 rows per sbox


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
//wire  [31:0] sbox_outs_w;
reg  [31:0] sbox_outs_r;
assign keyXrexp_w =  R_expand_w^K;
	// s-box-1
assign row[0]             = {keyXrexp_w[47], keyXrexp_w[42]};
assign column[0]          = keyXrexp_w[46:43];
	
	// s-box-2
assign row[1] = {keyXrexp_w[41], keyXrexp_w[36]};
assign column[1] = keyXrexp_w[40:37];
	
	// s-box-3
assign row[2] = {keyXrexp_w[35], keyXrexp_w[30]};
assign column[2] = keyXrexp_w[34:31];
	
	// s-box-4
assign row[3] = {keyXrexp_w[29], keyXrexp_w[24]};
assign column[3] = keyXrexp_w[28:25];
	 
	// s-box-5
assign row[4] = {keyXrexp_w[23], keyXrexp_w[18]};
assign column[4] = keyXrexp_w[22:19];

	// s-box-6
assign row[5] = {keyXrexp_w[17], keyXrexp_w[12]};
assign column[5] = keyXrexp_w[16:13];

	// s-box-7
assign row[6] = {keyXrexp_w[11], keyXrexp_w[6]};
assign column[6] = keyXrexp_w[10:7];

	// s-box-8
assign row[7] = {keyXrexp_w[5], keyXrexp_w[0]};
assign column[7] = keyXrexp_w[4:1];
genvar i;

generate
	for (i = 0; i < 8; i = i + 1) begin: sbox_selection
		always @ (*) begin
			case(column[i])
				4'd0    : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][63 -: 4];
				4'd1    : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][59 -: 4];
				4'd2    : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][55 -: 4];
				4'd3    : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][51 -: 4];
				4'd4    : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][47 -: 4];
				4'd5    : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][43 -: 4];
				4'd6    : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][39 -: 4];
				4'd7    : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][35 -: 4];
				4'd8    : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][31 -: 4];
				4'd9    : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][27 -: 4];
				4'd10   : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][23 -: 4];
				4'd11   : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][19 -: 4];
				4'd12   : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][15 -: 4];
				4'd13   : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][11 -: 4];
				4'd14   : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][7  -: 4];
				default : sbox_outs_r[31-i*4 -:4] = sbox[i][row[i]][3  -: 4];
			endcase
		end
	end
endgenerate


assign sbox_out =   {sbox_outs_r[32-16], sbox_outs_r[32-7],  sbox_outs_r[32-20], sbox_outs_r[32-21],
					 sbox_outs_r[32-29], sbox_outs_r[32-12], sbox_outs_r[32-28], sbox_outs_r[32-17],
					 sbox_outs_r[32-1],  sbox_outs_r[32-15], sbox_outs_r[32-23], sbox_outs_r[32-26],
					 sbox_outs_r[32-5],  sbox_outs_r[32-18], sbox_outs_r[32-31], sbox_outs_r[32-10],
					 sbox_outs_r[32-2],  sbox_outs_r[32-8],  sbox_outs_r[32-24], sbox_outs_r[32-14],
					 sbox_outs_r[32-32], sbox_outs_r[32-27], sbox_outs_r[32-3],  sbox_outs_r[32-9],
					 sbox_outs_r[32-19], sbox_outs_r[32-13], sbox_outs_r[32-30], sbox_outs_r[32-6],
					 sbox_outs_r[32-22], sbox_outs_r[32-11], sbox_outs_r[32-4],  sbox_outs_r[32-25]};

endmodule


module top2maxmin 
(
input 			  clk,
input 			  en,
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

compare_128bit u_compare_128bit_inst1( clk, en, first_r | rst, max1_r, new_data_r, c1_w, done_w);
compare_128bit u_compare_128bit_inst2( clk, en, first_r | rst, max2_r, new_data_r, c2_w, done2_w);

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
		if (en) begin
			max1_r      <= first && cnt==0 ? i_data : max1_wait_r;
			max2_r      <= first && cnt==0 ? (maxmin ? 0 : 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff) : max2_wait_r;
			o1_max_r    <= cnt == 0 ? max1_wait_r : o2_max_r;
			o2_max_r    <= max2_wait_r;
			new_data_r  <= first ? (|cnt[2:0] ? i_data : (maxmin ? 0 : 128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff))  : new_data_r;
			first_r     <= first;
			cnt         <= first ? cnt + 1 : cnt;
			valid_r     <= first && cnt==0 ? {valid_r[128:0],1'b0} | 8'd3 : {valid_r[128:0],1'b0};
		end else begin
			max1_r      <= 0 ;
			max2_r      <= 0 ;
			o1_max_r    <= 0 ;
			o2_max_r    <= 0 ;
			new_data_r  <= 0 ;
			first_r     <= 0 ;
			cnt         <= 0 ;
			valid_r     <= 0 ;
		end
	end
end


endmodule

module compare_128bit (
    input clk,                // Clock signal
	input en,                // Clock signal
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
			if(en) begin
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
			end else begin
				a_r <= a_r;
				b_r <= b_r;
				byte_idx <= byte_idx;  
				less    <= less;    
				comparing <= comparing;
			end
        end
    end
endmodule
