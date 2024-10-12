
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
localparam FETCH            = 4'd0;
localparam FETCH_WAIT       = 4'd1;
localparam DECODE           = 4'd2;
localparam MAP_LOAD         = 4'd3;
localparam SHIFT            = 4'd4;
localparam SCALE            = 4'd5;
localparam CONV             = 4'd6;
localparam CONV_OUT         = 4'd7;
localparam MED              = 4'd8;
localparam SOBEL_NMS        = 4'd9;
localparam DISPLAY          = 4'd10;
localparam OUTPUT           = 4'd11;
localparam RESET            = 4'd12;
localparam DELAY3           = 4'd13;
localparam DELAY2           = 4'd14;
localparam DELAY1           = 4'd15;
localparam MED_OUT          = 5'd16;
localparam SOBEL_NMS_OUT    = 5'd17;
localparam SRAM_NO          = 4;




reg [3:0]  curr_state, next_state, pre_state[1:0];
reg [10:0] cnt;
reg [2:0]  output_cnt;
wire [11:0] cnt_next_w, cnt_next4_w;
reg  [3:0] cnt_next4_mod16_r;
wire [7:0] sram_data_out_w[SRAM_NO-1:0];
wire       sram_cen_w[SRAM_NO-1:0];
wire       sram_wen_w[SRAM_NO-1:0];
reg        sram_cen_wait_r[SRAM_NO-1:0];
reg        sram_wen_wait_r[SRAM_NO-1:0];
reg        sram_cen_ready_r[SRAM_NO-1:0];
reg        sram_wen_ready_r[SRAM_NO-1:0];

wire [8:0] sram_addr_w[SRAM_NO-1:0];
wire [7:0] sram_data_w[SRAM_NO-1:0];
reg  [8:0] sram_addr_wait_r[SRAM_NO-1:0];
reg  [7:0] sram_data_wait_r[SRAM_NO-1:0];
reg  [8:0] sram_addr_ready_r[SRAM_NO-1:0];
reg  [7:0] sram_data_ready_r[SRAM_NO-1:0];

reg [2:0] sram_select_r;

reg [2:0] sram_select_forecase_0_r;
reg [2:0] sram_select_forecase_1_r;
reg [2:0] sram_select_forecase_2_r;
reg [2:0] sram_select_forecase_3_r;
wire [2:0] sram_select_forecase_0_w;
wire [2:0] sram_select_forecase_1_w;
wire [2:0] sram_select_forecase_2_w;
wire [2:0] sram_select_forecase_3_w;
wire [4:0] y_forecase_w, y_forecase_w1;
reg [4:0] y_forecase_r;
reg  [2:0] sram_select_delay_r[1:0];
reg  [2:0] sram_select1_delay_r[1:0];
reg  [2:0] sram_select2_delay_r[1:0];
reg  [2:0] sram_select3_delay_r[1:0];
wire conv_calc_done_w;
reg conv_calc_done_r;


wire conv_disp_done_w;
wire med_done_w      ;
reg med_done_r;
wire sobel_nms_done_w;
wire display_done_w  ;
wire output_done_w   ;
wire map_load_done_w ;


reg [3:0]  op_mode_r;
reg [3:0]  x_r, x_origin_r, x_origin_wait_r; 
reg [3:0]  y_origin_r, y_origin_wait_r;
reg signed [4:0]  y_r;
wire signed [4:0]  y_m1_w;
wire signed [5:0] x_m1_w, x_p1_w, x_p2_w;

reg [4:0]  z_r;
reg [5:0]  depth_wait_r;
reg [5:0]  depth_ready_r;
reg [9:0]  depth_conv_ready_r;
reg        out_valid_ready_r;
reg [13:0] out_data_ready_r;
reg        out_valid_wait_r;
reg [13:0] out_data_wait_r;

