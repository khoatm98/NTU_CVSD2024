
// ---------------------------------------------------------------------------
// module: Inverse
// method: Called after MM
// Ref : Cryptographic Accelerators for Digital Signature Based on Ed25519
// ---------------------------------------------------------------------------

module inversion #(
    parameter DATA_W = 255
) (
	input                 i_clk        ,
	input                 i_rst        ,
	input  [254:0]        i_in_a       , 
	input                 i_first      ,
	output [254:0]	      o_inv_a      ,
	output 				  o_out_valid
);

// Reg, Wire decleration

reg			curr_state, next_state;

reg [254:0] im_data_1_r;
reg [254:0] im_data_2_r;
reg [254:0] im_data_w;

reg [5:0] state;
reg [1:0] sub_state;

reg [254:0] in_b_r;
reg         in_mult_valid_r;

reg [7:0]   cnt;
wire		o_valid_w;
// parameters
localparam S_SQUARE = 0;
localparam S_MULT   = 1;

localparam [255:0] q_sub_2   = `q - 2;
// Continuous assignment
  
modular_mult modular_mult_inst(
	.i_clk  (i_clk) ,
	.i_rst  (i_rst),
	.a      (im_data_1_r),
	.b      (in_b_r),
	.i_first(in_mult_valid_r)  ,
	.o_valid(o_valid_w),
	.res    (im_data_w)
);
// Combinational logic
always @ (*) begin
	case(curr_state)
		S_SQUARE : begin
			in_b_r = im_data_1_r;
		end
		S_MULT    : begin
			in_b_r = i_in_a;
		end
	endcase
end

always @ (*) begin
	case(curr_state)
		S_SQUARE : begin
			if(o_valid_w && q_sub_2[cnt]) 
				next_state = S_MULT;
			else
				next_state = S_SQUARE;
		end
		S_MULT    : begin
			if(o_valid_w) 
				next_state = S_SQUARE;
			else
				next_state = S_MULT;
		end
	endcase
end

wire state_change;
assign state_change = (curr_state != next_state) || o_valid_w;
// Sequential circuit

always @ ( posedge i_clk) begin
	if(i_first) begin
		cnt <= 255;
		curr_state <= 0;
		im_data_1_r <= 1;
		in_mult_valid_r <= 1;
	end
	else  begin
		cnt             <= state_change ? cnt - 1 : cnt;
		curr_state      <= next_state;
		im_data_1_r     <= o_valid_w ? im_data_w : im_data_1_r;
		in_mult_valid_r <=  state_change;
	end
end

assign o_inv_a     = im_data_1_r;
assign o_out_valid = cnt == 0;

endmodule