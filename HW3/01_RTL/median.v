
module median (                       
	input         i_clk,
	input         i_rst_n,
	input  [31:0] i_data,
	input         i_isFirst,
	input         i_med_sobel,
	output        o_out_valid,
	output [10:0] o_out_data,
	output        o_done
);

// ---------------------------------------------------------------------------
// Wires and Registers
// ---------------------------------------------------------------------------
// ---- Add your own wires and registers here if needed ---- //
reg [7:0] med_e_r[15:0];
reg [7:0] med_e_delay_r[15:0];
reg [7:0] med_e_wait_r[15:0];

wire [7:0] out_data_w;
reg [16:0] out_data_wait_r;
reg [5:0]  cnt;
reg [2:0] cs, ns;

reg [7:0] data_a_r;
reg [7:0] data_b_r;
reg [7:0] data_c_r;
reg [7:0] data_d_r;
reg [7:0] data_e_r;
reg [7:0] data_f_r;
reg [7:0] data_g_r;
reg [7:0] data_h_r;
reg [7:0] data_i_r;

reg med_sobel_r;

reg      out_valid_r;

wire [10:0] sobel_data_w;
wire [10:0] sobel_out_data_w;
wire [1:0] angle_w;
reg [10:0] G[3:0];
reg [1:0]  angle[3:0];

localparam READ         = 3'd1;
localparam IDLE         = 3'd0;
localparam CALC         = 3'd2;
localparam OUTPUT       = 3'd4;
localparam OUTPUT_SOBEL = 3'd5;
genvar i;
// ---------------------------------------------------------------------------
// Continuous Assignment
// ---------------------------------------------------------------------------
// ---- Add your own wire data assignments here if needed ---- //
wire start_compare_w = cnt[1:0] == 1;
assign o_done = ~med_sobel_r ? cnt == 23 : cnt == 35;

assign o_out_valid = out_valid_r;
assign o_out_data  = out_valid_r ? (~med_sobel_r ? {6'b000000,out_data_w} : {3'b000,sobel_out_data_w}) : 0;

median_filter_submodule u_median_filter_submodule(
					.clk(i_clk),
					.rst(i_rst_n),
					.p1(data_a_r),
					.p2(data_b_r),
					.p3(data_c_r),
					.p4(data_d_r),
					.p5(data_e_r),
					.p6(data_f_r),
					.p7(data_g_r),
					.p8(data_h_r),
					.p9(data_i_r),
					.median(out_data_w)
								);
								
sobel_gradient u_sobel_gradient_submodule(
					.clk(i_clk),
					.rst(i_rst_n),
					.p1(data_a_r),
					.p2(data_b_r),
					.p3(data_c_r),
					.p4(data_d_r),
					.p5(data_e_r),
					.p6(data_f_r),
					.p7(data_g_r),
					.p8(data_h_r),
					.p9(data_i_r),
					.sobel_result(sobel_data_w),
					.angle(angle_w));

sober_compare u_sober_compare_submodule(
					.clk(i_clk),
					.rst(i_rst_n),
					.start(start_compare_w),
					.G1(G[0]),
					.G2(G[1]),
					.G3(G[2]),
					.G4(G[3]),
					.angle1(angle[0]),
					.angle2(angle[1]),
					.angle3(angle[2]),
					.angle4(angle[3]),
					.sobel_result(sobel_out_data_w)
					);
// ---------------------------------------------------------------------------
// Combinational Blocks
// ---------------------------------------------------------------------------
// ---- Write your conbinational block design here ---- //

