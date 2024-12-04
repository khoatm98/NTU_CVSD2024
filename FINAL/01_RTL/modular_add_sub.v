module modular_add_sub  #(
    parameter DATA_W = 255
) (
input                 i_clk     ,
input  [DATA_W-1:0]   a         ,
input  [DATA_W-1:0]   b         ,
input                 i_add_sub ,
input                 i_first   ,
output                  o_valid ,
output [DATA_W-1:0]       res
);

localparam IDLE = 2'd0;
localparam ONE  = 2'd1;
localparam TWO  = 2'd2;

reg     [1:0]     state, n_state;
reg  [DATA_W:0]   C;
reg  [DATA_W:0]   C_;
wire  [DATA_W:0]          a_;
wire  [DATA_W:0]          b_;

assign a_ = i_first ? a  : C[DATA_W-1:0];
assign b_ = i_first ? b  : 19;


always @(posedge i_clk) begin
        state <= n_state;
end

always @(posedge i_clk) begin
	if (state == ONE || i_first) C <= i_add_sub ?  a_ + b_ : a_ - b_;
        if (state == ONE) C_ <= C;
end

always @(*) begin
        n_state = IDLE;
        case (state)
                IDLE: begin
                        n_state = (i_first) ? ONE : IDLE;
                end
                ONE: begin
                        n_state = TWO;
                end
                TWO: begin
                        n_state = IDLE;
                end
        endcase
end

wire compare = C_ >= `q ;
assign res = compare ? C[DATA_W-1:0] : C_[DATA_W-1:0];
assign o_valid = (state == TWO) ? 1'b1 : 1'b0;
endmodule
