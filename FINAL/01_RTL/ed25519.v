`timescale 1ns/10ps

`define q 255'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed
`define minus_one 255'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec
`define d 255'h52036cee2b6ffe738cc740797779e89800700a4d4141d8ab75eb4dca135978a3
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
localparam S_RST            = 4'd0;
localparam S_INPUT          = 4'd1;
localparam S_SCALAR_MULT_D  = 4'd2;  // point doubling
localparam S_SCALAR_MULT_A  = 4'd3;  // point addition
localparam S_SCALAR_CHECK   = 4'd10; 
localparam S_REDUCE_Z_INV   = 4'd4;  // compute z_inv
localparam S_REDUCE_XZ_INV  = 4'd5;  // compute x* z_inv
localparam S_REDUCE_YZ_INV  = 4'd6;  // compute y* z_inv
localparam S_REDUCE_X_TRAN  = 4'd7;  // make x even
localparam S_REDUCE_Y_TRAN  = 4'd8;  // make y even
localparam S_OUTPUT         = 4'd9;                 

// ---------------------------------------------------------------------------
// Reg and wire declaration
// ---------------------------------------------------------------------------
reg [3:0] curr_state, next_state;
reg [3:0] curr_s_state, next_s_state;
reg [3:0] generic_cnt;

reg [DATA_W-1:0]   o_out_data_r;

wire m_reg_wren;
wire m_reg_rden;

reg [BUFF_W*3-1:0]   data_buf_r;
reg [255:0] X_r;
reg [255:0] Y_r;
reg [255:0] Z_r;
// ---------------------------------------------------------------------------
// Continuous assignment
// ---------------------------------------------------------------------------
assign o_out_valid = curr_state == S_OUTPUT;
assign o_in_ready  = curr_state == S_INPUT;

assign m_reg_wren  = o_out_valid && i_out_ready;  // write enable
assign m_reg_rden  = o_in_ready  && i_in_valid;   // read enable

assign o_out_data = data_buf_r[BUFF_W*3-1 -:64];
// ---------------------------------------------------------------------------
// MOD ADD/SUB and MOD MULT instanitiate
// ---------------------------------------------------------------------------
reg [255:0] modadd_a_in_r;
reg [255:0] modadd_b_in_r;

reg [255:0] modadd_a_in_w;
reg [255:0] modadd_b_in_w;
reg [255:0] modmult_a_in_w;
reg [255:0] modmult_b_in_w;

reg         modadd_inst;
reg         modadd_i_valid;
reg         modadd_o_valid;
reg [255:0] modadd_res_r;

reg [255:0] modmult_a_in_r;
reg [255:0] modmult_b_in_r;

reg         modmult_i_valid;
reg         modmult_o_valid;
reg [255:0] modmult_res_r;

modular_add_sub modular_add_sub_inst (
        .i_clk    (i_clk)        ,
		.i_rst    (i_rst)        ,
        .a        (modadd_a_in_r[254:0]),
        .b        (modadd_b_in_r[254:0]),
        .i_add_sub(modadd_inst)  ,
        .i_first  (modadd_i_valid),
        .o_valid  (modadd_o_valid),
		.res      (modadd_res_r[254:0])
);

modular_mult modular_mult_inst(
        .i_clk  (i_clk),
		.i_rst  (i_rst),
        .a      (modmult_a_in_r),
        .b      (modmult_b_in_r),
        .i_first(modmult_i_valid),
		.o_valid(modmult_o_valid),
        .res    (modmult_res_r)
);

always@ (posedge i_clk) begin
	modadd_a_in_r <= modadd_a_in_w;
	modadd_b_in_r <= modadd_b_in_w;
	
	modmult_a_in_r <= modmult_a_in_w;
	modmult_b_in_r <= modmult_b_in_w;
end

// ---------------------------------------------------------------------------
// Input state
// ---------------------------------------------------------------------------
reg [BUFF_W*3-1:0]   data_in_buf_w;

always@(*) begin
	if (m_reg_rden)
		data_in_buf_w =  {data_buf_r[BUFF_W*3-1-8:0], i_in_data};
	else
		data_in_buf_w =  data_buf_r;
end

// ---------------------------------------------------------------------------
// Scalar multiplication
// ---------------------------------------------------------------------------
localparam S_LEVEL_0  = 4'd0;
localparam S_LEVEL_1  = 4'd1;
localparam S_LEVEL_2  = 4'd2; 
localparam S_LEVEL_3  = 4'd3; 
localparam S_LEVEL_4  = 4'd4; 
localparam S_LEVEL_5  = 4'd5; 
localparam S_LEVEL_6  = 4'd6; 
localparam S_LEVEL_7  = 4'd7; 
localparam S_LEVEL_8  = 4'd8; 
localparam S_LEVEL_9  = 4'd9; 
localparam S_LEVEL_10  = 4'd10; 

