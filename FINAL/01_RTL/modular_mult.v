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
	input                 i_rst     ,
	input  [DATA_W-1:0]   a         ,
	input  [DATA_W-1:0]   b         ,
	input                 i_first   ,
	output 				  o_valid   ,
	output [DATA_W-1:0]	  res
);
	
reg  [63:0]   a_in_w;
reg  [63:0]   b_in_w;

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
// ---------------------------------------------------------------------------
// Schoolbook multiplication
// ---------------------------------------------------------------------------

//Start from C3 - C0 - C1 - C2
// C = 38*C3 + C0 + C1*2^128 + C2*2^128
always@ (*) begin
	case(cnt)
		//a0*b0
		0 : begin
			a_in_w = C_a[3][63:0];
			b_in_w = C_b[3][63:0];
		end
		//a1*b0
		1 : begin
			a_in_w = C_a[3][127:64];
			b_in_w = C_b[3][63:0];
		end
		
		//a0*b1
		2 : begin
			a_in_w = C_a[3][63:0];
			b_in_w = C_b[3][127:64];
		end
		//a1*b1
		3 : begin
			a_in_w = C_a[3][127:64];
			b_in_w = C_b[3][127:64];
		end
		4 : begin
			a_in_w = C_a[0][63:0];
			b_in_w = C_b[0][63:0];
		end
		5 : begin
			a_in_w = C_a[0][127:64];
			b_in_w = C_b[0][63:0];
		end
		6 : begin
			a_in_w = C_a[0][63:0];
			b_in_w = C_b[0][127:64];
		end
		7 : begin
			a_in_w = C_a[0][127:64];
			b_in_w = C_b[0][127:64];
		end
		8 : begin
			a_in_w = C_a[1][63:0];
			b_in_w = C_b[1][63:0];
		end
		9 : begin
			a_in_w = C_a[1][127:64];
			b_in_w = C_b[1][63:0];
		end
		10: begin
			a_in_w = C_a[1][63:0];
			b_in_w = C_b[1][127:64];
		end
		11: begin
			a_in_w = C_a[1][127:64];
			b_in_w = C_b[1][127:64];
		end
		12: begin
			a_in_w = C_a[2][63:0];
			b_in_w = C_b[2][63:0];
		end
		13: begin
			a_in_w = C_a[2][127:64];
			b_in_w = C_b[2][63:0];
		end
		14: begin
			a_in_w = C_a[2][63:0];
			b_in_w = C_b[2][127:64];
		end
		15: begin
			a_in_w = C_a[2][127:64];
			b_in_w = C_b[2][127:64];
		end
		default: begin
			a_in_w = 0;
			b_in_w = 0;
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
	accumulated_res_w = cnt[1:0] == 1 ? {64'd0, res_out_r, 64'd0} : {res_out_r,128'd0} + accumulated_res_r;
end

// Sequential
always@ (posedge i_clk ) begin
	if(i_first || i_rst) begin
		cnt <= 0;
		accumulated_res_r <= 0;
	end else begin
		cnt <= &cnt[4:0] ? cnt : cnt + 1;
		accumulated_res_r <= cnt[1:0] == 3 ? accumulated_res_w >> 64 : accumulated_res_w;
	end
end

// ---------------------------------------------------------------------------
// Reduction
// ---------------------------------------------------------------------------

wire [136 -1:0] accum_l;
wire [136 -1:0] accum_h;

reg [136 -1:0] shifted_cl;
reg [136 -1:0] shifted_ch;

reg [136*2 -1:0] R;
reg [136 -1:0] R_w[2:1];
reg [136*3 -1:0] S;
reg [136 -1:0] S_w[2:0];


assign accum_l = S[136*2 -1 -:136] + shifted_cl; 
assign accum_h = S[136*3 -1 -:136] + shifted_ch;

always@ (*) begin
	case(cnt)
		6: begin
			shifted_ch = R[136*2 -1 -:136] << 1; //R2 << 1
			shifted_cl = R[136*1 -1 -:136] << 1; //R2 << 1
		end
		7: begin
			shifted_ch = R[136*2 -1 -:136] << 2; //R2 << 2
			shifted_cl = R[136*1 -1 -:136] << 2; //R2 << 2
		end
		8: begin
			shifted_ch = R[136*2 -1 -:136] << 5; //R2 << 5
			shifted_cl = R[136*1 -1 -:136] << 5; //R2 << 5
		end
		19: begin
			shifted_ch = S[136*3 -1 -:136] << 1; //Calculate 19*S2
			shifted_cl = R[136*1 -1 -:136]; 
		end
		20: begin
			shifted_ch = R[136*2 -1 -:136] << 4; //Calculate 19*S2
			shifted_cl = R[136*1 -1 -:136]; 
		end
		default: begin
			shifted_ch = R[136*2 -1 -:136]; //R2 << 0
			shifted_cl = R[136*1 -1 -:136]; //R2 << 0
		end
	endcase
end

always@ (*) begin
	case(cnt)
		13: begin // shift down 136 bit
			S_w[2] = 0;
			S_w[1] = S[136*3 -1 -:136];
			S_w[0] = S[136*2 -1 -:136];
		end
		6,7,8,10,14,18: begin
			S_w[2] = accum_h;
			S_w[1] = accum_l;
			S_w[0] = S[136*1 -1 -:136];
		end
		19,20: begin
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

// First 4 cycles to compute 38*C3
always@ (*) begin
	case(cnt)
		5, 9,13,17: begin
			R_w[2] = {8'd0,accumulated_res_r[255:128]};
			R_w[1] = {8'd0,accumulated_res_r[127:0]};
		end
		19: begin
			R_w[2] = S[136*3 -1 -:136];
			R_w[1] = R[136*1 -1 -:136];
		end
		default : begin
			R_w[2] = R[136*2 -1 -:136];
			R_w[1] = R[136*1 -1 -:136];
		end
	endcase
end

always@ (posedge i_clk ) begin
	if(cnt==5) begin
		S <= 0;
	end else begin
		S <= {S_w[2], S_w[1], S_w[0]};
	end
end

always@ (posedge i_clk ) begin
	R <=  {R_w[2], R_w[1]};
end

wire [256+8: 0] sum_S;
reg  [256+8: 0] C;

assign sum_S = cnt[0] ?  ({S[136*3 -1 -:136],1'b0} +  S[136*1 -1 -:136] ): (C + {S[136*2 -1 -:136], 128'd0}); //sumS = 19*S2 + S0 + S1*2^128
always@ (posedge i_clk ) begin
	C <= sum_S;
end

// 2 cycles for q modulation

reg  [254:0] res_r;
wire [254:0] a_w, b_w;

assign a_w = C[254:0];
assign b_w = C[264:255]*19;

// Connect with reduction module
reg o_valid_r;
modular_add_sub modular_add_sub_inst (
	.i_clk    (i_clk),
	.i_rst    (i_rst),
	.a        (a_w),
	.b        (b_w),
	.i_add_sub(1'b1),
	.i_first  (cnt==23), // start at round == 1
	.o_valid  (o_valid_r),
	.res      (res_r)
);
 
always@ (posedge i_clk ) begin
	a_in_r <= a_in_w;
	b_in_r <= b_in_w;
end


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