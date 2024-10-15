
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
reg [12:0] conv_e_r[15:0];
reg [12:0] conv_e_wait_r[15:0];

wire [13:0] out_data_w;
reg [16:0] out_data_wait_r;
reg [31:0] data_r;
reg        i_isFirst_r;
reg        i_input_done_r;
reg [1:0]  cnt;
reg [3:0] out_cnt;
reg [1:0] cs, ns;

reg [12:0] data_a_r;
reg [12:0] data_b_r;
reg [12:0] data_c_r;
reg [12:0] data_d_r;
reg [12:0] data_e_r;
reg [12:0] data_f_r;
reg [12:0] data_g_r;
reg [12:0] data_h_r;
reg [12:0] data_i_r;

localparam READ   = 2'd1;
localparam IDLE   = 2'd0;
localparam CALC   = 2'd2;
localparam OUTPUT = 2'd3;

genvar i;
// ---------------------------------------------------------------------------
// Continuous Assignment
// ---------------------------------------------------------------------------
// ---- Add your own wire data assignments here if needed ---- //

assign o_out_valid = cs == OUTPUT;
assign o_out_data  = out_data_w;
small_alu_add u_alu(
					.i_clk(i_clk),
					.i_rst_n(i_rst_n),
					.i_data_a(data_a_r),
					.i_data_b(data_b_r),
					.i_data_c(data_c_r),
					.i_data_d(data_d_r),
					.i_data_e(data_e_r),
					.i_data_f(data_f_r),
					.i_data_g(data_g_r),
					.i_data_h(data_h_r),
					.i_data_i(data_i_r),
					.o_out_data(out_data_w)
								);
// ---------------------------------------------------------------------------
// Combinational Blocks
// ---------------------------------------------------------------------------
// ---- Write your conbinational block design here ---- //

