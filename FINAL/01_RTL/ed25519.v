`timescale 1ns/10ps

`define q 255'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed
module ed25519 #(
    parameter DATA_W = 64,
	parameter BUFF_W = 256
)
(
input                 i_clk      ,
input                 i_rst      ,
input                 i_in_valid ,
output                o_in_ready ,
input  [DATA_W-1:0]   i_in_data  ,
output                o_out_valid,
input                 i_out_ready,
output [DATA_W-1:0]   o_out_data
);
// ---------------------------------------------------------------------------
// Parameter declaration
// ---------------------------------------------------------------------------
localparam S_RST     = 0;
localparam S_INPUT   = 1;
localparam S_PROCESS = 2;
localparam S_OUTPUT  = 3;

// ---------------------------------------------------------------------------
// Reg and wire declaration
// ---------------------------------------------------------------------------
reg [1:0] curr_state, next_state;
reg [3:0] input_cnt;

reg [DATA_W-1:0]   o_out_data_r;
reg o_out_valid_r;
reg o_in_ready_r;
wire m_reg_wren;
wire m_reg_rden;

reg [BUFF_W*3-1:0]   data_in_buf_r;
reg [BUFF_W*2-1:0]   data_out_buf_r;

wire [BUFF_W-1:0]   M_w;
wire [BUFF_W-1:0]   X_w;
wire [BUFF_W-1:0]   Y_w;
// ---------------------------------------------------------------------------
// Continuous assignment
// ---------------------------------------------------------------------------
assign o_out_valid = curr_state == S_OUTPUT;
assign o_in_ready  = curr_state == S_INPUT;

assign m_reg_wren  = o_out_valid && i_out_ready;  // write enable
assign m_reg_rden  = o_in_ready  && i_in_valid;   // read enable

assign o_out_data = data_in_buf_r[BUFF_W*2-1 -:8];

assign M_w = data_in_buf_r[767:512];
assign X_w = data_in_buf_r[511:256];
assign Y_w = data_in_buf_r[255:0  ];

// ---------------------------------------------------------------------------
// Addition
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Substraction
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Modular Multiplication
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Mod p Reduction
// ---------------------------------------------------------------------------


// ---------------------------------------------------------------------------
// Data input/output block
// ---------------------------------------------------------------------------

