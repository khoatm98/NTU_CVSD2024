
module conv (                       
	input         i_clk,
	input         i_rst_n,
	input  [31:0] i_data,
	input         i_isFirst,
	input         i_input_done,
	output        o_out_valid,
	output [13:0] o_out_data
);

// ---------------------------------------------------------------------------
// Wires and Registers
// ---------------------------------------------------------------------------
// ---- Add your own wires and registers here if needed ---- //


wire [13:0] out_data_w;
reg [16:0] out_data_wait_r;
reg        i_input_done_r;
reg [1:0] cnt;
reg [1:0] cs, ns;



wire [7:0] data_a_w;
wire [7:0] data_b_w;
wire [7:0] data_c_w;
wire [7:0] data_d_w;

wire [9:0] data_abc_w;
wire [9:0] data_bcd_w;
reg  [9:0] data_abc_r;
reg  [9:0] data_bcd_r;
reg  [10:0] data_abc_1_r;
reg  [10:0] data_abc_3_r;
reg  [10:0] data_bcd_2_r;
reg  [10:0] data_bcd_4_r;

reg  [16:0] conv_1_r;
reg  [16:0] conv_2_r;
reg  [16:0] conv_3_r;
reg  [16:0] conv_4_r;

wire  [17:0] conv_1_w;
wire  [17:0] conv_2_w;
wire  [17:0] conv_3_w;
wire  [17:0] conv_4_w;

reg  [13:0] conv_r;
reg o_out_valid_ready_r;
reg [13:0] o_out_data_ready_r;
localparam READ   = 2'd1;
localparam IDLE   = 2'd0;
localparam CALC   = 2'd2;
localparam OUTPUT = 2'd3;

// ---------------------------------------------------------------------------
// Continuous Assignment
// ---------------------------------------------------------------------------
// ---- Add your own wire data assignments here if needed ---- //

assign o_out_valid = o_out_valid_ready_r;
assign o_out_data  =  o_out_data_ready_r;
assign data_a_w = i_data[7 :0 ];
assign data_b_w = i_data[15:8 ];
assign data_c_w = i_data[23:16];
assign data_d_w = i_data[31:24];

assign data_abc_w = data_a_w + {data_b_w,1'b0} + data_c_w;
assign data_bcd_w = data_b_w + {data_c_w,1'b0} + data_d_w;

assign conv_1_w = conv_1_r + data_abc_1_r;
assign conv_2_w = conv_2_r + data_bcd_2_r;
assign conv_3_w = conv_3_r + data_abc_3_r;
assign conv_4_w = conv_4_r + data_bcd_4_r;
// ---------------------------------------------------------------------------
// Combinational Blocks
// ---------------------------------------------------------------------------
// ---- Write your conbinational block design here ---- //

always @ (*) begin
	case(cs)
		IDLE    : ns = i_isFirst ? READ : IDLE;
		READ    : ns = i_input_done_r ? CALC : READ;
		CALC    : ns = cnt == 1   ? OUTPUT : CALC;
		OUTPUT  : ns = cnt == 1   ? IDLE : OUTPUT;
		default : ns = IDLE;
	endcase
end
// ---------------------------------------------------------------------------
// Sequential Block
// ---------------------------------------------------------------------------
// ---- Write your sequential block design here ---- //

always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		cs <= 0;
	end
	else begin
		cs <= ns;
	end

end

always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		cnt <= 0;
	end
	else if  (|ns[1:0]) begin
		cnt <= cnt+1;
	end
	else begin
		cnt <= 0;
	end
end

always @ (*) begin
	case(cnt)
		2'd1   : conv_r = conv_1_r[16:3];
		2'd2   : conv_r = conv_2_r[16:3];
		2'd3   : conv_r = conv_3_r[16:3];
		default: conv_r = conv_4_r[16:3];
	endcase
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		o_out_data_ready_r  <= 0;
	end
	else begin
		o_out_data_ready_r  <= conv_r[13:1] + conv_r[0];
	end

end

always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		o_out_valid_ready_r <= 0;
	end
	else if  (ns == OUTPUT) begin
		o_out_valid_ready_r <= 1;
	end
	else begin
		o_out_valid_ready_r <= 0;
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		i_input_done_r <= 0;
	end
	else begin
		i_input_done_r <= i_input_done;
	end
end
always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		data_abc_r <= 0;
		data_bcd_r <= 0;
	end
	else begin
		data_abc_r <= data_abc_w;
		data_bcd_r <= data_bcd_w;
	end
end


always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		data_abc_1_r <= 0;
		data_bcd_2_r <= 0;
	end
	else begin
		casez(cnt)
			2'bz1    : begin
				data_abc_1_r <= cs[1] ? 0 : {1'b0,data_abc_r};
				data_bcd_2_r <= cs[1] ? 0 : {1'b0,data_bcd_r};
			end
			2'd2    : begin
				data_abc_1_r <= cs[1] ? 0 :  {data_abc_r,1'b0};
				data_bcd_2_r <= cs[1] ? 0 :  {data_bcd_r,1'b0};
			end
			default : begin
				data_abc_1_r <= 0;
				data_bcd_2_r <= 0;
			end
		endcase
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		data_abc_3_r <= 0;
		data_bcd_4_r <= 0;
	end
	else begin
		casez(cnt)
			2'bz0    : begin
				data_abc_3_r <=  ^cs ?  {1'b0,data_abc_r} : 0;
				data_bcd_4_r <=  ^cs ?  {1'b0,data_bcd_r} : 0;
			end
			2'd3    : begin
				data_abc_3_r <=  ^cs ?  {data_abc_r,1'b0} : 0;
				data_bcd_4_r <=  ^cs ?  {data_bcd_r,1'b0} : 0;
			end
			default : begin
				data_abc_3_r <= 0;
				data_bcd_4_r <= 0;
			end
		endcase
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		conv_4_r <= 0;
		conv_3_r <= 0;
		conv_2_r <= 0;
		conv_1_r <= 0;
	end else if(cs == IDLE) begin
		conv_1_r <= 0;
		conv_2_r <= 0;
		conv_3_r <= 0;
		conv_4_r <= 0;
	end
	else begin
		conv_1_r <= conv_1_w[16:0];
		conv_2_r <= conv_2_w[16:0];
		conv_3_r <= conv_3_w[16:0];
		conv_4_r <= conv_4_w[16:0];
	end
end

endmodule