reg [7:0]   round_r;
reg [7:0]   round_scalar_w;

reg         end_round;

always@(posedge i_clk) begin
	if(curr_state == S_INPUT && next_state == S_SCALAR_MULT_D) begin
		round_r <= 255;
	end
	else begin
		round_r <= end_round ? round_r - 1 : round_r;
	end
end

// ---------------------------------------------------------------------------
//         Point doubling
// ---------------------------------------------------------------------------
reg [3:0] next_doubling_state;


//always@(*) begin
//	if (m_reg_wren)
//		data_out_buf_w =  {data_buf_r[BUFF_W*3-1-64:0], 64'd0};
//	else
//		data_out_buf_w =  data_buf_r;
//end

always@ (*) begin
	case(curr_s_state)
		S_LEVEL_0 : next_doubling_state = modmult_o_valid ? S_LEVEL_1   : curr_s_state;
		S_LEVEL_1 : next_doubling_state = modmult_o_valid ? S_LEVEL_2   : curr_s_state;
		S_LEVEL_2 : next_doubling_state = modmult_o_valid ? S_LEVEL_3   : curr_s_state;
		S_LEVEL_3 : next_doubling_state = modmult_o_valid ? S_LEVEL_4   : curr_s_state;
		S_LEVEL_4 : next_doubling_state = modmult_o_valid ? S_LEVEL_5   : curr_s_state;
		S_LEVEL_5 : next_doubling_state = modmult_o_valid ? S_LEVEL_6   : curr_s_state;
		S_LEVEL_6 : next_doubling_state = modmult_o_valid ? S_LEVEL_7   : curr_s_state;
		S_LEVEL_7 : next_doubling_state = modmult_o_valid ? S_LEVEL_8   : curr_s_state;
		S_LEVEL_8 : next_doubling_state = modmult_o_valid ? S_LEVEL_9   : curr_s_state;
		S_LEVEL_9 : next_doubling_state = modmult_o_valid ? S_LEVEL_10  : curr_s_state;
		default   : next_doubling_state = modmult_o_valid ? S_LEVEL_0   : curr_s_state;
	endcase
end

always@ (*) begin
	case(curr_s_state)
		S_LEVEL_0 : next_doubling_state = modmult_o_valid ? S_LEVEL_1   : curr_s_state;
		S_LEVEL_1 : next_doubling_state = modmult_o_valid ? S_LEVEL_2   : curr_s_state;
		S_LEVEL_2 : next_doubling_state = modmult_o_valid ? S_LEVEL_3   : curr_s_state;
		S_LEVEL_3 : next_doubling_state = modmult_o_valid ? S_LEVEL_4   : curr_s_state;
		S_LEVEL_4 : next_doubling_state = modmult_o_valid ? S_LEVEL_5   : curr_s_state;
		S_LEVEL_5 : next_doubling_state = modmult_o_valid ? S_LEVEL_6   : curr_s_state;
		S_LEVEL_6 : next_doubling_state = modmult_o_valid ? S_LEVEL_7   : curr_s_state;
		S_LEVEL_7 : next_doubling_state = modmult_o_valid ? S_LEVEL_8   : curr_s_state;
		S_LEVEL_8 : next_doubling_state = modmult_o_valid ? S_LEVEL_9   : curr_s_state;
		S_LEVEL_9 : next_doubling_state = modmult_o_valid ? S_LEVEL_10  : curr_s_state;
		default   : next_doubling_state = modmult_o_valid ? S_LEVEL_0   : curr_s_state;
	endcase
end
// ---------------------------------------------------------------------------
//         Point addition
// ---------------------------------------------------------------------------
reg [3:0] next_addition_state;

always@ (*) begin
	case(curr_s_state)
		S_LEVEL_0 : next_addition_state = modmult_o_valid ? S_LEVEL_1   : curr_s_state;
		S_LEVEL_1 : next_addition_state = modmult_o_valid ? S_LEVEL_2   : curr_s_state;
		S_LEVEL_2 : next_addition_state = modmult_o_valid ? S_LEVEL_3   : curr_s_state;
		S_LEVEL_3 : next_addition_state = modmult_o_valid ? S_LEVEL_4   : curr_s_state;
		S_LEVEL_4 : next_addition_state = modmult_o_valid ? S_LEVEL_5   : curr_s_state;
		S_LEVEL_5 : next_addition_state = modmult_o_valid ? S_LEVEL_6   : curr_s_state;
		S_LEVEL_6 : next_addition_state = modmult_o_valid ? S_LEVEL_7   : curr_s_state;
		S_LEVEL_7 : next_addition_state = modmult_o_valid ? S_LEVEL_8   : curr_s_state;
		S_LEVEL_8 : next_addition_state = modmult_o_valid ? S_LEVEL_9   : curr_s_state;
		S_LEVEL_9 : next_addition_state = modmult_o_valid ? S_LEVEL_10  : curr_s_state;
		default   : next_addition_state = modmult_o_valid ? S_LEVEL_0   : curr_s_state;
	endcase