always@ (posedge i_clk) begin
	data_in_buf_r  <= m_reg_rden ? {data_in_buf_r[BUFF_W*3-1-8:0], i_in_data} : data_in_buf_r;
	data_out_buf_r <= m_reg_wren ? {data_out_buf_r[BUFF_W*2-1-8:0], 8'd0} : data_out_buf_r;
end

// ---------------------------------------------------------------------------
// Sequential Circuit
// 

reg [255:0] res_r;
modular_mult modular_mult_inst(
	.i_clk  (i_clk)  ,
	.a      (255'h213231231231231243242423432231),
	.b      (255'h31231221313332312312312353123123123122)  ,
	.i_first(input_cnt==0)  ,
	.res    (res_r)
);

always@ (*) begin
	case(curr_state)
		S_RST:       next_state = S_INPUT;
		S_INPUT:     next_state = input_cnt == 11 && m_reg_rden ? S_PROCESS : S_INPUT;
		S_PROCESS:   next_state = S_OUTPUT;
		S_OUTPUT :   next_state = S_OUTPUT;
	endcase
end
// ---------------------------------------------------------------------------
// Sequential Circuit
// ---------------------------------------------------------------------------
always@ (posedge i_clk ) begin
	if(i_rst) begin
		curr_state <= S_RST;
	end else begin
		curr_state <= next_state;
	end
end


// ---------------------------------------------------------------------------
// module: cnt for input and output
// TODO: use same cnt buffer for output and input
// ---------------------------------------------------------------------------
always@ (posedge i_clk ) begin
	if(i_rst) begin
		input_cnt <= 0;
	end else begin
		input_cnt <= m_reg_rden ? input_cnt + 1 : input_cnt;
	end
end

endmodule

// ---------------------------------------------------------------------------
// module: modular_add_sub
// Info: Output after 2 cycles
// Ref : Fast, Small, and Area-Time Efficient Architectures for Key-Exchange on Curve25519
// TODO: reduce data buffer -> only use either C or C_ 
// ---------------------------------------------------------------------------
module modular_add_sub  #(
    parameter DATA_W = 255
) (
input                 i_clk     ,
input  [DATA_W-1:0]   a         ,
input  [DATA_W-1:0]   b         ,
input                 i_add_sub ,
input                 i_first   ,
output [DATA_W-1:0]	  res
);

reg  [DATA_W:0]	  C;
reg  [DATA_W:0]	  C_;
wire  [DATA_W:0]	  a_;
wire  [DATA_W:0]	  b_;

assign a_ = i_first ? a  : C[DATA_W-1:0];
assign b_ = i_first ? b  : 19;

always @(posedge i_clk) begin
	C  <= i_add_sub ?  a_ + b_ : a_ - b_;
	C_ <= C;
end

wire compare = C_ >= `q ;
assign res = compare ? C[DATA_W-1:0] : C_[DATA_W-1:0];
endmodule

// ---------------------------------------------------------------------------
// module: modular_mult
// method: 2 levels of Karatsuba
// Ref : Fast, Small, and Area-Time Efficient Architectures for Key-Exchange on Curve25519
// TODO: Merge modular_mult and mod_q_reduce to share equivalent resources (eg. round)
// ---------------------------------------------------------------------------
module modular_mult  #(
    parameter DATA_W = 256
) (
	input                 i_clk     ,
	input  [DATA_W-1:0]   a         ,
	input  [DATA_W-1:0]   b         ,
	input                 i_first   ,
	output 				  o_valid   ,
	output [DATA_W-1:0]	  res
);
	
reg  [63:0]   a_in_r;
reg  [63:0]   b_in_r;
reg  [127:0]  res_out_r;

reg  [256:0]  accumulated_res_w;
reg  [255:0]  accumulated_res_r;

reg  [4:0]    cnt;

wire [127:0] C_a[3:0];
wire [127:0] C_b[3:0];

assign C_a[0] = a[127:0];
assign C_a[1] = a[255:128];
assign C_a[2] = a[127:0];
assign C_a[3] = a[255:128];

assign C_b[0] = b[127:0];
assign C_b[1] = b[127:0];
assign C_b[2] = b[255:128];
assign C_b[3] = b[255:128];

//Start from C3 - C0 - C1 - C2
// C = 38*C3 + C0 + C1*2^128 + C2*2^128
always@ (*) begin
	case(cnt)
		//a0*b0
		0 : begin
			a_in_r = C_a[3][63:0];
			b_in_r = C_b[3][63:0];
		end
		//a1*b0
		1 : begin
			a_in_r = C_a[3][127:64];
			b_in_r = C_b[3][63:0];
		end
		
		//a0*b1
		2 : begin
			a_in_r = C_a[3][63:0];
			b_in_r = C_b[3][127:64];
		end
		//a1*b1
		3 : begin
			a_in_r = C_a[3][127:64];
			b_in_r = C_b[3][127:64];
		end
		4 : begin
			a_in_r = C_a[0][63:0];
			b_in_r = C_b[0][63:0];
		end
		5 : begin
			a_in_r = C_a[0][127:64];
			b_in_r = C_b[0][63:0];
		end
		6 : begin
			a_in_r = C_a[0][63:0];
			b_in_r = C_b[0][127:64];
		end
		7 : begin
			a_in_r = C_a[0][127:64];
			b_in_r = C_b[0][127:64];
		end
		8 : begin
			a_in_r = C_a[1][63:0];
			b_in_r = C_b[1][63:0];
		end
		9 : begin
			a_in_r = C_a[1][127:64];
			b_in_r = C_b[1][63:0];
		end
		10: begin
			a_in_r = C_a[1][63:0];
			b_in_r = C_b[1][127:64];
		end
		11: begin
			a_in_r = C_a[1][127:64];
			b_in_r = C_b[1][127:64];
		end
		12: begin
			a_in_r = C_a[2][63:0];
			b_in_r = C_b[2][63:0];
		end
		13: begin
			a_in_r = C_a[2][127:64];
			b_in_r = C_b[2][63:0];
		end
		14: begin
			a_in_r = C_a[2][63:0];
			b_in_r = C_b[2][127:64];
		end
		15: begin
			a_in_r = C_a[2][127:64];
			b_in_r = C_b[2][127:64];
		end
		default: begin
			a_in_r = 0;
			b_in_r = 0;
		end
	endcase
end

multiplier_64x64 multiplier_64x64_inst (
							.a  (a_in_r) ,
							.b  (b_in_r) ,
							.res(res_out_r)
						);

//Accumulate partial products
always@ (*) begin
	accumulated_res_w = cnt[1:0] == 0 ? {64'd0, res_out_r, 64'd0} : {res_out_r,128'd0} + accumulated_res_r;
end

// Sequential
always@ (posedge i_clk ) begin
	if(i_first) begin
		cnt <= 0;
		accumulated_res_r <= 0;
	end else begin
		cnt <= cnt + 1;
		accumulated_res_r <= cnt[1:0] == 2 ? accumulated_res_w >> 64 : accumulated_res_w;
	end
end

// Connect with reduction module
reg [DATA_W-2:0]	  res_r;
reg o_valid_r;
mod_q_reduce mod_q_reduce_inst (
	 .i_clk  (i_clk)  ,
	 .a      (accumulated_res_r[127:0])  , // LSB of Cx
	 .b      (accumulated_res_r[255:128])  , // MSB of Cx
	 .i_first(cnt==4)  ,
	 .o_res  (res_r),
	 .o_valid(o_valid_r)
);

assign res = {1'b0, res_r};
assign o_valid = o_valid_r;
endmodule

// ---------------------------------------------------------------------------
// module: multiplier_64x64
// method: Generic 64x64 multiplier
// ---------------------------------------------------------------------------

module multiplier_64x64   #(
    parameter DATA_W = 64
) (
input  [DATA_W  -1:0]   a   ,
input  [DATA_W  -1:0]   b   ,
output [DATA_W*2-1:0]	res
);
	assign res = a*b;
endmodule

// ---------------------------------------------------------------------------
// module: mod_q_reduce
// method: Fed to modular_mult every 4 cycles
// Ref : Cryptographic Accelerators for Digital Signature Based on Ed25519
// ---------------------------------------------------------------------------

module mod_q_reduce #(
    parameter DATA_W = 128
) (
	input                 i_clk     ,
	input  [DATA_W-1:0]   a         , // LSB of Cx
	input  [DATA_W-1:0]   b         , // MSB of Cx
	input                 i_first   ,
	output [254:0]	      o_res     ,
	output 				  o_valid
);

reg [136*3 -1:0] S;
reg [136 -1:0] S_w[2:0];
wire [136 -1:0] S2 = S[136*3 -1 -:136];
wire [136 -1:0] S1 = S[136*2 -1 -:136];
wire [136 -1:0] S0 = S[136*1 -1 -:136];
reg [136*2 -1:0] R;
reg [136 -1:0] R_w[2:1];
wire [136 -1:0] L2 = R[136*2 -1 -:136];
wire [136 -1:0] L1 = R[136*1 -1 -:136];


reg [136 -1:0] accum_l;
reg [136 -1:0] accum_h;

reg [136 -1:0] shifted_cl;
reg [136 -1:0] shifted_ch;

reg [4:0]      round;

assign accum_l = S[136*2 -1 -:136] + shifted_cl; 
assign accum_h = S[136*3 -1 -:136] + shifted_ch;
assign o_valid = round == 19;
// First 4 cycles to compute 38*C3
always@ (*) begin
	case(round)
		0: begin
			shifted_ch = R[136*2 -1 -:136] << 1; //R2 << 1
			shifted_cl = R[136*1 -1 -:136] << 1; //R2 << 1
		end
		1: begin
			shifted_ch = R[136*2 -1 -:136] << 2; //R2 << 2
			shifted_cl = R[136*1 -1 -:136] << 2; //R2 << 2
		end
		2: begin
			shifted_ch = R[136*2 -1 -:136] << 5; //R2 << 5
			shifted_cl = R[136*1 -1 -:136] << 5; //R2 << 5
		end
		13: begin
			shifted_ch = S[136*3 -1 -:136] << 1; //Calculate 19*S2
			shifted_cl = R[136*1 -1 -:136]; 
		end
		14: begin
			shifted_ch = R[136*2 -1 -:136] << 4; //Calculate 19*S2
			shifted_cl = R[136*1 -1 -:136]; 
		end
		default: begin
			shifted_ch = R[136*2 -1 -:136]; //R2 << 0
			shifted_cl = R[136*1 -1 -:136]; //R2 << 0
		end
	endcase
end

// First 4 cycles to compute 38*C3
always@ (*) begin
	case(round)
		3,7,11: begin
			R_w[2] = {8'd0,b};
			R_w[1] = {8'd0,a};
		end
		13: begin
			R_w[2] = S[136*3 -1 -:136];
			R_w[1] = R[136*1 -1 -:136];
		end
		default : begin
			R_w[2] = R[136*2 -1 -:136];
			R_w[1] = R[136*1 -1 -:136];
		end
	endcase
end

always@ (*) begin
	case(round)
		7: begin // shift down 136 bit
			S_w[2] = 0;
			S_w[1] = S[136*3 -1 -:136];
			S_w[0] = S[136*2 -1 -:136];
		end
		0,1,2,4,8,12: begin
			S_w[2] = accum_h;
			S_w[1] = accum_l;
			S_w[0] = S[136*1 -1 -:136];
		end
		13,14: begin
			S_w[2] = accum_h;  // 19*S2
			S_w[1] = S[136*2 -1 -:136];
			S_w[0] = S[136*1 -1 -:136];
		end
		default: begin
			S_w[2] = S[136*3 -1 -:136];
			S_w[1] = S[136*2 -1 -:136];
			S_w[0] = S[136*1 -1 -:136];
		end
	endcase
end


always@ (posedge i_clk ) begin
	if(i_first) begin
		S <= 0;
		round <= 0;
	end else begin
		S <= {S_w[2], S_w[1], S_w[0]};
		round <= round + 1;
	end
end

always@ (posedge i_clk ) begin
	R <= i_first ? {8'd0,b, 8'd0,a} : {R_w[2], R_w[1]};
end

// 19*S2 + S0 + S1*2^128

wire [256+8: 0] sum_S;
reg  [256+8: 0] C;
assign sum_S = round[0] ?  ({S[136*3 -1 -:136],1'b0} +  S[136*1 -1 -:136] ): (C + {S[136*2 -1 -:136], 128'd0}); //sumS = 19*S2 + S0 + S1*2^128

wire [511:0] sum_S_debug = ({S[136*3 -1 -:136],1'b0} +  S[136*1 -1 -:136]   + {S[136*2 -1 -:136], 128'd0} )%`q;
always@ (posedge i_clk ) begin
	C <= sum_S;
end

// 2 cycles for q modulation

reg  [254:0] res_r;
wire [254:0] a_w, b_w;

assign a_w = C[254:0];
assign b_w = C[264:255]*19;
modular_add_sub modular_add_sub_inst (
	.i_clk    (i_clk),
	.a        (a_w),
	.b        (b_w),
	.i_add_sub(1'b1),
	.i_first  (round[1:0]==1), // start at round == 1
	.res      (res_r)
);
 
assign o_res  = res_r;

endmodule
// ---------------------------------------------------------------------------
// module: Inverse
// method: Called after MM
// Ref : Cryptographic Accelerators for Digital Signature Based on Ed25519
// ---------------------------------------------------------------------------