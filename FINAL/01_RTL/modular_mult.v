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
		cnt <= &cnt[4:0] ? cnt : cnt + 1;
		accumulated_res_r <= cnt[1:0] == 2 ? accumulated_res_w >> 64 : accumulated_res_w;
	end
end

// Connect with reduction module
reg [DATA_W-2:0]	  res_r;
reg o_valid_r;
mod_q_reduce mod_q_reduce_inst (
	 .i_clk  (i_clk)  ,
	 .i_rst  (i_rst),
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