
module core (                       //Don't modify interface
	input         i_clk,
	input         i_rst_n,
	input         i_op_valid,
	input  [ 3:0] i_op_mode,
    output        o_op_ready,
	input         i_in_valid,
	input  [ 7:0] i_in_data,
	output        o_in_ready,
	output        o_out_valid,
	output [13:0] o_out_data
);

// ---------------------------------------------------------------------------
// Wires and Registers
// ---------------------------------------------------------------------------
// ---- Add your own wires and registers here if needed ---- //
/* States */
localparam FETCH            = 4'd0;
localparam FETCH_WAIT       = 4'd1;
localparam DECODE           = 4'd2;
localparam MAP_LOAD         = 4'd3;
localparam SHIFT            = 4'd4;
localparam SCALE            = 4'd5;
localparam CONV             = 4'd14;
localparam CONV_OUT         = 4'd7;
localparam MED              = 4'd13;
localparam SOBEL_NMS        = 4'd15;
localparam DISPLAY          = 4'd10;
localparam OUTPUT           = 4'd11;
localparam RESET            = 4'd12;
localparam DELAY3           = 4'd6;
localparam DELAY2           = 4'd8;
localparam DELAY1           = 4'd9;
/* No. of Sram */
localparam SRAM_NO          = 4;



reg [7:0] in_data_r;
reg [3:0]  curr_state, next_state, pre_state[2:0];
reg [10:0] cnt;
wire [7:0] sram_data_out_w[SRAM_NO-1:0];
reg  [7:0] sram_data_out_r[SRAM_NO-1:0];

reg   [SRAM_NO-1:0]     sram_wen_ready_r;

wire [8:0] sram_addr_w[SRAM_NO-1:0];
reg  [8:0] sram_addr_wait_r[SRAM_NO-1:0];
reg  [8:0] sram_addr_ready_r[SRAM_NO-1:0];

wire conv_calc_done_w;
reg conv_calc_done_r;


wire med_done_w      ;
reg med_done_r;

wire display_done_w  ;
wire map_load_done_w ;
reg  map_load_done_r ;
reg display_done_r;
wire       l_valid_w;
wire       r_valid_w;
wire       u_valid_w;
wire       d_valid_w;

reg [3:0]  op_mode_r;

reg [2:0]  x_origin_r, x_origin_wait_r; 
reg [2:0]  y_origin_r, y_origin_wait_r;


reg [4:0]  z_r;
reg [2:0]  depth_wait_r;
reg [2:0]  depth_ready_r;

reg        out_valid_ready_r;
reg [13:0] out_data_ready_r;
reg        out_valid_wait_r;
reg [13:0] out_data_wait_r;

reg [31:0] input_data_wait_r;
reg [31:0] input_data_ready_r;

wire [13:0] result_w; 
wire [13:0] conv_result_w;
wire 	    conv_out_valid_w;
reg 	    conv_isFirst_signal_r;
reg 	    med_sobel_isFirst_signal_r;
reg 	    med_sobel_r;
wire 	    med_sobel_out_valid_w;
wire [10:0] med_sobel_result_w;

wire       out_valid_w;
reg [2:0]  x_minus_one_r;
reg [2:0]  x_plus_one_r;
reg [2:0]  x_plus_two_r;
reg [2:0]  x_r; 
reg [2:0]  y_r;
reg [2:0]  x_delay_r[2:0]; 
reg [2:0]  y_delay_r[2:0];

wire [2:0] sram_select[7:0];
// ---------------------------------------------------------------------------
// Continuous Assignment
// ---------------------------------------------------------------------------
// ---- Add your own wire data assignments here if needed ---- //