always @ (*) begin
	case(cnt[1:0])
		{2'd0}    : begin
			data_a_r = med_e_delay_r[0] ;
			data_b_r = med_e_delay_r[1] ;
			data_c_r = med_e_delay_r[2] ;
			data_d_r = med_e_delay_r[4] ;
			data_e_r = med_e_delay_r[5] ;
			data_f_r = med_e_delay_r[6] ;
			data_g_r = med_e_delay_r[8] ;
			data_h_r = med_e_delay_r[9] ;
			data_i_r = med_e_delay_r[10];
		end
		{2'd1}     : begin
			data_a_r = med_e_delay_r[0  + 1];
			data_b_r = med_e_delay_r[1  + 1];
			data_c_r = med_e_delay_r[2  + 1];
			data_d_r = med_e_delay_r[4  + 1];
			data_e_r = med_e_delay_r[5  + 1];
			data_f_r = med_e_delay_r[6  + 1];
			data_g_r = med_e_delay_r[8  + 1];
			data_h_r = med_e_delay_r[9  + 1];
			data_i_r = med_e_delay_r[10 + 1]; 
		end
		{2'd2}    : begin
			data_a_r = med_e_delay_r[0  + 4];
			data_b_r = med_e_delay_r[1  + 4];
			data_c_r = med_e_delay_r[2  + 4];
			data_d_r = med_e_delay_r[4  + 4];
			data_e_r = med_e_delay_r[5  + 4];
			data_f_r = med_e_delay_r[6  + 4];
			data_g_r = med_e_delay_r[8  + 4];
			data_h_r = med_e_delay_r[9  + 4];
			data_i_r = med_e_delay_r[10 + 4]; 
		end
		default : begin
			data_a_r = med_e_delay_r[0  + 5];
			data_b_r = med_e_delay_r[1  + 5];
			data_c_r = med_e_delay_r[2  + 5];
			data_d_r = med_e_delay_r[4  + 5];
			data_e_r = med_e_delay_r[5  + 5];
			data_f_r = med_e_delay_r[6  + 5];
			data_g_r = med_e_delay_r[8  + 5];
			data_h_r = med_e_delay_r[9  + 5];
			data_i_r = med_e_delay_r[10 + 5]; 
		end
	endcase
end

generate
	for(i = 0; i < 16; i = i + 1) begin:conv_e_read
		always @(*) begin
			if(cnt[1:0] == i[3:2])// && cs <= CALC)
				med_e_wait_r[i] = i_data[{i[1:0],3'b000} + 7 -: 8];
			else
				med_e_wait_r[i] = med_e_r[i];
		end
	end
endgenerate

always @ (*) begin
	case(cs)
		IDLE    : ns = i_isFirst ? READ : IDLE;
		READ    : ns = cnt == 7  ? (med_sobel_r ? CALC : OUTPUT) : READ;
		CALC    : ns = cnt == 19 ?  OUTPUT_SOBEL : CALC;
		OUTPUT  : ns = cnt == 23 ? IDLE : OUTPUT;
		OUTPUT_SOBEL  : ns = cnt == 35 ? IDLE : OUTPUT_SOBEL;
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
		med_sobel_r <= 0;
		out_valid_r <= 0;
	end
	else begin
		med_sobel_r <= cs == IDLE ? i_med_sobel : med_sobel_r;
		out_valid_r <= ns[2] ? 1 : 0;
	end

end

generate
	for(i = 0; i < 4; i = i + 1) begin:conv_e_read_acc
		always @ (posedge i_clk or negedge i_rst_n) begin
			if(~i_rst_n) begin
				G[i] <= 0;
				angle[i] <= 0;
			end
			else begin
				if({~^cnt[1:0], ~cnt[0]} == i) begin
					G[i] <= sobel_data_w;
					angle[i] <= angle_w;
				end else begin
					G[i] <= G[i];
					angle[i] <= angle[i];
				end
			end
		end
	end
endgenerate

always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		cnt <= 0;
	end
	else if  (ns == IDLE) begin
		cnt <= 0;
	end
	else begin
		cnt <= cnt + 1;
	end

end

generate
for(i = 0; i < 16; i = i + 1) begin:conv_e_accum
	always @ (posedge i_clk or negedge i_rst_n) begin
		if (~i_rst_n) begin
			med_e_r[i] <= 0;
			med_e_delay_r[i] <= 0;
		end
		else begin
			med_e_r[i] <= med_e_wait_r[i];
			med_e_delay_r[i] <= cnt[1:0] == 3 ? med_e_wait_r[i] : med_e_delay_r[i];
		end
	end
end
endgenerate
endmodule
// ---------------------------------------------------------------------------
// median_filter_submodule Block
// ---------------------------------------------------------------------------
module median_filter_submodule(
    input   [7:0] p1, p2, p3, p4, p5, p6, p7, p8, p9,
	input   clk,
	input   rst,
    output wire [7:0] median
);

	// Internal wires to hold the sorted values
	wire [7:0] sorted [0:8];
	reg [7:0] p1_r;
	reg [7:0] p2_r;
	reg [7:0] p3_r;
	reg [7:0] p4_r;
	reg [7:0] p5_r;
	reg [7:0] p6_r;
	reg [7:0] p7_r;
	reg [7:0] p8_r;
	reg [7:0] p9_r;
	// sorted vertically
	reg [7:0] a1, a2, a3, a4, a5, a6, a7, a8, a9;
	reg [7:0] a1_r, a2_r, a3_r, a4_r, a5_r, a6_r, a7_r, a8_r, a9_r;
	wire a14_w;
	wire a17_w;
	wire a47_w;
	wire a25_w;
	wire a28_w;
	wire a58_w;
	wire a36_w;
	wire a39_w;
	wire a69_w;
	reg a14_r;
	reg a17_r;
	reg a47_r;
	reg a25_r;
	reg a28_r;
	reg a58_r;
	reg a36_r;
	reg a39_r;
	reg a69_r;
	assign a14_w = (p1 < p4);
	assign a17_w = (p1 < p7);
	assign a47_w = (p4 < p7);
	assign a25_w = (p2 < p5);
	assign a28_w = (p2 < p8);
	assign a58_w = (p5 < p8);
	assign a36_w = (p3 < p6);
	assign a39_w = (p3 < p9);
	assign a69_w = (p6 < p9);
	always @(posedge clk or negedge rst) begin
		if(~rst) begin
			p1_r  <= 0;
			p2_r  <= 0;
			p3_r  <= 0;
			p4_r  <= 0;
			p5_r  <= 0;
			p6_r  <= 0;
			p7_r  <= 0;
			p8_r  <= 0;
			p9_r  <= 0;
			a14_r <= 0;
			a17_r <= 0;
			a47_r <= 0;
			a25_r <= 0;
			a28_r <= 0;
			a58_r <= 0;
			a36_r <= 0;
			a39_r <= 0;
			a69_r <= 0;
		end
		else begin
			p1_r  <= p1;
			p2_r  <= p2;
			p3_r  <= p3;
			p4_r  <= p4;
			p5_r  <= p5;
			p6_r  <= p6;
			p7_r  <= p7;
			p8_r  <= p8;
			p9_r  <= p9;
			a14_r <= a14_w;
			a17_r <= a17_w;
			a47_r <= a47_w;
			a25_r <= a25_w;
			a28_r <= a28_w;
			a58_r <= a58_w;
			a36_r <= a36_w;
			a39_r <= a39_w;
			a69_r <= a69_w;
		end
	end
	
	always @(*) begin
		case({a14_r,a17_r,a47_r})
			3'b001: begin //3 1 2
				a1 = p1_r;
				a4 = p7_r;
				a7 = p4_r;
			end
			3'b011:  begin //2 1 3
				a1 = p7_r;
				a4 = p1_r;
				a7 = p4_r;
			end
			3'b100:  begin //2 3 1
				a1 = p4_r;
				a4 = p1_r;
				a7 = p7_r;
			end
			3'b110: begin //1 3 2
				a1 = p4_r;
				a4 = p7_r;
				a7 = p1_r;
			end
			3'b111: begin //1 2 3
				a1 = p7_r;
				a4 = p4_r;
				a7 = p1_r;
			end
			default: begin
				a1 = p1_r;
				a4 = p4_r;
				a7 = p7_r;
			end
		endcase
		
		case({a25_r,a28_r,a58_r})
			3'b001: begin //3 1 2
				a2 = p2_r;
				a5 = p8_r;
				a8 = p5_r;
			end
			3'b011:  begin //2 1 3
				a2 = p8_r;
				a5 = p2_r;
				a8 = p5_r;
			end
			3'b100:  begin //2 3 1
				a2 = p5_r;
				a5 = p2_r;
				a8 = p8_r;
			end
			3'b110: begin //1 3 2
				a2 = p5_r;
				a5 = p8_r;
				a8 = p2_r;
			end
			3'b111: begin //1 2 3
				a2 = p8_r;
				a5 = p5_r;
				a8 = p2_r;
			end
			default: begin
				a2 = p2_r;
				a5 = p5_r;
				a8 = p8_r;
			end
		endcase
		case({a36_r,a39_r,a69_r})
			3'b001: begin //3 1 2
				a3 = p3_r;
				a6 = p9_r;
				a9 = p6_r;
			end
			3'b011:  begin //2 1 3
				a3 = p9_r;
				a6 = p3_r;
				a9 = p6_r;
			end
			3'b100:  begin //2 3 1
				a3 = p6_r;
				a6 = p3_r;
				a9 = p9_r;
			end
			3'b110: begin //1 3 2
				a3 = p6_r;
				a6 = p9_r;
				a9 = p3_r;
			end
			3'b111: begin //1 2 3
				a3 = p9_r;
				a6 = p6_r;
				a9 = p3_r;
			end
			default: begin
				a3 = p3_r;
				a6 = p6_r;
				a9 = p9_r;
			end
		endcase
	end
	
	
	always @(posedge clk or negedge rst) begin
		if(~rst) begin
			a1_r <= 0;
			a2_r <= 0;
			a3_r <= 0;
			a4_r <= 0;
			a5_r <= 0;
			a6_r <= 0;
			a7_r <= 0;
			a8_r <= 0;
			a9_r <= 0;
			
		end
		else begin
			a1_r <= a1;
			a2_r <= a2;
			a3_r <= a3;
			a4_r <= a4;
			a5_r <= a5;
			a6_r <= a6;
			a7_r <= a7;
			a8_r <= a8;
			a9_r <= a9;
		end
	end
	
	// sorted vertically
	reg [7:0] b1, b5, b9;
	reg [7:0] b1_r, b5_r, b9_r;
	wire b13;
	wire b12;
	wire b23;
	wire b46;
	wire b45;
	wire b56;
	wire b78;
	wire b79;
	wire b89;
	
	
	assign b13 = (a1_r < a3_r);
	assign b12 = (a1_r < a2_r);
	assign b23 = (a2_r < a3_r);
	assign b46 = (a4_r < a6_r);
	assign b45 = (a4_r < a5_r);
	assign b56 = (a5_r < a6_r);
	assign b78 = (a7_r < a8_r);
	assign b79 = (a7_r < a9_r);
	assign b89 = (a8_r < a9_r);
	
	always @(*) begin
		casez({b12,b13,b23})
			//3'b000: begin //3 2 1
			//	b1 = a3_r;
			//end
			//3'b011: begin //3 1 2
			//	b1 = a2_r;
			//end
			3'b0z1: begin //3 1 2
				b1 = a2_r;
			end
			3'bz00:  begin //2 3 1
				b1 = a3_r;
			end
			default: begin
				b1 = a1_r;
			end
		endcase
		
		case({b45,b46,b56})
			3'b001: begin //3 1 2
				b5 = a6_r;
			end
			3'b011:  begin //2 1 3
				b5 = a4_r;
			end
			3'b100:  begin //2 3 1
				b5 = a4_r;
			end
			3'b110: begin //1 3 2
				b5 = a6_r;
			end
			default: begin
				b5 = a5_r;
			end
		endcase
		
		casez({b78,b79,b89})
			//3'b011:  begin //2 1 3
			//	b9 = a9_r;
			//end
			//3'b100:  begin //2 3 1
			//	b9 = a8_r;
			//end
			3'b1z0: begin //1 3 2
				b9 = a8_r;
			end
			3'bz11: begin //1 2 3
				b9 = a9_r;
			end
			default: begin
				b9 = a7_r;
			end
		endcase
	end
	always @(posedge clk or negedge rst) begin
		if(~rst) begin
			b1_r <= 0;
			b5_r <= 0;
			b9_r <= 0;
			
		end else begin
			b1_r <= b1;
			b5_r <= b5;
			b9_r <= b9;
			
		end
	end

	// sorted diagonally
	reg [7:0] c2;
	reg [7:0] c2_r;
	wire c13;
	wire c12;
	wire c23;
	
	assign c13 = (b1_r < b9_r);
	assign c12 = (b1_r < b5_r);
	assign c23 = (b5_r < b9_r);

	always @(*) begin
		case({c12,c13,c23})
			3'b001: begin //3 1 2
				c2 = b9_r;
			end
			3'b011:  begin //2 1 3
				c2 = b1_r;
			end
			3'b100:  begin //2 3 1
				c2 = b1_r;
			end
			3'b110: begin //1 3 2
				c2 = b9_r;
			end
			default: begin
				c2 = b5_r;
			end
		endcase
	end
	always @(posedge clk or negedge rst) begin
		if(~rst) begin
			c2_r <= 0;
		end else begin
			c2_r <= c2;
		end
		
	end

	assign median = c2_r;

endmodule

// ---------------------------------------------------------------------------
// median_filter_submodule Block
// ---------------------------------------------------------------------------
module sobel_gradient(
	input   clk,
    input   rst,
	input   [7:0] p1,
	input   [7:0] p2,
	input   [7:0] p3,
	input   [7:0] p4,
	input   [7:0] p5,
	input   [7:0] p6,
	input   [7:0] p7,
	input   [7:0] p8,
	input   [7:0] p9,
	output  [10:0] sobel_result,
	output  [1:0] angle
);	

localparam angle0   = 2'd0;
localparam angle45  = 2'd1;
localparam angle90  = 2'd2;
localparam angle135 = 2'd3;



reg          Gx_delay[3:0], Gy_delay[3:0];
wire  [18:0] Gy_extend;
reg [9:0] Gx_abs, Gy_abs, Gy_abs_delay[2:0];
reg [10:0] G_abs;
reg [10:0] sobel_result_r;
reg [1:0]  angle_r;
reg [1:0]  angle_wait_r;

assign sobel_result = sobel_result_r;
assign angle        = angle_r;

reg [7:0] p1_r;
reg [7:0] p2_r;
reg [7:0] p3_r;
reg [7:0] p4_r;
reg [7:0] p5_r;
reg [7:0] p6_r;
reg [7:0] p7_r;
reg [7:0] p8_r;
reg [7:0] p9_r;

always @(posedge clk or negedge rst) begin
	if(~rst) begin
		p1_r  <= 0;
		p2_r  <= 0;
		p3_r  <= 0;
		p4_r  <= 0;
		p5_r  <= 0;
		p6_r  <= 0;
		p7_r  <= 0;
		p8_r  <= 0;
		p9_r  <= 0;
	end
	else begin
		p1_r  <= p1;
		p2_r  <= p2;
		p3_r  <= p3;
		p4_r  <= p4;
		p5_r  <= p5;
		p6_r  <= p6;
		p7_r  <= p7;
		p8_r  <= p8;
		p9_r  <= p9;
	end
end

reg [7:0] p1_d_r;
reg [7:0] p9_d_r;

reg [9:0] Gx1, Gy1;
reg [9:0] Gx2, Gx3, Gy2;
always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		Gx1 <= 0;
		Gy1 <= 0;
		Gx2 <= 0;
		Gy2 <= 0;
		p1_d_r <= 0;
        p9_d_r <= 0;
	end else begin
		Gx1 <=  p7_r + {p4_r,1'b0};
		Gx2 <=  p3_r + {p6_r,1'b0};
		Gy1 <=  p3_r + {p2_r,1'b0};
		Gy2 <=  p7_r + {p8_r,1'b0};
		p1_d_r <= p1_r;
        p9_d_r <= p9_r;
	end
end

reg [9:0] Gx1_r, Gy1_r;
reg [9:0] Gx2_r, Gy2_r;


always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		Gx1_r <= 0;
		Gy1_r <= 0;
		Gx2_r <= 0;
		Gy2_r <= 0;

	end else begin
		Gx1_r <=  Gx1  + p1_d_r; // + {p8_r,1'b0}
		Gx2_r <=  Gx2  + p9_d_r; // + {p2_r,1'b0}
		Gy1_r <=  Gy1  + p1_d_r; // + {p6_r,1'b0}
		Gy2_r <=  Gy2  + p9_d_r; // + {p4_r,1'b0}
	end
end

wire signed [10:0] Gx_imm = Gx1_r - Gx2_r;
wire signed [10:0] Gy_imm = Gy1_r - Gy2_r;

reg signed [10:0] Gx_imm_r;
reg signed [10:0] Gy_imm_r;

always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		Gx_imm_r <= 0;
		Gy_imm_r <= 0;
	end else begin
		Gx_imm_r <=  Gx_imm;
		Gy_imm_r <=  Gy_imm;
	end
end


always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		Gy_abs <= 0;
		Gx_abs <= 0;
	end else begin
		Gy_abs <= Gy_imm_r[10] ? ~Gy_imm_r + 1 : Gy_imm_r[9:0];
		Gx_abs <= Gx_imm_r[10] ? ~Gx_imm_r + 1 : Gx_imm_r[9:0];
	end
end

reg [9:0] Gx_abs_delay;

always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		Gx_delay[0] <= 0;
		Gy_delay[0] <= 0;
		Gx_delay[1] <= 0;
		Gy_delay[1] <= 0;
		Gx_delay[2] <= 0;
		Gy_delay[2] <= 0;
		Gx_delay[3] <= 0;
		Gy_delay[3] <= 0;
		Gy_abs_delay[0] <= 0;
		Gy_abs_delay[1] <= 0;
		Gy_abs_delay[2] <= 0;
		Gx_abs_delay    <= 0;
	end else begin
		Gx_delay[0] <= Gx_imm_r[10];
		Gy_delay[0] <= Gy_imm_r[10];
		Gx_delay[1] <= Gx_delay[0];
		Gy_delay[1] <= Gy_delay[0];
		Gx_delay[2] <= Gx_delay[1];
		Gy_delay[2] <= Gy_delay[1];
		Gx_delay[3] <= Gx_delay[2];
		Gy_delay[3] <= Gy_delay[2];
		Gy_abs_delay[0] <= Gy_abs;
		Gy_abs_delay[1] <= Gy_abs_delay[0];
		Gy_abs_delay[2] <= Gy_abs_delay[1];
		Gx_abs_delay    <= Gx_abs;
	end
end

reg [10:0] G_abs_delay[1:0];

always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		G_abs <= 0;
		G_abs_delay[0] <= 0;
		G_abs_delay[1] <= 0;
	end else begin
		G_abs <= Gx_abs + Gy_abs;
		G_abs_delay[0] <= G_abs;
		G_abs_delay[1] <= G_abs_delay[0];
	end
end

reg  [17:0] Gx_acc1_r;
reg  [11:0] Gx_acc2_r;
reg  [12:0] Gx_acc3_r;
reg  [18:0] Gx_mult1_r,  Gx_mult2_r;


always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		Gx_acc1_r <= 0;
		Gx_acc2_r <= 0;
	end else begin
		Gx_acc1_r <= {Gx_abs,8'b00000000};
		Gx_acc2_r <= {Gx_abs,1'b0} +  Gx_abs;//;{Gx_abs,5'b00000} + {Gx_abs,4'b0000};
		Gx_acc3_r <= {Gx_abs,2'b00} + Gx_abs;
	end
end

reg  [17:0] Gx_acc1_1_r;
reg  [15:0] Gx_acc2_1_r;

 
always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		Gx_acc1_1_r <= 0;
		Gx_acc2_1_r <= 0;
	end else begin
		Gx_acc1_1_r <= Gx_acc1_r;
		Gx_acc2_1_r <= {Gx_acc2_r,4'b0000} +  Gx_acc3_r;//;{Gx_abs,5'b00000} + {Gx_abs,4'b0000};
	end
end


always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		Gx_mult1_r <= 0;
		Gx_mult2_r <= 0;
	end else begin
		Gx_mult1_r <= Gx_acc1_1_r + Gx_acc2_1_r ; //Gx_acc1_r + 
		Gx_mult2_r <= Gx_acc2_1_r;
	end
end



always @ (*) begin
	if ({2'b00,Gy_abs_delay[2],7'b0000000} >= Gx_mult1_r)
		angle_wait_r = angle90;
	else if ({2'b00,Gy_abs_delay[2],7'b0000000} < Gx_mult2_r)
		angle_wait_r = angle0;
	else
		angle_wait_r = (Gx_delay[3] ^ Gy_delay[3]) ? angle135 : angle45;
end

always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		angle_r <= 0;
		sobel_result_r <= 0;
	end else begin
		angle_r <= angle_wait_r;
		sobel_result_r <= G_abs_delay[1];
		
	end
end

endmodule
module sober_compare(
	input clk,
	input rst,
	input start,
	input  [10:0] G1,
	input  [10:0] G2,
	input  [10:0] G3,
	input  [10:0] G4,
	input  [1:0] angle1,
	input  [1:0] angle2,
	input  [1:0] angle3,
	input  [1:0] angle4,
	output [10:0] sobel_result
);
reg  [10:0] G1_r;
reg  [10:0] G2_r;
reg  [10:0] G3_r;
reg  [10:0] G4_r;

wire compare;
reg  [10:0] temp_a;
reg  [10:0] temp_b;
reg  [10:0] temp_a_r;
reg  [10:0] temp_b_r;
reg  [10:0] sobel_result_r;
reg  [10:0] sobel_result_wait_r;

reg  [1:0] angle1_r;
reg  [1:0] angle2_r;
reg  [1:0] angle3_r;
reg  [1:0] angle4_r;

reg [1:0] cnt;

assign sobel_result = sobel_result_r;
always @(posedge clk or negedge rst) begin
	if(~rst) begin
		G1_r <= 0;
		G2_r <= 0;
		G3_r <= 0;
		G4_r <= 0;
		angle1_r <= 0;
		angle2_r <= 0;
		angle3_r <= 0;
	    angle4_r <= 0;
		cnt <= 0;
	end else begin
		G1_r <= start ? G1 : G1_r;
	    G2_r <= start ? G2 : G2_r;
	    G3_r <= start ? G3 : G3_r;
	    G4_r <= start ? G4 : G4_r;
		angle1_r <= start ? angle1 : angle1_r;
		angle2_r <= start ? angle2 : angle2_r;
		angle3_r <= start ? angle3 : angle3_r;
	    angle4_r <= start ? angle4 : angle4_r;
		
		cnt <= start ? 0 : cnt + 1;
	end
end

assign compare = temp_a_r < temp_b_r;
always @(*) begin
	case(cnt)
		2'd0 : begin 
			temp_a = G1_r;
			case(angle1_r)
				2'd0    : temp_b = G2_r;
				2'd1    : temp_b = G4_r;
				2'd2    : temp_b = G3_r;
				default : temp_b = 0;
			endcase
		end
		2'd1 : begin 
			temp_a = G2_r;
			case(angle2_r)
				2'd0    : temp_b = G1_r;
				2'd3    : temp_b = G3_r;
				2'd2    : temp_b = G4_r;
				default : temp_b = 0;
			endcase
		end
		2'd2 : begin 
			temp_a = G3_r;
			case(angle3_r)
				2'd0    : temp_b = G4_r;
				2'd3    : temp_b = G2_r;
				2'd2    : temp_b = G1_r;
				default : temp_b = 0;
			endcase
		end
		default : begin 
			temp_a = G4_r;
			case(angle4_r)
				2'd0    : temp_b = G3_r;
				2'd1    : temp_b = G1_r;
				2'd2    : temp_b = G2_r;
				default : temp_b = 0;
			endcase
		end
	endcase
end
	
always @(posedge clk or negedge rst) begin
	if(~rst) begin
		sobel_result_r <= 0;
		temp_a_r <= 0;
		temp_b_r <= 0;
	end else begin
		sobel_result_r <= compare ? 0 : temp_a_r;
		temp_a_r <= temp_a;
		temp_b_r <= temp_b;
	end
end
endmodule