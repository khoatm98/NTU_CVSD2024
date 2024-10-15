module sobel_nms(i_clk,i_rst_n,i_data,i_isFirst,o_out_valid,o_out_data);
input  i_clk;
input  i_rst_n;
input  [31:0]i_data;
input  i_isFirst;
output o_out_valid;
inout  [13:0]o_out_data;
endmodule

module sram_512x8(Q,CLK,CEN,WEN,A,D);
output [7:0]Q;
input  CLK;
input  CEN;
input  WEN;
input  [8:0]A;
input  [7:0]D;
endmodule