genvar i;
generate
	for(i = 0; i < SRAM_NO; i = i + 1) begin:SRAM_inst_loop
		sram_512x8 u_sram (
			.Q(sram_data_out_w[i]),
			.CLK(i_clk),
			.CEN(1'b0),
			.WEN(sram_wen_ready_r[i]),
			.A(sram_addr_w[i]),
			.D(in_data_r)
			);
			
		assign sram_addr_w[i] = sram_addr_ready_r[i];
	end
endgenerate


assign result_w =  conv_result_w | {3'b000, med_sobel_result_w};

assign out_valid_w       = conv_out_valid_w || med_sobel_out_valid_w;
assign o_op_ready        = curr_state == FETCH;
assign o_in_ready        = next_state == MAP_LOAD;
assign o_out_data        = out_data_ready_r;
assign o_out_valid       = out_valid_ready_r;
assign map_load_done_w   = cnt == 2047;
assign display_done_w    = cnt[7:5] == depth_ready_r;
assign conv_calc_done_w  = cnt ==  {3'b000, depth_ready_r, 5'b00011};// (depth_ready_r<<4) + 2;
//assign med_done_w        = cnt == 28;

assign l_valid_w = |x_origin_r[2:0]; 
assign r_valid_w = ~&x_origin_r[2:1]; 
assign u_valid_w = |y_origin_r[2:0]; 
assign d_valid_w = ~&y_origin_r[2:1]; 

// ---------------------------------------------------------------------------
// Combinational Blocks
// ---------------------------------------------------------------------------
// ---- Write your conbinational block design here ---- //

conv conv_inst (
				.i_clk(i_clk),
				.i_rst_n(i_rst_n),
				.i_data(input_data_ready_r),
				.i_isFirst(conv_isFirst_signal_r),
				.i_input_done(conv_calc_done_r),
				.o_out_valid(conv_out_valid_w),
				.o_out_data(conv_result_w)
				);
				                   
				
				
median median_sobel_inst (                       
									.i_clk(i_clk),
									.i_rst_n(i_rst_n),
									.i_data(input_data_ready_r),
									.i_isFirst(med_sobel_isFirst_signal_r),
									.i_med_sobel(med_sobel_r),
									.o_out_valid(med_sobel_out_valid_w),
									.o_out_data(med_sobel_result_w),
									.o_done(med_done_w)
									);
				
/* Origin shifting */
always @ (*) begin
	case(curr_state)
		DECODE: begin
			case(op_mode_r)
				`OP_R_SHIFT: begin
					x_origin_wait_r = x_origin_r < 6 ? x_origin_r + 1 : x_origin_r;
					y_origin_wait_r = y_origin_r ;
				end
			    `OP_L_SHIFT: begin
					x_origin_wait_r = x_origin_r > 0 ? x_origin_r - 1 : x_origin_r;
					y_origin_wait_r = y_origin_r ;
				end
			    `OP_U_SHIFT: begin
					x_origin_wait_r = x_origin_r;
					y_origin_wait_r = y_origin_r > 0 ? y_origin_r - 1 : y_origin_r;
				end
			    `OP_D_SHIFT: begin
					x_origin_wait_r = x_origin_r;
					y_origin_wait_r = y_origin_r < 6 ? y_origin_r + 1 : y_origin_r;
				end
				default: begin
					x_origin_wait_r = x_origin_r ;
					y_origin_wait_r = y_origin_r ;
				end
			endcase
		end
		default: begin
			x_origin_wait_r = x_origin_r ;
			y_origin_wait_r = y_origin_r ;
		end
	endcase
end

/* Depth scaling */
always @ (*) begin
	case(curr_state)
		DECODE: begin
			case(op_mode_r)
				`OP_SCALE_DOWN: begin
					depth_wait_r = depth_ready_r[0] ? depth_ready_r :  {1'b0,depth_ready_r[2:1]};
				end
				`OP_SCALE_UP: begin
					depth_wait_r = depth_ready_r[2] ? depth_ready_r :  {depth_ready_r[1:0], 1'b0};
				end
				default: begin
					depth_wait_r = depth_ready_r;
				end
			endcase
		end
		default: begin
			depth_wait_r = depth_ready_r;
		end
	endcase
end
/* SRAM address calculation */
generate
for(i = 0; i < SRAM_NO; i = i + 1) begin:SRAM_input
	always @ (*) begin
		case({next_state})
			MAP_LOAD: begin
				if (i == {cnt[1:0]}) begin
					sram_addr_wait_r[i] = {cnt[10:2]};
				end else begin
					sram_addr_wait_r[i] = sram_addr_ready_r[i];
				end
			end
			DISPLAY: begin
				sram_addr_wait_r[i][8:4] = z_r[4:0];
				sram_addr_wait_r[i][3:1] = y_r[2:0];
				sram_addr_wait_r[i][0]   = x_r[2];
			end
			default : begin
				sram_addr_wait_r[i][8:4] = z_r[4:0];
				sram_addr_wait_r[i][3:1] = y_r[2:0];
				case(i)
					{x_minus_one_r[1:0]}  : sram_addr_wait_r[i][0] = x_minus_one_r[2];
					{x_plus_one_r[1:0]}   : sram_addr_wait_r[i][0] = x_plus_one_r[2];
					{x_plus_two_r[1:0]}   : sram_addr_wait_r[i][0] = x_plus_two_r[2];
					default               : sram_addr_wait_r[i][0] = x_r[2];
				endcase 
			end
		endcase
	end
end
endgenerate

/* Input data for conv */
always @ (*) begin
	case(x_origin_r[1:0])
		2'd0    : input_data_wait_r = {sram_data_out_r[2], sram_data_out_r[1], sram_data_out_r[0], sram_data_out_r[3]};
		2'd1    : input_data_wait_r = {sram_data_out_r[3], sram_data_out_r[2], sram_data_out_r[1], sram_data_out_r[0]};
		2'd2    : input_data_wait_r = {sram_data_out_r[0], sram_data_out_r[3], sram_data_out_r[2], sram_data_out_r[1]};
		default : input_data_wait_r = {sram_data_out_r[1], sram_data_out_r[0], sram_data_out_r[3], sram_data_out_r[2]};
	endcase
end

/* Output */
always @ (*) begin
	case({pre_state[2],pre_state[1]})
		{DISPLAY,DISPLAY}: begin
			out_valid_wait_r = 1;
			case(x_delay_r[2][1:0])
				2'd0    : out_data_wait_r = {6'b0, sram_data_out_r[0]};
				2'd1    : out_data_wait_r = {6'b0, sram_data_out_r[1]};
				2'd2    : out_data_wait_r = {6'b0, sram_data_out_r[2]};
				default : out_data_wait_r = {6'b0, sram_data_out_r[3]};
			endcase
			//out_data_wait_r = {6'b0, sram_data_out_r[{x_delay_r[2][1:0] }]};
		end
		default : begin
			out_data_wait_r  = result_w;
			out_valid_wait_r = out_valid_w;
		end
	endcase
end
//FSM
always @ (*) begin
	case(curr_state)
		RESET      : next_state = FETCH;
		FETCH      : next_state = i_op_valid ? DECODE : FETCH_WAIT;
		FETCH_WAIT : next_state = i_op_valid ? DECODE : FETCH_WAIT;
		DECODE     : begin
			case(op_mode_r)
				`OP_MAP_LOADING : next_state = MAP_LOAD;
				`OP_DISPLAY     : next_state = DISPLAY;
				`OP_CONV        : next_state = CONV;
				`OP_MED_FILTER  : next_state = MED;
				`OP_SOBEL_NMS   : next_state = SOBEL_NMS;
				default         : next_state = FETCH;
			endcase
		end
		MAP_LOAD   : next_state = map_load_done_r  ? FETCH : MAP_LOAD;
		CONV       : next_state = conv_calc_done_r  ? CONV_OUT : CONV;
		CONV_OUT   : next_state = out_valid_ready_r ? DELAY3   : CONV_OUT;
		MED        : next_state = med_done_r        ? FETCH    : MED;
		SOBEL_NMS  : next_state = med_done_r        ? FETCH    : SOBEL_NMS;
		DISPLAY    : next_state = display_done_r    ? DELAY3   : DISPLAY;
		OUTPUT     : next_state = DELAY3;
		DELAY3     : next_state = DELAY2;
		DELAY2     : next_state = DELAY1;
		DELAY1     : next_state = FETCH;
		default    : next_state = FETCH;
	endcase
end
// ---------------------------------------------------------------------------
// Sequential Block
// ---------------------------------------------------------------------------
// ---- Write your sequential block design here ---- //

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		curr_state <= RESET;
		pre_state[0]  <= RESET;
		pre_state[1]  <= RESET;
		pre_state[2]  <= RESET;
	end
	else begin
		curr_state    <= next_state;
		pre_state[0]  <= curr_state;
		pre_state[1]  <= pre_state[0];
		pre_state[2]  <= pre_state[1];
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n)
		cnt <= 0;
	else begin
		casez({curr_state})
			{4'b000z}  : cnt <= 0;
			{MAP_LOAD} : cnt <= i_in_valid ? cnt + 1 : cnt;
			default    : cnt <= cnt + 1;
		endcase
	end 
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n)
		op_mode_r <= 0;
	else
		op_mode_r <= i_op_valid? i_op_mode : op_mode_r;
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n)
		in_data_r <= 0;
	else
		in_data_r <= i_in_data;
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n)
		input_data_ready_r <= 0;
	else begin
		case({u_valid_w,d_valid_w,l_valid_w,r_valid_w})
			4'b0111: input_data_ready_r <= cnt[1:0] == 0 ? 0 : input_data_wait_r;
			4'b0101: input_data_ready_r <= cnt[1:0] == 0 ? 0 : {input_data_wait_r[31:8],8'b0};
			4'b1101: input_data_ready_r <= {input_data_wait_r[31:8],8'b0};
			4'b0110: input_data_ready_r <= cnt[1:0] == 0 ? 0 : {8'b0, input_data_wait_r[23:0]};
			4'b1110: input_data_ready_r <= {8'b0, input_data_wait_r[23:0]};
			4'b1011: input_data_ready_r <= cnt[1:0] == 3 ? 0 : input_data_wait_r;
			4'b1001: input_data_ready_r <= cnt[1:0] == 3 ? 0 : {input_data_wait_r[31:8],8'b0};
			4'b1010: input_data_ready_r <= cnt[1:0] == 3 ? 0 : {8'b0, input_data_wait_r[23:0]};
			default: input_data_ready_r <= input_data_wait_r;
		endcase
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		x_origin_r <= 0;
		y_origin_r <= 0;
		depth_ready_r <= 3'b100;
	end
	else begin
		x_origin_r    <= x_origin_wait_r;
		y_origin_r    <= y_origin_wait_r;
		depth_ready_r <= depth_wait_r;
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		conv_calc_done_r <= 0;
		med_done_r       <= 0;
		display_done_r	 <= 0;
		map_load_done_r  <= 0;
	end
	else begin
		conv_calc_done_r <= curr_state == CONV ? conv_calc_done_w : conv_calc_done_r;
		med_done_r       <= med_done_w;
		display_done_r   <= display_done_w;
		map_load_done_r  <= map_load_done_w;
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		out_data_ready_r  <= 0;
		out_valid_ready_r <= 0;
	end
	else begin
		out_data_ready_r  <= out_data_wait_r ;
		out_valid_ready_r <= out_valid_wait_r;
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		x_minus_one_r <= 0;
		x_plus_one_r  <= 0;
		x_plus_two_r  <= 0;
		
		x_delay_r[0]  <= 0;
		x_delay_r[1]  <= 0;
		x_delay_r[2]  <= 0;
	end
	else begin
		x_minus_one_r <= {x_origin_r} - 1;
		x_plus_one_r  <= {x_origin_r} + 1;
		x_plus_two_r  <= {x_origin_r} + 2;
		
		x_delay_r[0]  <= x_r;
		x_delay_r[1]  <= x_delay_r[0];
		x_delay_r[2]  <= x_delay_r[1];

	end
end

reg x_ovf_r, y_ovf_r, z_ovf_r;


always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		x_r <= 0;
		z_r <= 0;
	end
	else begin
		casez(next_state)
			DISPLAY: begin
				x_r <= (x_origin_r + (cnt[0]))%8;
				z_r <= cnt[6:2];//(cnt)>>2;
			end
			
			4'b11zz: begin // conv med sobel
				x_r <= {x_origin_r};
				z_r <=  cnt[6:2];//cnt_forecast[5:1];
			end
			default: begin
				x_r <= {x_origin_r};
				z_r <= cnt[10:6];
			end
		endcase
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		y_r <= 0;
	end
	else begin
		casez(next_state)
			DISPLAY: begin
				y_r <= (y_origin_r + cnt[1])%8;
			end
			4'b11zz: begin // conv med sobel
				y_r <= y_origin_r + {cnt[1],cnt[0]} - 1;
			end

			default: begin
				y_r <= {y_origin_r};
			end
		endcase
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		conv_isFirst_signal_r    <= 0;
		med_sobel_isFirst_signal_r     <= 0;
		med_sobel_r              <= 0;
	end
	else begin
		conv_isFirst_signal_r  <= curr_state == CONV && cnt == 4 ? 1 : 0 ;
		med_sobel_isFirst_signal_r   <= {curr_state[3:2], curr_state[0]} == 3'b111 && cnt == 4 ? 1 : 0 ;
		med_sobel_r            <= op_mode_r == `OP_SOBEL_NMS ? 1 : 0;
	end
end

generate
for(i = 0; i < SRAM_NO; i = i + 1) begin:SRAM_input_seq
	always @ (posedge i_clk or negedge i_rst_n) begin
		if (~i_rst_n) begin
			sram_addr_ready_r[i] <= 0;
			sram_data_out_r[i]   <= 0;
		end
		else begin
			sram_addr_ready_r[i] <= sram_addr_wait_r[i];
			sram_data_out_r[i]   <= sram_data_out_w[i];
		end
	end
end
endgenerate

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		sram_wen_ready_r <= 4'b1111;
	end
	else begin
		case({curr_state, next_state})
			{DECODE, MAP_LOAD}   : sram_wen_ready_r <= 8'b1110;
			{MAP_LOAD, MAP_LOAD} : sram_wen_ready_r <= i_in_valid ? {sram_wen_ready_r[2:0], sram_wen_ready_r[3]} : sram_wen_ready_r;
			default              : sram_wen_ready_r <= 8'b1111;
		endcase
	end
end
endmodule