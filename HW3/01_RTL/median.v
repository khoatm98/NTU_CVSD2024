
module median (                       
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
reg [7:0] med_e_r[15:0];
reg [7:0] med_e_wait_r[15:0];

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

assign out_valid_w = cs == OUTPUT;
assign o_out_valid = out_valid_w;
assign o_out_data  = {6'b000000,out_data_w};
/* median_filter_submodule u_median_filter_submodule(
					.clk(i_clk),
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
								); */
// ---------------------------------------------------------------------------
// Combinational Blocks
// ---------------------------------------------------------------------------
// ---- Write your conbinational block design here ---- //

always @ (*) begin
	case({cs,out_cnt})
		{CALC,3'd0}    : begin
			data_a_r = med_e_r[0] ;
			data_b_r = med_e_r[1] ;
			data_c_r = med_e_r[2] ;
			data_d_r = med_e_r[4] ;
			data_e_r = med_e_r[5] ;
			data_f_r = med_e_r[6] ;
			data_g_r = med_e_r[8] ;
			data_h_r = med_e_r[9] ;
			data_i_r = med_e_r[10];
		end
		{OUTPUT,3'd0}     : begin
			data_a_r = med_e_r[0  + 1];
			data_b_r = med_e_r[1  + 1];
			data_c_r = med_e_r[2  + 1];
			data_d_r = med_e_r[4  + 1];
			data_e_r = med_e_r[5  + 1];
			data_f_r = med_e_r[6  + 1];
			data_g_r = med_e_r[8  + 1];
			data_h_r = med_e_r[9  + 1];
			data_i_r = med_e_r[10 + 1]; 
		end
		{OUTPUT,3'd1}    : begin
			data_a_r = med_e_r[0  + 4];
			data_b_r = med_e_r[1  + 4];
			data_c_r = med_e_r[2  + 4];
			data_d_r = med_e_r[4  + 4];
			data_e_r = med_e_r[5  + 4];
			data_f_r = med_e_r[6  + 4];
			data_g_r = med_e_r[8  + 4];
			data_h_r = med_e_r[9  + 4];
			data_i_r = med_e_r[10 + 4]; 
		end
		{OUTPUT,3'd2}    : begin
			data_a_r = med_e_r[0  + 5];
			data_b_r = med_e_r[1  + 5];
			data_c_r = med_e_r[2  + 5];
			data_d_r = med_e_r[4  + 5];
			data_e_r = med_e_r[5  + 5];
			data_f_r = med_e_r[6  + 5];
			data_g_r = med_e_r[8  + 5];
			data_h_r = med_e_r[9  + 5];
			data_i_r = med_e_r[10 + 5]; 
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
			if(cnt == i/4)
				med_e_wait_r[i] = i_data[{i[1:0],3'b000} + 7 -: 8];
			else
				med_e_wait_r[i] = med_e_r[i];
		end
	end
endgenerate

always @ (*) begin
	case(cs)
		IDLE    : ns = i_isFirst ? READ : IDLE;
		READ    : ns = cnt == 3 ?  CALC : READ;
		CALC    : ns = OUTPUT;
		OUTPUT  : ns = out_cnt == 3   ? IDLE : OUTPUT;
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
			med_e_r[i] <= 0;
		end
		else begin
			med_e_r[i] <= med_e_wait_r[i];
		end
	end
end
endgenerate
endmodule

module median_filter_submodule(
    input   [7:0] p1, p2, p3, p4, p5, p6, p7, p8, p9,
	input   clk,
    output wire [7:0] median
);

	// Internal wires to hold the sorted values
	wire [7:0] sorted [0:8];

	// sorted vertically
	reg [7:0] a1, a2, a3, a4, a5, a6, a7, a8, a9;
	wire a14;
	wire a17;
	wire a47;
	wire a25;
	wire a28;
	wire a58;
	wire a36;
	wire a39;
	wire a68;
	
	
	assign a14 = (p1 < p4);
	assign a17 = (p1 < p7);
	assign a47 = (p4 < p7);
	assign a25 = (p2 < p5);
	assign a28 = (p2 < p8);
	assign a58 = (p5 < p8);
	assign a36 = (p3 < p6);
	assign a39 = (p3 < p9);
	assign a69 = (p6 < p9);
	
	always @(posedge clk) begin
		case({a14,a17,a47})
			3'b000: begin //3 2 1
				a1 <= p1;
				a4 <= p4;
				a7 <= p7;
			end
			3'b001: begin //3 1 2
				a1 <= p1;
				a4 <= p7;
				a7 <= p4;
			end
			3'b011:  begin //2 1 3
				a1 <= p7;
				a4 <= p1;
				a7 <= p4;
			end
			3'b100:  begin //2 3 1
				a1 <= p4;
				a4 <= p1;
				a7 <= p7;
			end
			3'b110: begin //1 3 2
				a1 <= p4;
				a4 <= p7;
				a7 <= p1;
			end
			3'b111: begin //1 2 3
				a1 <= p7;
				a4 <= p4;
				a7 <= p1;
			end
			default: begin
				a1 <= p1;
				a4 <= p4;
				a7 <= p7;
			end
		endcase
		
		case({a25,a28,a58})
			3'b000: begin //3 2 1
				a2 <= p2;
				a5 <= p5;
				a8 <= p8;
			end
			3'b001: begin //3 1 2
				a2 <= p2;
				a5 <= p8;
				a8 <= p5;
			end
			3'b011:  begin //2 1 3
				a2 <= p8;
				a5 <= p2;
				a8 <= p5;
			end
			3'b100:  begin //2 3 1
				a2 <= p5;
				a5 <= p2;
				a8 <= p8;
			end
			3'b110: begin //1 3 2
				a2 <= p5;
				a5 <= p8;
				a8 <= p2;
			end
			3'b111: begin //1 2 3
				a2 <= p8;
				a5 <= p5;
				a8 <= p2;
			end
			default: begin
				a2 <= p2;
				a5 <= p5;
				a8 <= p8;
			end
		endcase
		case({a36,a39,a69})
			3'b000: begin //3 2 1
				a3 <= p3;
				a6 <= p6;
				a9 <= p9;
			end
			3'b001: begin //3 1 2
				a3 <= p3;
				a6 <= p9;
				a9 <= p6;
			end
			3'b011:  begin //2 1 3
				a3 <= p9;
				a6 <= p3;
				a9 <= p6;
			end
			3'b100:  begin //2 3 1
				a3 <= p6;
				a6 <= p3;
				a9 <= p9;
			end
			3'b110: begin //1 3 2
				a3 <= p6;
				a6 <= p9;
				a9 <= p3;
			end
			3'b111: begin //1 2 3
				a3 <= p9;
				a6 <= p6;
				a9 <= p3;
			end
			default: begin
				a3 <= p3;
				a6 <= p6;
				a9 <= p9;
			end
		endcase
	end
	
	// sorted vertically
	reg [7:0] b1, b2, b3, b4, b5, b6, b7, b8, b9;
	wire b13;
	wire b12;
	wire b23;
	wire b46;
	wire b45;
	wire b56;
	wire b78;
	wire b79;
	wire b89;
	
	
	assign b13 = (a1 < a3);
	assign b12 = (a1 < a2);
	assign b23 = (a2 < a3);
	assign b46 = (a4 < a6);
	assign b45 = (a4 < a5);
	assign b56 = (a5 < a6);
	assign b78 = (a7 < a8);
	assign b79 = (a7 < a9);
	assign b89 = (a8 < a9);
	

	always @(posedge clk) begin
		case({b12,b13,b23})
			3'b000: begin //3 2 1
				b1 <= a3;
			end
			3'b001: begin //3 1 2
				b1 <= a2;
			end
			3'b011:  begin //2 1 3
				b1 <= a2;
			end
			3'b100:  begin //2 3 1
				b1 <= a3;
			end
			3'b110: begin //1 3 2
				b1 <= a1;
			end
			3'b111: begin //1 2 3
				b1 <= a1;
			end
			default: begin
				b1 <= a1;
			end
		endcase
		
		case({b45,b46,b56})
			3'b000: begin //3 2 1
				b5 <= a5;
			end
			3'b001: begin //3 1 2
				b5 <= a6;
			end
			3'b011:  begin //2 1 3
				b5 <= a4;
			end
			3'b100:  begin //2 3 1
				b5 <= a4;
			end
			3'b110: begin //1 3 2
				b5 <= a6;
			end
			3'b111: begin //1 2 3
				b5 <= a5;
			end
			default: begin
				b5 <= a5;
			end
		endcase
		
		case({b78,b79,b89})
			3'b000: begin //3 2 1
				b9 <= a7;
			end
			3'b001: begin //3 1 2
				b9 <= a7;
			end
			3'b011:  begin //2 1 3
				b9 <= a9;
			end
			3'b100:  begin //2 3 1
				b9 <= a8;
			end
			3'b110: begin //1 3 2
				b9 <= a8;
			end
			3'b111: begin //1 2 3
				b9 <= a9;
			end
			default: begin
				b9 <= a7;
			end
		endcase
	end

	// sorted diagonally
	reg [7:0] c1, c2, c3;
	wire c13;
	wire c12;
	wire c23;
	
	assign c13 = (b1 < b9);
	assign c12 = (b1 < b5);
	assign c23 = (b5 < b9);


	always @(posedge clk) begin
		case({c12,c13,c23})
			3'b000: begin //3 2 1
				c2 <= b5;
			end
			3'b001: begin //3 1 2
				c2 <= b9;
			end
			3'b011:  begin //2 1 3
				c2 <= b1;
			end
			3'b100:  begin //2 3 1
				c2 <= b1;
			end
			3'b110: begin //1 3 2
				c2 <= b9;
			end
			3'b111: begin //1 2 3
				c2 <= b5;
			end
			default: begin
				c2 <= b5;
			end
		endcase
		
		
	end
	
	
	// Finding the median value (middle value in sorted list)
	assign median = c2;

endmodule