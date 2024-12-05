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
input                 i_rst     ,
input  [DATA_W-1:0]   a         ,
input  [DATA_W-1:0]   b         ,
input                 i_add_sub ,
input                 i_first   ,
output                o_valid   ,
output [DATA_W-1:0]   res
);

localparam IDLE   = 2'd0;
localparam ONE    = 2'd1;
localparam TWO    = 2'd2;
localparam THREE  = 2'd3;

reg     [1:0]     state, n_state;
reg  [DATA_W:0]   C;
reg  [DATA_W:0]   C_;

wire  [DATA_W:0]   sum;
wire  [DATA_W:0]   sub;

wire  [DATA_W:0]          a_;
wire  [DATA_W:0]          b_;

assign a_ = state == IDLE ? {1'b0,a} : (state == TWO ? C[DATA_W:0] : {1'b0,C[DATA_W-1:0]});
assign b_ = state == IDLE ? {1'b0,b} : (state == TWO ? `q : 19);

assign sum = a_ + b_;
assign sub = a_ - b_;

always @(*) begin
        case (state)
                IDLE: begin
                        n_state = (i_first) ? ONE : IDLE;
                end
                ONE: begin
                        n_state = TWO;
                end
                TWO: begin
                        n_state = THREE;
                end
				THREE: begin
                        n_state = IDLE;
                end
        endcase
end

always @(posedge i_clk) begin
	state <= i_rst ? IDLE : n_state;
end

always @(posedge i_clk) begin
	if(state == IDLE && i_first)
		C <= i_add_sub ? sum : sub;
	else if(state == ONE && C[DATA_W])
		C <= i_add_sub ? sum : sub;
	else if(state == TWO)
		C <= i_add_sub ? (sub[DATA_W] ? C : sub[DATA_W-1:0]) : (C[DATA_W] ? sum[DATA_W-1:0] : C[DATA_W-1:0]);
	else
		C <= C;
end

assign res = C;
assign o_valid = (state == THREE);
endmodule