always @ (*) begin
	case({cs , out_cnt})
		{CALC, 4'd0}    : begin
			data_a_r = conv_e_r[0] ;
			data_b_r = conv_e_r[1] ;
			data_c_r = conv_e_r[2] ;
			data_d_r = conv_e_r[4] ;
			data_e_r = conv_e_r[5] ;
			data_f_r = conv_e_r[6] ;
			data_g_r = conv_e_r[8] ;
			data_h_r = conv_e_r[9] ;
			data_i_r = conv_e_r[10];
		end
		{CALC, 4'd1}       : begin
			data_a_r = conv_e_r[0  + 1];
			data_b_r = conv_e_r[1  + 1];
			data_c_r = conv_e_r[2  + 1];
			data_d_r = conv_e_r[4  + 1];
			data_e_r = conv_e_r[5  + 1];
			data_f_r = conv_e_r[6  + 1];
			data_g_r = conv_e_r[8  + 1];
			data_h_r = conv_e_r[9  + 1];
			data_i_r = conv_e_r[10 + 1]; 
		end
		{CALC, 4'd2}      : begin
			data_a_r = conv_e_r[0  + 4];
			data_b_r = conv_e_r[1  + 4];
			data_c_r = conv_e_r[2  + 4];
			data_d_r = conv_e_r[4  + 4];
			data_e_r = conv_e_r[5  + 4];
			data_f_r = conv_e_r[6  + 4];
			data_g_r = conv_e_r[8  + 4];
			data_h_r = conv_e_r[9  + 4];
			data_i_r = conv_e_r[10 + 4]; 
		end
		{CALC, 4'd3}     : begin
			data_a_r = conv_e_r[0  + 5];
			data_b_r = conv_e_r[1  + 5];
			data_c_r = conv_e_r[2  + 5];
			data_d_r = conv_e_r[4  + 5];
			data_e_r = conv_e_r[5  + 5];
			data_f_r = conv_e_r[6  + 5];
			data_g_r = conv_e_r[8  + 5];
			data_h_r = conv_e_r[9  + 5];
			data_i_r = conv_e_r[10 + 5]; 
		end
		default : begin
			data_a_r = 0;
			data_b_r = 0;
			data_c_r = 0;
			data_d_r = 0;
			data_e_r = 0;
			data_f_r = 0;
			data_g_r = 0;
			data_h_r = 0;
			data_i_r = 0;
		end
	endcase
end

generate
	for(i = 0; i < 16; i = i + 1) begin:conv_e_read
		always @(*) begin
			if(cnt == i[3:2] )
				conv_e_wait_r[i] = conv_e_r[i] + {5'b00000, data_r[{i[1:0],3'b000} + 7 -: 8]};
			else
				conv_e_wait_r[i] = conv_e_r[i];
		end
	end
endgenerate

always @ (*) begin
	case(cs)
		IDLE    : ns = i_isFirst_r ? READ : IDLE;
		READ    : ns = i_input_done_r ? CALC : READ;
		CALC    : ns = out_cnt == 5   ? OUTPUT : CALC;
		OUTPUT  : ns = out_cnt == 9   ? IDLE : OUTPUT;
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
	else if  (ns == READ) begin
		cnt <= cnt == 3 ? 0 : cnt + 1;
	end
	else begin
		cnt <= 0;
	end

end

always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		out_cnt <= 0;
		i_isFirst_r <= 0;
		data_r <= 0;
		i_input_done_r <= 0;
	end
	else begin
		out_cnt <= cs >= CALC ? out_cnt + 1 : 0;
		i_isFirst_r <= i_isFirst;
		i_input_done_r <= ns == CALC ? i_input_done_r : i_input_done ;
		data_r <= i_input_done_r ? 0 : i_data;
	end

end

generate
for(i = 0; i < 16; i = i + 1) begin:conv_e_accum
	always @ (posedge i_clk or negedge i_rst_n) begin
		if (~i_rst_n) begin
			conv_e_r[i] <= 0;
		end
		else begin
			conv_e_r[i] <=  (ns >= READ) ? conv_e_wait_r[i] : 0;
		end
	end
end
endgenerate
endmodule

module small_alu_add (                       
	input         i_clk,
	input         i_rst_n,
	input  [12:0] i_data_a,
	input  [12:0] i_data_b,
	input  [12:0] i_data_c,
	input  [12:0] i_data_d,
	input  [12:0] i_data_e,
	input  [12:0] i_data_f,
	input  [12:0] i_data_g,
	input  [12:0] i_data_h,
	input  [12:0] i_data_i,
	output [13:0] o_out_data
);
reg [13:0]   out_data_ready_r;
reg  [12:0] i_data_a_r;
reg  [12:0] i_data_b_r;
reg  [12:0] i_data_c_r;
reg  [12:0] i_data_d_r;
reg  [12:0] i_data_e_r;
reg  [12:0] i_data_f_r;
reg  [12:0] i_data_g_r;
reg  [12:0] i_data_h_r;
reg  [12:0] i_data_i_r;
// pipeline stage 1
reg [13:0]   out_data_s1_0_wait_r;
reg [13:0]   out_data_s2_0_wait_r;
reg [13:0]   out_data_s3_0_wait_r;
reg [13:0]   out_data_s4_0_wait_r;
reg [12:0]   out_data_s5_0_wait_r;
reg [13:0]   out_data_s1_0_ready_r;
reg [13:0]   out_data_s2_0_ready_r;
reg [13:0]   out_data_s3_0_ready_r;
reg [13:0]   out_data_s4_0_ready_r;
reg [12:0]   out_data_s5_0_ready_r;


// pipeline stage 2
reg [14:0]   out_data_s1_1_wait_r;
reg [14:0]   out_data_s2_1_wait_r;
reg [12:0]   out_data_s3_1_wait_r;
reg [14:0]   out_data_s1_1_ready_r;
reg [14:0]   out_data_s2_1_ready_r;
reg [12:0]   out_data_s3_1_ready_r;

// pipeline stage 3
reg [16:0]   out_data_s1_2_wait_r;
reg [12:0]   out_data_s2_2_wait_r;
reg [16:0]   out_data_s1_2_ready_r;
reg [12:0]   out_data_s2_2_ready_r;

// pipeline stage 4
reg [14:0]   out_data_s1_3_wait_r;
reg [14:0]   out_data_s1_3_ready_r;

wire [13:0]  out_data_wait_sat_w;
reg  [13:0]  out_data_ready_sat_r;
always @(*) begin
	// pipeline stage 1
	out_data_s1_0_wait_r = (i_data_d_r)    + (i_data_b_r);
	out_data_s2_0_wait_r = (i_data_h_r)    + (i_data_f_r);
	out_data_s3_0_wait_r = i_data_a_r         + i_data_c_r     ;
	out_data_s4_0_wait_r = i_data_g_r         + i_data_i_r     ;
	out_data_s5_0_wait_r = (i_data_e_r);
	// pipeline stage 2
	out_data_s1_1_wait_r = out_data_s1_0_ready_r + out_data_s2_0_ready_r;
	out_data_s2_1_wait_r = out_data_s3_0_ready_r + out_data_s4_0_ready_r;
	out_data_s3_1_wait_r = out_data_s5_0_ready_r;
	// pipeline stage 3
	out_data_s1_2_wait_r = {out_data_s1_1_ready_r,1'b0} + out_data_s2_1_ready_r;
	out_data_s2_2_wait_r = out_data_s3_1_ready_r;
	// pipeline stage 4
	out_data_s1_3_wait_r = out_data_s1_2_ready_r[16:2] + out_data_s2_2_ready_r;
	
end
assign out_data_wait_sat_w = out_data_s1_3_ready_r[14:2] + out_data_s1_3_ready_r[1];
always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		out_data_s1_0_ready_r <= 0;
		out_data_s2_0_ready_r <= 0;
		out_data_s3_0_ready_r <= 0;
		out_data_s4_0_ready_r <= 0;
		out_data_s5_0_ready_r <= 0;
		out_data_s1_1_ready_r <= 0;
		out_data_s2_1_ready_r <= 0;
		out_data_s3_1_ready_r <= 0;
		out_data_s1_2_ready_r <= 0;
		out_data_s2_2_ready_r <= 0;
		out_data_s1_3_ready_r <= 0;
		out_data_ready_sat_r  <= 0;
		
		i_data_a_r <= 0;
		i_data_b_r <= 0;
		i_data_c_r <= 0;
		i_data_d_r <= 0;
		i_data_e_r <= 0;
		i_data_f_r <= 0;
		i_data_g_r <= 0;
		i_data_h_r <= 0;
		i_data_i_r <= 0;
	end
	else begin
	
		i_data_a_r <= i_data_a;
		i_data_b_r <= i_data_b;
		i_data_c_r <= i_data_c;
		i_data_d_r <= i_data_d;
		i_data_e_r <= i_data_e;
		i_data_f_r <= i_data_f;
		i_data_g_r <= i_data_g;
		i_data_h_r <= i_data_h;
		i_data_i_r <= i_data_i;
		
		out_data_s1_0_ready_r <= {out_data_s1_0_wait_r};
		out_data_s2_0_ready_r <= {out_data_s2_0_wait_r};
		out_data_s3_0_ready_r <= out_data_s3_0_wait_r;
		out_data_s4_0_ready_r <= out_data_s4_0_wait_r;
		out_data_s5_0_ready_r <= {out_data_s5_0_wait_r};
		
		out_data_s1_1_ready_r <= out_data_s1_1_wait_r;
		out_data_s2_1_ready_r <= out_data_s2_1_wait_r;
		out_data_s3_1_ready_r <= out_data_s3_1_wait_r;

		out_data_s1_2_ready_r <= out_data_s1_2_wait_r;
		out_data_s2_2_ready_r <= out_data_s2_2_wait_r;
		
		out_data_s1_3_ready_r <= out_data_s1_3_wait_r;
		
		out_data_ready_sat_r  <= out_data_wait_sat_w;
	end
end

assign o_out_data = out_data_ready_sat_r;
endmodule