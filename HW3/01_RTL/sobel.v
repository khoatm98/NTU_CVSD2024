
module sobel_nms (                       
	input         i_clk,
	input         i_rst_n,
	input  [31:0] i_data,
	input         i_isFirst,
	output        o_out_valid,
	output [13:0] o_out_data
);

// ---------------------------------------------------------------------------
// Wires and Registers
// ---------------------------------------------------------------------------
// ---- Add your own wires and registers here if needed ---- //
reg [7:0] sobel_e_r[15:0];
reg [7:0] sobel_e_delay_r[15:0];
reg [7:0] sobel_e_wait_r[15:0];

wire [7:0] out_data_w;
reg [16:0] out_data_wait_r;
reg [7:0]  cnt;
reg [2:0] out_cnt;
reg [1:0] cs, ns;

reg [7:0] data_a_r;
reg [7:0] data_b_r;
reg [7:0] data_c_r;
reg [7:0] data_d_r;
reg [7:0] data_e_r;
reg [7:0] data_f_r;
reg [7:0] data_g_r;
reg [7:0] data_h_r;
reg [7:0] data_i_r;
reg [1:0] index_r;


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

assign out_valid_w = cs >= CALC;
assign o_out_valid = 0;
assign o_out_data  = 0;
sobel_submodule u_sobelian_filter_submodule(
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
					.ind(index_r),
					.sobel_result(sobel_result)
								);
// ---------------------------------------------------------------------------
// Combinational Blocks
// ---------------------------------------------------------------------------
// ---- Write your conbinational block design here ---- //