reg [31:0] input_data_r;
reg [31:0] input_data_wait_r;
reg 	   conv_isFirst_signal_r;
reg 	   conv_isFirst_signal_wait_r;
reg 	   med_isFirst_signal_r;
reg 	   med_isFirst_signal_wait_r;
wire 	    out_valid_w;
wire [13:0] conv_result_w;
wire [13:0] result_w; 
wire 	    conv_out_valid_w;
wire 	    med_out_valid_w;
wire [13:0]  med_result_w;
// ---------------------------------------------------------------------------
// Continuous Assignment
// ---------------------------------------------------------------------------
// ---- Add your own wire data assignments here if needed ---- //
/* Conv */
conv conv_inst (                       
				.i_clk(i_clk),
				.i_rst_n(i_rst_n),
				.i_data(input_data_r),
				.i_isFirst(conv_isFirst_signal_r),
				.i_input_done(conv_calc_done_r),
				.o_out_valid(conv_out_valid_w),
				.o_out_data(conv_result_w)
				);
				
median median_inst (                       
				.i_clk(i_clk),
				.i_rst_n(i_rst_n),
				.i_data(input_data_r),
				.i_isFirst(med_isFirst_signal_r),
				.o_out_valid(med_out_valid_w),
				.o_out_data(med_result_w)
				);
always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		conv_calc_done_r <= 0;
		med_done_r       <= 0;
		sram_select_forecase_0_r <= 0;
		sram_select_forecase_1_r <= 0;
		sram_select_forecase_2_r <= 0;
		sram_select_forecase_3_r <= 0;
		y_forecase_r             <= 0;
	end
	else begin
		y_forecase_r             <= y_forecase_w; //(((cnt[3:2] + 8)%16)>>2);
		conv_calc_done_r <= conv_calc_done_w;
		med_done_r       <= med_done_w;
		if(y_forecase_r < 8 && y_forecase_r >= 1  ) begin
		sram_select_forecase_0_r <=  sram_select_forecase_0_w;
		sram_select_forecase_1_r <=  sram_select_forecase_1_w;
		sram_select_forecase_2_r <=  sram_select_forecase_2_w;
		sram_select_forecase_3_r <=  sram_select_forecase_3_w;
		end else begin
			sram_select_forecase_0_r <= SRAM_NO;
			sram_select_forecase_1_r <= SRAM_NO;
			sram_select_forecase_2_r <= SRAM_NO;
			sram_select_forecase_3_r <= SRAM_NO;
		end
	end
end
genvar i;
generate
	for(i = 0; i < SRAM_NO; i = i + 1) begin:SRAM_inst_loop
		sram_512x8 u_sram (
			.Q(sram_data_out_w[i]),
			.CLK(i_clk),
			.CEN(sram_cen_w[i]),
			.WEN(sram_wen_w[i]),
			.A(sram_addr_w[i]),
			.D(sram_data_w[i])
			);
			
		assign sram_addr_w[i] = sram_addr_ready_r[i];
		assign sram_data_w[i] = sram_data_ready_r[i];
		assign sram_cen_w[i]  = sram_cen_ready_r[i];
		assign sram_wen_w[i]  = sram_wen_ready_r[i];
	end
endgenerate


assign sram_select_forecase_0_w =  x_r > 0 ?  (x_m1_w)%4 : SRAM_NO;
assign sram_select_forecase_1_w =  (x_r)%4;
assign sram_select_forecase_2_w =  x_p1_w%4;
assign sram_select_forecase_3_w =  x_r < 6 ? x_p2_w%4 : SRAM_NO;
assign y_forecase_w = next_state > FETCH && next_state <= DECODE ? y_origin_r + next_state - 1 : y_origin_r +   (((cnt + 8)%16)>>2);

assign result_w = conv_result_w;// | med_result_w;

assign out_valid_w = conv_out_valid_w;// || med_out_valid_w;
assign o_op_ready = curr_state == FETCH;
assign o_in_ready = curr_state == MAP_LOAD;
assign o_out_data  = out_data_ready_r;
assign o_out_valid = out_valid_ready_r;

