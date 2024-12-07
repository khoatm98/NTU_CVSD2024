// ---------------------------------------------------------------------------
// module: mod_q_reduce
// method: Fed to modular_mult every 4 cycles
// Ref : Cryptographic Accelerators for Digital Signature Based on Ed25519
// ---------------------------------------------------------------------------

module mod_q_reduce #(
    parameter DATA_W = 128
) (
	input                 i_clk     ,
	input                 i_rst     ,
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


wire [136 -1:0] accum_l;
wire [136 -1:0] accum_h;

reg [136 -1:0] shifted_cl;
reg [136 -1:0] shifted_ch;

reg [4:0]      round;

assign accum_l = S[136*2 -1 -:136] + shifted_cl; 
assign accum_h = S[136*3 -1 -:136] + shifted_ch;
assign o_valid = round == 20;
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
	if(i_first || i_rst) begin
		S <= 0;
		round <= 0;
	end else begin
		S <= {S_w[2], S_w[1], S_w[0]};
		round <= round == 21 ? round : round + 1;
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
	.i_rst    (i_rst),
	.a        (a_w),
	.b        (b_w),
	.i_add_sub(1'b1),
	.i_first  (round==17), // start at round == 1
	.res      (res_r)
);
 
assign o_res  = res_r;

endmodule