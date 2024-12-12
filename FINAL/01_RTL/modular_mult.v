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

localparam S_IDLE     = 3'd0;
localparam S_MULT_C3  = 3'd1;
localparam S_MULT_C0  = 3'd2;
localparam S_MULT_C2  = 3'd3;
localparam S_MULT_C1  = 3'd4;
localparam S_RED1     = 3'd5;
localparam S_RED2     = 3'd6;
localparam S_RED3     = 3'd7;
localparam S_ACCUM    = 4'd8;
localparam S_OUTPUT   = 4'd9;


reg [2:0]    curr_state, next_state;
reg [255:0]  res_out_r;
reg [255:0]  res_out_w;

reg [127:0]  a_in_r;
reg [127:0]  b_in_r;
reg [127:0]  a_in_w;
reg [127:0]  b_in_w;

multiplier_128x128 multiplier_128x128_inst (
											.a  (a_in_w) ,
											.b  (b_in_w) ,
											.res(res_out_w)
											);
											
											
always@ (*) begin
	case (curr_state)
		S_IDLE    : begin
			a_in_w = a[255:128];
			b_in_w = b[255:128];
		end
		S_MULT_C3 : begin
			a_in_w = a[127:0];
			b_in_w = b[127:0];
		end 
		S_MULT_C0 : begin
			a_in_w = a[255:128];
			b_in_w = b[127:0];
		end 
		default : begin
			a_in_w = a[127:0];
			b_in_w = b[255:128];
		end 
		//default : begin
		//	a_in_w = a_in_r;
		//	b_in_w = b_in_r;
		//end  
	endcase
end

always@ (*) begin
	case (curr_state)
		S_IDLE      : next_state = i_first ? S_MULT_C3 : S_IDLE  ;
		S_MULT_C3   : next_state = S_MULT_C0  ;
		S_MULT_C0   : next_state = S_MULT_C2  ;
		S_MULT_C2   : next_state = S_MULT_C1 ;
		S_MULT_C1   : next_state = S_RED1 ;
		//S_ACCUM     : next_state = S_RED1   ;
		//S_RED1      : next_state = S_RED2   ;
		//S_RED2      : next_state = S_RED3   ;
		default     : next_state = S_IDLE   ;
		//S_OUTPUT    : next_state = S_IDLE   ;
	endcase
end

reg [384 : 0 ] sum;
reg [383 : 0 ] buff_w;
wire [384 : 0 ] sum_temp;
wire [255:0] temp; 
assign temp = sum[254:0] + sum[384:255]*19;

wire [255:0] temp1; 
wire [255:0] temp2;

assign temp2 = temp[254:0] + temp[255]*19;

assign temp1 = temp2 - `q;

assign sum_temp = sum + buff_w;

always@ (*) begin
	case (curr_state)
		S_MULT_C3   : buff_w = res_out_r*38  ;
		S_MULT_C0   : buff_w = res_out_r  ;
		S_MULT_C2   : buff_w = {res_out_r,128'd0} ;
		S_MULT_C1   : buff_w = {res_out_r,128'd0} ;
		default    : buff_w = 0   ;
	endcase
end

always@ (posedge i_clk) begin
	case(curr_state)
		S_IDLE    : sum <= 0;
		S_MULT_C3 : sum <= sum_temp;
		S_MULT_C0 : sum <= sum_temp;
		S_MULT_C2 : sum <= sum_temp;
		S_MULT_C1 : sum <= sum_temp;
		//S_RED1    : sum <= temp;
		//S_RED2    : sum <= temp1[255] ? temp : temp1;
		default    : sum <= sum;
		//S_OUTPUT  : sum <= sum;
		//S_OUTPUT  : sum <= sum;
	endcase
end

always@ (posedge i_clk) begin
	if(i_rst)
		curr_state <= S_IDLE;
	else
		curr_state <= next_state;
end


always@ (posedge i_clk) begin
	res_out_r <= res_out_w;
	a_in_r    <= a_in_w;
	b_in_r    <= b_in_w;
end


assign o_valid = curr_state == S_RED1;
assign res = temp1[255] ?  temp2[255:0] : temp1[255:0];
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
// module: multiplier_128x128
// method: Generic 128x128 multiplier
// ---------------------------------------------------------------------------

module multiplier_128x128   #(
    parameter DATA_W = 128
) (
input  [DATA_W  -1:0]   a   ,
input  [DATA_W  -1:0]   b   ,
output [DATA_W*2-1:0]	res
);
	assign res = a*b;
endmodule

// ---------------------------------------------------------------------------
// module: multiplier_256x256
// method: Generic 256x256 multiplier
// ---------------------------------------------------------------------------

module multiplier_256x256   #(
    parameter DATA_W = 256
) (
input  [DATA_W  -1:0]   a   ,
input  [DATA_W  -1:0]   b   ,
output [DATA_W*2-1:0]	res
);
	assign res = a*b;
endmodule
