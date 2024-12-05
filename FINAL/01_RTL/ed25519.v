`timescale 1ns/10ps

`define q 255'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed
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
localparam S_RST     = 0;
localparam S_INPUT   = 1;
localparam S_PROCESS = 2;
localparam S_OUTPUT  = 3;
localparam S_P1      = 4;

// ---------------------------------------------------------------------------
// Reg and wire declaration
// ---------------------------------------------------------------------------
reg [2:0] curr_state, next_state;
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

reg [255:0] res_r, i_first_ad_r, i_first_pd_r;
reg [255:0] x2_r, y2_r, z2_r, x1_r, y1_r;
wire         valid_w, valid_w1, i_first_ad, i_first_pd;
wire [255:0] x2, y2, z2, x2_w1, y2_w1, z2_w1, x1_w1, y1_w1;
wire [255:0] x3, y3, z3;
//modular_mult modular_mult_inst(
//	.i_clk  (i_clk)  ,
//	.i_rst  (i_rst),
//	.a      (`q),
//	.b      (255'h31231221313332312312312353123123123122)  ,
//	.i_first(input_cnt==0)  ,
//	.o_valid(valid_w),
//	.res    (res_r)
//);
/* inversion inversion_inst(
	.i_clk      (i_clk) ,
	.i_rst       (i_rst),
	.i_in_a     (`q) , 
	.i_first    (input_cnt==0) ,
	.o_inv_a    (res_r) ,
	.o_out_valid(valid_w)
); */

point_adding point_adding_inst(
        .i_clk  (i_clk),
        .i_rst  (i_rst),
	.i_state(curr_state),
        .x1     (x1_w1),
        .y1     (y1_w1),
        .x2     (x2_w1),
        .y2     (y2_w1),
        .z2     (z2_w1),
        .i_first (i_first_ad),
        .o_valid (valid_w1),
        .x3     (x3),
        .y3     (y3),
        .z3     (z3)
);

point_doubling point_doubling_inst(
        .i_clk  (i_clk),
        .i_rst  (i_rst),
	.i_state(curr_state),
        .x1     (255'h321),
        .y1     (255'h111),
        .i_first (i_first_pd),
        .o_valid (valid_w),
        .x2     (x2),
        .y2     (y2),
        .z2     (z2)

);

always@ (posedge i_clk) begin
	if (i_rst) begin
		x2_r <= 0;
		y2_r <= 0;
		z2_r <= 0;
		x1_r <= 0;
		y1_r <= 0;
	end else if (valid_w) begin
		x2_r <= x2;
		y2_r <= y2;
		z2_r <= z2;
		x1_r <= 255'h321;
		y1_r <= 255'h111;
	end
end
assign x2_w1 = x2_r;
assign y2_w1 = y2_r;
assign z2_w1 = z2_r;
assign x1_w1 = x1_r;
assign y1_w1 = y1_r;
assign i_first_ad = i_first_ad_r;
assign i_first_pd = i_first_pd_r;

always@ (posedge i_clk) begin
	if (i_rst) begin
		i_first_ad_r <= 0;
		i_first_pd_r <= 0;
	end else begin
		i_first_ad_r <= valid_w;
		i_first_pd_r <= input_cnt == 11 && m_reg_rden;
	end	
end
always@ (*) begin
	case(curr_state)
		S_RST:       next_state = S_INPUT;
		S_INPUT:     next_state = input_cnt == 11 && m_reg_rden ? S_PROCESS : S_INPUT;
		S_PROCESS:   next_state = valid_w ? S_P1 : S_PROCESS;
		S_P1	:    next_state = valid_w1? S_OUTPUT : S_P1;
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

