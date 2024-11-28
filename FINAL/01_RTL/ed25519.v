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
localparam S_RST    = 0;
localparam S_INPUT  = 0;
localparam S_OUTPUT = 0;

// ---------------------------------------------------------------------------
// Reg and wire declaration
// ---------------------------------------------------------------------------
reg [DATA_W-1:0]   o_out_data_r;
reg o_out_valid_r;
reg o_in_ready_r;
wire m_reg_wren;
wire m_reg_rden;

reg [BUFF_W*3-1:0]   data_in_buf_r;
reg [BUFF_W*2-1:0]   data_out_buf_r;
// ---------------------------------------------------------------------------
// Continuous assignment
// ---------------------------------------------------------------------------
assign o_out_valid = 0;
assign o_in_ready  = 1;

assign m_reg_wren  = o_out_valid && i_out_ready;  // write enable
assign m_reg_rden  = o_in_ready  && i_in_valid;   // read enable

assign o_out_data = data_in_buf_r[BUFF_W*2-1 -:8];
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
always@ (*) begin
	o_in_ready_r = 1;
	o_out_valid_r = 0;
end

always@ (posedge i_clk) begin
	data_in_buf_r  <= m_reg_rden ? {data_in_buf_r[BUFF_W*3-1-8:0], i_in_data} : data_in_buf_r;
	data_out_buf_r <= m_reg_wren ? {data_out_buf_r[BUFF_W*2-1-8:0], 8'd0} : data_out_buf_r;
end


endmodule

// ---------------------------------------------------------------------------
// module: modular_add_sub
// Ref : Fast, Small, and Area-Time Efficient Architectures for Key-Exchange on Curve25519
// ---------------------------------------------------------------------------
module modular_add_sub  #(
    parameter DATA_W = 255,
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

assign a_ = i_first ? a  : C;
assign b_ = i_first ? b  : 19;

always @(posedge clk)
	C  <= i_add_sub ?  a_ + b_ : a_ - b_;
	C_ <= C;
end

assign res = C_[DATA_W] ? C[DATA_W-1:0] : C_[DATA_W-1:0];
endmodule

// ---------------------------------------------------------------------------
// module: modular_mult
// method: 4 levels of Karatsuba
// Ref : Fast, Small, and Area-Time Efficient Architectures for Key-Exchange on Curve25519
// ---------------------------------------------------------------------------
module modular_mult  #(
    parameter DATA_W = 255,
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

assign a_ = i_first ? a  : C;
assign b_ = i_first ? b  : 19;

always @(posedge clk)
	C  <= i_add_sub ?  a_ + b_ : a_ - b_;
	C_ <= C;
end

assign res = C_[DATA_W] ? C[DATA_W-1:0] : C_[DATA_W-1:0];
endmodule