assign map_load_done_w   = cnt == `MAP_VOLUME - 1;
assign display_done_w    = cnt == (depth_ready_r<<2) - 1;
assign conv_calc_done_w  = cnt >  (depth_ready_r<<4) - 1;
assign conv_disp_done_w  = cnt == 1;
assign med_done_w        = cnt > 16 - 1;
assign sobel_nms_done_w  = cnt == 1;
assign output_done_w     = output_cnt == 3;
assign cnt_next_w = cnt + 1;
assign cnt_next4_w = cnt + 4;
assign x_m1_w = x_r - 1;
assign x_p1_w = x_r + 1;
assign x_p2_w = x_r + 2; 

assign y_m1_w = y_r - 1;
// ---------------------------------------------------------------------------
// Combinational Blocks
// ---------------------------------------------------------------------------
// ---- Write your conbinational block design here ---- //
/* Origin shifting */
always @ (*) begin
	case(curr_state)
		SHIFT: begin
			case(op_mode_r)
				`OP_R_SHIFT: begin
					x_origin_wait_r = x_origin_r < 5 ? x_origin_r + 1 : x_origin_r;
					y_origin_wait_r = y_origin_r ;
				end
			    `OP_L_SHIFT: begin
					x_origin_wait_r = x_origin_r > 0 ? x_origin_r - 1 : x_origin_r;
					y_origin_wait_r = y_origin_r ;
				end
			    `OP_U_SHIFT: begin
					x_origin_wait_r = x_origin_r;
					y_origin_wait_r = y_origin_r >0 ? y_origin_r - 1 : y_origin_r;
				end
			    `OP_D_SHIFT: begin
					x_origin_wait_r = x_origin_r;
					y_origin_wait_r = y_origin_r < 5 ? y_origin_r + 1 : y_origin_r;
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
		SCALE: begin
			case(op_mode_r)
				`OP_SCALE_DOWN: begin
					depth_wait_r = depth_ready_r[3] ? depth_ready_r :  {1'b0,depth_ready_r[5:1]};
				end
			    `OP_SCALE_UP: begin
					depth_wait_r = depth_ready_r[5] ? depth_ready_r :  {depth_ready_r[4:0], 1'b0};
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


always @ (*) begin
	casez({curr_state,next_state}) 
		{MAP_LOAD,4'bzzzz}: begin
			sram_select_r = cnt%4;
		end
		{DISPLAY,4'bzzzz}: begin
			sram_select_r = (x_r)%4;

		end
		{DECODE,DISPLAY}: begin
			sram_select_r = (x_r)%4;
		end
		default: begin
			sram_select_r  = SRAM_NO;
		end
	endcase
end
/* input setup to conv module */
always @ (*) begin
	if(curr_state == CONV || curr_state == MED) begin
		if( pre_state[1] == DECODE) begin
			conv_isFirst_signal_wait_r = 1;
			med_isFirst_signal_wait_r = 0;
		end
		else begin
			conv_isFirst_signal_wait_r = 0;
			med_isFirst_signal_wait_r = 0;
		end
			
		if(sram_select_delay_r[1] == SRAM_NO)
			input_data_wait_r = 0;
		else begin
			if(sram_select1_delay_r[1] == SRAM_NO)
				input_data_wait_r = {sram_data_out_w[sram_select3_delay_r[1][1:0]], sram_data_out_w[sram_select2_delay_r[1][1:0]], sram_data_out_w[sram_select_delay_r[1][1:0]], 8'd0};
			else if(sram_select3_delay_r[1] == SRAM_NO)
				input_data_wait_r = {8'd0, sram_data_out_w[sram_select2_delay_r[1][1:0]], sram_data_out_w[sram_select_delay_r[1][1:0]], sram_data_out_w[sram_select1_delay_r[1][1:0]]};
			else
				input_data_wait_r = {sram_data_out_w[sram_select3_delay_r[1][1:0]], sram_data_out_w[sram_select2_delay_r[1][1:0]], sram_data_out_w[sram_select_delay_r[1][1:0]], sram_data_out_w[sram_select1_delay_r[1][1:0]]};
		end
	end
	else begin
		conv_isFirst_signal_wait_r = 0;
		med_isFirst_signal_wait_r = 0;
		input_data_wait_r = 0;
	end
end
generate
for(i = 0; i < SRAM_NO; i = i + 1) begin:SRAM_input
	always @ (*) begin
		
		casez({pre_state[0],curr_state,next_state})
			{4'bzzzz,MAP_LOAD,MAP_LOAD}: begin
				if (i == sram_select_r) begin
					sram_addr_wait_r[i] = cnt[10:2];
					sram_data_wait_r[i] = i_in_data;
					sram_cen_wait_r [i] = ~i_in_valid;
					sram_wen_wait_r [i] = ~i_in_valid;
				end else begin
					sram_addr_wait_r[i] = 0;
					sram_data_wait_r[i] = 0;
					sram_cen_wait_r [i] = 1;
					sram_wen_wait_r [i] = 1;
				end
			end
			{4'bzzzz,MAP_LOAD,DELAY1}: begin
				if (i == sram_select_r) begin
					sram_addr_wait_r[i] = cnt[10:2];
					sram_data_wait_r[i] = i_in_data;
					sram_cen_wait_r [i] = ~i_in_valid;
					sram_wen_wait_r [i] = ~i_in_valid;
				end else begin
					sram_addr_wait_r[i] = 0;
					sram_data_wait_r[i] = 0;
					sram_cen_wait_r [i] = 1;
					sram_wen_wait_r [i] = 1;
				end
			end
			{4'bzzzz,4'bzzzz,DISPLAY}: begin
				if (i == sram_select_r) begin
					sram_addr_wait_r[i] = (z_r<<4) + (x_r>>2) + (y_r<<1);
					sram_data_wait_r[i] = 0;
					sram_cen_wait_r [i] = 0;
					sram_wen_wait_r [i] = 1;
				end else begin
					sram_addr_wait_r[i] = 0;
					sram_data_wait_r[i] = 0;
					sram_cen_wait_r [i] = 1;
					sram_wen_wait_r [i] = 1;
				end
			end
			{DISPLAY,4'bzzzz,DELAY3}: begin
				if (i == sram_select_r) begin
					sram_addr_wait_r[i] = (z_r<<4) + (x_r>>2) + (y_r<<1);
					sram_data_wait_r[i] = 0;
					sram_cen_wait_r [i] = 0;
					sram_wen_wait_r [i] = 1;
				end else begin
					sram_addr_wait_r[i] = 0;
					sram_data_wait_r[i] = 0;
					sram_cen_wait_r [i] = 1;
					sram_wen_wait_r [i] = 1;
				end
			end
			{4'bzzzz,4'bzzzz,CONV}: begin
				case(i)
					sram_select_forecase_1_r  : sram_addr_wait_r[i] = (z_r<<4) + (x_r>>2) + (y_m1_w<<1);
					sram_select_forecase_0_r : sram_addr_wait_r[i] = (z_r<<4) + (x_m1_w>>2) + (y_m1_w<<1);
					sram_select_forecase_2_r : sram_addr_wait_r[i] = (z_r<<4) + (x_p1_w>>2) + (y_m1_w<<1);
					sram_select_forecase_3_r : sram_addr_wait_r[i] = (z_r<<4) + (x_p2_w>>2) + (y_m1_w<<1);
					default        : sram_addr_wait_r[i] = 0;
				endcase
				if (i == (sram_select_forecase_1_r) || i == (sram_select_forecase_0_r) || i == (sram_select_forecase_2_r) || i == (sram_select_forecase_3_r) ) begin
					sram_data_wait_r[i] = 0;
					sram_cen_wait_r [i] = 0;
					sram_wen_wait_r [i] = 1;
				end else begin
					sram_addr_wait_r[i] = 0;
					sram_data_wait_r[i] = 0;
					sram_cen_wait_r [i] = 1;
					sram_wen_wait_r [i] = 1;
				end
			end
			
			default : begin
				sram_addr_wait_r[i] = 0;
				sram_data_wait_r[i] = 0;
				sram_cen_wait_r [i] = 1;
				sram_wen_wait_r [i] = 1;
			end
		endcase
	end
end
endgenerate

/* Output */
always @ (*) begin
	casez({pre_state[1],pre_state[0],curr_state,next_state})
		{4'bzzzz,DISPLAY,DISPLAY,4'bzzzz}: begin
			out_data_wait_r = {6'b0, sram_data_out_w[sram_select_delay_r[1][1:0]]};
			out_valid_wait_r = 1;
		end
		{DISPLAY,DISPLAY,DELAY3,4'bzzzz}: begin
			out_data_wait_r = {6'b0, sram_data_out_w[sram_select_delay_r[1][1:0]]};
			out_valid_wait_r = 1;
		end
		{DISPLAY,DELAY3,DELAY2,4'bzzzz}: begin
			out_data_wait_r = {6'b0, sram_data_out_w[sram_select_delay_r[1][1:0]]};
			out_valid_wait_r = 1;
		end
		default : begin
			out_data_wait_r = result_w;
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
				`OP_R_SHIFT     : next_state = SHIFT;
				`OP_L_SHIFT     : next_state = SHIFT;
				`OP_U_SHIFT     : next_state = SHIFT;
				`OP_D_SHIFT     : next_state = SHIFT;
				`OP_SCALE_DOWN  : next_state = SCALE;
				`OP_SCALE_UP    : next_state = SCALE;
				`OP_DISPLAY     : next_state = DISPLAY;
				`OP_CONV        : next_state = CONV;
				`OP_MED_FILTER  : next_state = MED;
				`OP_SOBEL_NMS   : next_state = SOBEL_NMS;
				default         : next_state = FETCH;
			endcase
		end
		MAP_LOAD   : next_state = map_load_done_w  ? DELAY1 : MAP_LOAD;
		SHIFT      : next_state = FETCH;
		SCALE      : next_state = FETCH;
		CONV       : next_state = conv_calc_done_r ? CONV_OUT : CONV;
		CONV_OUT   : next_state = out_valid_w     ? OUTPUT   : CONV_OUT;
		MED        : next_state = med_done_r       ? DELAY3   : MED;
		//MED_OUT    : next_state = out_valid_w      ? OUTPUT   : CONV_OUT;
		SOBEL_NMS  : next_state = sobel_nms_done_w ? DELAY1   : SOBEL_NMS;
		DISPLAY    : next_state = display_done_w   ? DELAY3   : DISPLAY;
		OUTPUT     : next_state = output_done_w    ? DELAY3   : OUTPUT;
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
	end
	else begin
		curr_state    <= next_state;
		pre_state[0]  <= curr_state;
		pre_state[1]  <= pre_state[0];
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n)
		cnt <= 0;
	else begin
		casez({curr_state, next_state})
			{DECODE, DISPLAY} : cnt <= cnt + 1;
			{DISPLAY, 4'bzzzz} : cnt <= cnt + 1;
			{DECODE, CONV} : cnt <= cnt + 4;
			{CONV, 4'bzzzz} : cnt <= cnt + 4;
			{DECODE, MED} : cnt <= cnt + 4;
			{MED, 4'bzzzz} : cnt <= cnt + 4;
			{MAP_LOAD, 4'bzzzz} : cnt <= i_in_valid ? cnt + 1 : cnt;
			default: cnt <= 0;
		endcase
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		output_cnt <= 0;
		cnt_next4_mod16_r <= 0;
	end
	else begin
		output_cnt <= curr_state == OUTPUT ? output_cnt + 1 : 0;
		cnt_next4_mod16_r <= next_state <= DECODE ? (cnt + 4)%16 : (cnt + 8)%16;
	end
end
always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n)
		op_mode_r <= 0;
	else
		op_mode_r <= i_op_valid? i_op_mode : op_mode_r;
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		x_origin_r <= 0;
		y_origin_r <= 0;
		depth_ready_r <= 6'b100000;
	end
	else begin
		x_origin_r <= x_origin_wait_r;
		y_origin_r <= y_origin_wait_r;
		depth_ready_r <= depth_wait_r;
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		sram_select_delay_r[0] <= 0;
		sram_select_delay_r[1] <= 0;
		sram_select1_delay_r[0] <= 0;
		sram_select1_delay_r[1] <= 0;
		sram_select2_delay_r[0] <= 0;
		sram_select2_delay_r[1] <= 0;
		sram_select3_delay_r[0] <= 0;
		sram_select3_delay_r[1] <= 0;
	end
	else begin
		sram_select_delay_r[0] <= op_mode_r == `OP_DISPLAY ? sram_select_r : sram_select_forecase_1_r;
		sram_select_delay_r[1] <= sram_select_delay_r[0];
		sram_select1_delay_r[0] <= sram_select_forecase_0_r;
		sram_select1_delay_r[1] <= sram_select1_delay_r[0];
		sram_select2_delay_r[0] <= sram_select_forecase_2_r;
		sram_select2_delay_r[1] <= sram_select2_delay_r[0];
		sram_select3_delay_r[0] <= sram_select_forecase_3_r;
		sram_select3_delay_r[1] <= sram_select3_delay_r[0];
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
		conv_isFirst_signal_r  <= 0;
		input_data_r            <= 0;
		med_isFirst_signal_r  <= 0;
	end
	else begin
		conv_isFirst_signal_r  <= conv_isFirst_signal_wait_r;
		med_isFirst_signal_r  <= med_isFirst_signal_wait_r;
		input_data_r			   <= input_data_wait_r;
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if (~i_rst_n) begin
		x_r <= 0;
		y_r <= 0;
		z_r <= 0;
	end
	else begin
		case(next_state)
			DISPLAY: begin
				x_r <= x_origin_r + (cnt_next_w)%2;
				y_r <= y_origin_r + (cnt_next_w%4 > 1);
				z_r <= cnt_next_w[6:2];
			end
			CONV: begin
				x_r <= x_origin_r;
				y_r <= y_origin_r + (cnt_next4_mod16_r>>2);
				z_r <= cnt_next4_w>>4;
			end
			MED: begin
				x_r <= x_origin_r;
				y_r <= y_origin_r + ((cnt_next4_w%16)>>2);
				z_r <= cnt_next4_w>>4;
			end
			default: begin
				x_r <= x_origin_r;
				y_r <= {1'b0,y_origin_r};
				z_r <= 0;
			end
		endcase
	end
end

generate
for(i = 0; i < SRAM_NO; i = i + 1) begin:SRAM_input_seq
	always @ (posedge i_clk or negedge i_rst_n) begin
		if (~i_rst_n) begin
			sram_addr_ready_r[i] <= 0;
			sram_data_ready_r[i] <= 0;
			sram_cen_ready_r [i] <= 1;
			sram_wen_ready_r [i] <= 0;
		end
		else begin
			sram_addr_ready_r[i] <= sram_addr_wait_r[i];
			sram_data_ready_r[i] <= sram_data_wait_r[i];
			sram_cen_ready_r [i] <= sram_cen_wait_r [i];
			sram_wen_ready_r [i] <= sram_wen_wait_r [i];
		end
	end
end
endgenerate
endmodule