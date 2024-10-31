module sobel (                       
	input         i_clk,
	input         i_rst_n,
	input  [31:0] i_data,
	input         i_isFirst,
	output        o_out_valid,
	output [13:0] o_out_data,
	output        o_done
);

// ---------------------------------------------------------------------------
// Wires and Registers
// ---------------------------------------------------------------------------
// ---- Add your own wires and registers here if needed ---- //
localparam angle0   = 2'd0;
localparam angle45  = 2'd1;
localparam angle90  = 2'd2;
localparam angle135 = 2'd3;


reg [7:0] med_e_r[15:0];
reg [7:0] med_e_delay_r[15:0];
reg [7:0] med_e_wait_r[15:0];

wire [10:0] sobel_data_w;
wire [10:0] out_data_w;
wire [1:0] angle_w;
wire        start_compare_w;
reg  [16:0] out_data_wait_r;
reg  [7:0]  cnt;
reg  [1:0] cs, ns;

reg [7:0] data_a_r;
reg [7:0] data_b_r;
reg [7:0] data_c_r;
reg [7:0] data_d_r;
reg [7:0] data_e_r;
reg [7:0] data_f_r;
reg [7:0] data_g_r;
reg [7:0] data_h_r;
reg [7:0] data_i_r;

reg [10:0] G[3:0];
reg [1:0]  angle[3:0];

wire      out_valid_w;

localparam READ   = 2'd1;
localparam IDLE   = 2'd0;
localparam CALC   = 2'd2;
localparam OUTPUT = 2'd3;

genvar i;
// ---------------------------------------------------------------------------
// Continuous Assignment
// ---------------------------------------------------------------------------
// ---- Add your own wire data assignments here if needed ---- //
assign o_done = cnt == 30;
assign out_valid_w = cs == OUTPUT;
assign o_out_valid = out_valid_w;
assign o_out_data  = out_valid_w ? {3'b000,out_data_w} : 0;
assign start_compare_w = cnt[1:0] == 3;
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
					.sobel_result(out_data_w)
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

generate
	for(i = 0; i < 4; i = i + 1) begin:conv_e_read_acc
		always @ (posedge i_clk or negedge i_rst_n) begin
			if(~i_rst_n) begin
				G[i] <= 0;
				angle[i] <= 0;
			end
			else begin
				if(cnt[1:0] == i) begin
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

always @ (*) begin
	case(cs)
		IDLE    : ns = i_isFirst ? READ : IDLE;
		READ    : ns = cnt == 7  ?  CALC : READ;
		CALC    : ns = cnt == 14 ?  OUTPUT : CALC;
		OUTPUT  : ns = cnt == 30 ? IDLE : OUTPUT;
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
/* 
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

reg [9:0] Gx1, Gy1;
reg [9:0] Gx2, Gx3, Gy2;

reg signed [10:0] Gx_delay[1:0], Gy_delay[1:0];
wire  [18:0] Gy_extend;
reg [9:0] Gx_abs, Gy_abs, Gy_abs_delay;
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

always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		Gx1 <= 0;
		Gy1 <= 0;
		Gx2 <= 0;
		Gy2 <= 0;

	end else begin
		Gx1 <=  p1 + {p4,1'b0} + p7;
		Gx2 <=  p3 + {p6,1'b0} + p9;
				  
		Gy1 <=  p1 + {p2,1'b0} + p3;
		Gy2 <=  p7 + {p8,1'b0} + p9;
	end
end

wire signed [10:0] Gx_imm = Gx1 - Gx2;
wire signed [10:0] Gy_imm = Gy1 - Gy2;

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

always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		Gx_delay[0] <= 0;
		Gy_delay[0] <= 0;
		Gx_delay[1] <= 0;
		Gy_delay[1] <= 0;
		Gy_abs_delay <= 0;
	end else begin
		Gx_delay[0] <= Gx_imm_r;
		Gy_delay[0] <= Gy_imm_r;
		Gx_delay[1] <= Gx_delay[0];
		Gy_delay[1] <= Gy_delay[0];
		Gy_abs_delay <= Gy_abs;
	end
end

always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		G_abs <= 0;
	end else begin
		G_abs <= Gx_abs + Gy_abs;
	end
end

reg  [18:0] Gx_mult1_r,  Gx_mult2_r;
wire [17:0] temp_Gx_mult1 = {Gx_abs,8'b00000000};
wire [14:0] temp_Gx_mult2 = Gx_abs*63;
wire [14:0] temp_Gx_mult3 = Gx_abs*13;
always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		Gx_mult1_r <= 0;
		Gx_mult2_r <= 0;
	end else begin
		Gx_mult1_r <= Gx_abs*309;
		Gx_mult2_r <= Gx_abs*53;
	end
end



always @ (*) begin
	if ({2'b00,Gy_abs_delay,7'b0000000} >= Gx_mult1_r)
		angle_wait_r = angle90;
	else if ({2'b00,Gy_abs_delay,7'b0000000} < Gx_mult2_r)
		angle_wait_r = angle0;
	else
		angle_wait_r = (Gx_delay[1][10] ^ Gy_delay[1][10]) ? angle135 : angle45;
end

always @ (posedge clk or negedge rst) begin
	if(~rst) begin
		angle_r <= 0;
		sobel_result_r <= 0;
	end else begin
		angle_r <= angle_wait_r;
		sobel_result_r <= G_abs;
		
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
endmodule */