always @ (*) begin
	case(cnt[1:0])
		{2'd0}    : begin
			data_a_r = sobel_e_r[0] ;
			data_b_r = sobel_e_r[1] ;
			data_c_r = sobel_e_r[2] ;
			data_d_r = sobel_e_r[4] ;
			data_e_r = sobel_e_r[5] ;
			data_f_r = sobel_e_r[6] ;
			data_g_r = sobel_e_r[8] ;
			data_h_r = sobel_e_r[9] ;
			data_i_r = sobel_e_r[10];
			index_r  = cnt[1:0];
		end
		{2'd1}     : begin
			data_a_r = sobel_e_delay_r[0  + 1];
			data_b_r = sobel_e_delay_r[1  + 1];
			data_c_r = sobel_e_delay_r[2  + 1];
			data_d_r = sobel_e_delay_r[4  + 1];
			data_e_r = sobel_e_delay_r[5  + 1];
			data_f_r = sobel_e_delay_r[6  + 1];
			data_g_r = sobel_e_delay_r[8  + 1];
			data_h_r = sobel_e_delay_r[9  + 1];
			data_i_r = sobel_e_delay_r[10 + 1]; 
			index_r  = cnt[1:0];
		end
		{2'd2}    : begin
			data_a_r = sobel_e_delay_r[0  + 4];
			data_b_r = sobel_e_delay_r[1  + 4];
			data_c_r = sobel_e_delay_r[2  + 4];
			data_d_r = sobel_e_delay_r[4  + 4];
			data_e_r = sobel_e_delay_r[5  + 4];
			data_f_r = sobel_e_delay_r[6  + 4];
			data_g_r = sobel_e_delay_r[8  + 4];
			data_h_r = sobel_e_delay_r[9  + 4];
			data_i_r = sobel_e_delay_r[10 + 4]; 
			index_r  = cnt[1:0];
		end
		{2'd3}    : begin
			data_a_r = sobel_e_delay_r[0  + 5];
			data_b_r = sobel_e_delay_r[1  + 5];
			data_c_r = sobel_e_delay_r[2  + 5];
			data_d_r = sobel_e_delay_r[4  + 5];
			data_e_r = sobel_e_delay_r[5  + 5];
			data_f_r = sobel_e_delay_r[6  + 5];
			data_g_r = sobel_e_delay_r[8  + 5];
			data_h_r = sobel_e_delay_r[9  + 5];
			data_i_r = sobel_e_delay_r[10 + 5]; 
			index_r  = cnt[1:0];
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
			index_r  = cnt[1:0];
		end
	endcase
end

generate
	for(i = 0; i < 16; i = i + 1) begin:conv_e_read
		always @(*) begin
			if(cnt[1:0] == i[3:2] && cs <= CALC)
				sobel_e_wait_r[i] = i_data[{i[1:0],3'b000} + 7 -: 8];
			else
				sobel_e_wait_r[i] = sobel_e_r[i];
		end
	end
endgenerate

always @ (*) begin
	case(cs)
		IDLE    : ns = i_isFirst ? READ : IDLE;
		READ    : ns = cnt == 4  ?  CALC : READ;
		CALC    : ns = cnt == 16 ?  OUTPUT : CALC;
		OUTPUT  : ns = cnt == 20 ? IDLE : OUTPUT;
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

always @ (posedge i_clk or negedge i_rst_n) begin
	if(~i_rst_n) begin
		out_cnt <= 0;
	end
	else begin
		out_cnt <= cs == OUTPUT ? out_cnt + 1 : 0;
	end

end

generate
for(i = 0; i < 16; i = i + 1) begin:conv_e_accum
	always @ (posedge i_clk or negedge i_rst_n) begin
		if (~i_rst_n) begin
			sobel_e_r[i] <= 0;
			sobel_e_delay_r[i] <= 0;
		end
		else begin
			sobel_e_r[i] <= sobel_e_wait_r[i];
			sobel_e_delay_r[i] <= cnt %4 == 0? sobel_e_r[i] : sobel_e_delay_r[i];
		end
	end
end
endgenerate
endmodule

module sobel_submodule(
    input   [7:0] p1, p2, p3, p4, p5, p6, p7, p8, p9,
	input   clk,
	input   rst,
	input   [1:0] ind,
    output wire [7:0] sobel_result
);
	localparam angle0   = 2'd0;
	localparam angle45  = 2'd1;
	localparam angle90  = 2'd2;
	localparam angle135 = 2'd3;
	// Internal wires to hold the sorted values
	reg [7:0] p1_r;
	reg [7:0] p2_r;
	reg [7:0] p3_r;
	reg [7:0] p4_r;
	reg [7:0] p5_r;
	reg [7:0] p6_r;
	reg [7:0] p7_r;
	reg [7:0] p8_r;
	reg [7:0] p9_r;
	reg	[1:0] ind_r;
	//Stage 1
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
			ind_r <= 0;
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
			ind_r <= ind;
		end
	end
	reg signed [10:0] Gx;
	reg signed [10:0] Gy;
	//Stage 2
	always @(posedge clk or negedge rst) begin
		if(~rst) begin
			Gx  <= 0;
			Gy  <= 0;
		end
		else begin
			Gx  <= - p1_r - {p4_r,1'b0} - p7_r   + p3_r + {p6_r,1'b0} + p9_r;
			Gy  <= - p1_r - {p2_r,1'b0} - p3_r   + p7_r + {p8_r,1'b0} + p9_r;
		end
	end
	
	reg [10:0] G;
	reg [1:0] angle;
	wire [10:0] Gx_abs;
	wire [10:0] Gy_abs;
	
	assign Gx_abs = Gx[10] ? ~Gx + 1 : Gx;
	assign Gy_abs = Gy[10] ? ~Gy + 1 : Gy;
	//Stage 3
	always @(posedge clk or negedge rst) begin
		if(~rst) begin
			G  <= 0;
		end
		else begin
			G  <= Gx_abs + Gy_abs;
		end
	end
	
	always @(posedge clk or negedge rst) begin
		if(~rst) begin
			angle <= 0;
		end
		else begin
			if (Gx[10] != Gy[10]) begin
				
			end
			else begin
			
			end
			
			
		end
	end
	assign sobel_result = 0;

endmodule