end
// ---------------------------------------------------------------------------
// Inverse Z
// ---------------------------------------------------------------------------
localparam S_SQUARE  = 4'd0;
localparam S_MULT    = 4'd1;
localparam [254:0] q_sub_2   = `q - 2;

reg [255:0] Z_inv_w;
reg [3:0]   next_inv_state;

reg [255:0] inv_a_in_w;
reg [255:0] inv_b_in_w;
reg [255:0] inv_im_r;

always @ (*) begin
	case(curr_s_state)
		S_SQUARE : begin
			if(modmult_o_valid && q_sub_2[round_r-1]) 
				next_inv_state = S_MULT;
			else
				next_inv_state = S_SQUARE;
		end
		S_MULT    : begin
			if(modmult_o_valid) 
				next_inv_state = S_SQUARE;
			else
				next_inv_state = S_MULT;
		end
	endcase
end

always @ (*) begin
	inv_a_in_w = inv_im_r;
	case(curr_state)
		S_SQUARE : begin
			inv_b_in_w = inv_im_r;
		end
		S_MULT    : begin
			inv_b_in_w = Z_r;
		end
	endcase
end

always @ (*) begin
	Z_inv_w = modmult_o_valid ? modmult_res_r : Z_r;
end

//-------------------------------------------------------------------------
// Reduce x = X/Z
// ---------------------------------------------------------------------------
reg [255:0] X_w;

// ---------------------------------------------------------------------------
// Reduce Y = Y/Z
// ---------------------------------------------------------------------------
reg [255:0] Y_w;

// ---------------------------------------------------------------------------
// Transform x
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Transform y
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Output state
// ---------------------------------------------------------------------------

reg [BUFF_W*3-1:0]   data_out_buf_w;

always@(*) begin
	if (m_reg_wren)
		data_out_buf_w =  {data_buf_r[BUFF_W*3-1-64:0], 64'd0};
	else
		data_out_buf_w =  data_buf_r;
end

always@ (posedge i_clk) begin
	case(curr_state)
		S_INPUT :  data_buf_r <= data_in_buf_w;
		S_OUTPUT : data_buf_r <= data_out_buf_w;
		default :  data_buf_r <= {256'h47f6a5d15e1a09495f9216eba5253538db62c06ad333adbcc86932c069f00d26, 256'h465032bc1d1cace745d1b3bad5ca1115805ab1512361151d1c84c68aa2f54468, 256'd0};
	endcase
end


// ---------------------------------------------------------------------------
// Sequential Circuit
// ---------------------------------------------------------------------------


always@ (*) begin
	case(curr_state)
		S_RST:             next_state = S_INPUT;
		S_INPUT:           next_state = generic_cnt == 11 && m_reg_rden ? S_SCALAR_MULT_A : S_INPUT;
		S_SCALAR_MULT_A:   next_state = S_OUTPUT;
		S_OUTPUT :         next_state = generic_cnt == 11 && m_reg_wren ? S_INPUT  : S_OUTPUT;
	endcase
end
// ---------------------------------------------------------------------------
// Sequential Circuit
// ---------------------------------------------------------------------------
always@ (posedge i_clk ) begin
	if(i_rst) begin
		curr_state <= S_RST;
		curr_s_state <= 0;
	end else begin
		curr_state <= next_state;
		case(curr_state)
			S_SCALAR_MULT_D: curr_s_state <= next_doubling_state;
			S_SCALAR_MULT_A: curr_s_state <= next_addition_state;
			default        : curr_s_state <= 0;
		endcase
	end
end


// ---------------------------------------------------------------------------
// module: generic counter
// Description: counter start from 0 at every state transition
// ---------------------------------------------------------------------------
always@ (posedge i_clk ) begin
	if(i_rst || curr_state != next_state) begin
		generic_cnt <= 0;
	end else if(curr_state == S_INPUT) begin
		generic_cnt <= m_reg_rden ? generic_cnt + 1 : generic_cnt;
	end else if(curr_state == S_OUTPUT) begin
		generic_cnt <= m_reg_wren ? generic_cnt + 1 : generic_cnt;
	end else begin
		generic_cnt <= generic_cnt + 1;
	end
end

endmodule

