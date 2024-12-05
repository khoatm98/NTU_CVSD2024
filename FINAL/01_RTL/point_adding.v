`define d  255'h52036cee2b6ffe738cc740797779e89800700a4d4141d8ab75eb4dca135978a3
//0x52036cee2b6ffe738cc740797779e89800700a4d4141d8ab75eb4dca135978a3
module point_adding #(
	parameter DATA_W = 255
) (
	input                 i_clk     ,
	input		      	  i_rst	    ,
	input  [2:0]	      i_state	,
	input  [DATA_W-1:0]   x1        ,
	input  [DATA_W-1:0]   y1        ,
	input  [DATA_W-1:0]   x2        ,
	input  [DATA_W-1:0]   y2        ,
	input  [DATA_W-1:0]   z2        ,
	input                 i_first   , 
	output                o_valid   ,
	output [DATA_W-1:0]   x3	    ,
	output [DATA_W-1:0]   y3	    ,
	output [DATA_W-1:0]   z3
);
localparam S_RST     = 3'd0;
localparam S_INPUT   = 3'd1;
localparam S_PROCESS = 3'd2;
localparam S_OUTPUT  = 3'd3;
localparam S_P1      = 3'd4;

reg	        i_first_lvl_r, i_first_lvl_r1;
reg [5:0]   lvl_count;
reg [3:0]   ad_level;
reg [255:0] B_r, C_r, D_r, F_r, G_r, I_r, J_r, K_r;
reg [254:0] a_addsub_r0, a_addsub_r1;
reg [254:0] b_addsub_r0, b_addsub_r1;
reg [255:0] a_mult_r, b_mult_r;
reg [255:0] imm0_r, imm1_r, imm2_r, imm3_r;
reg [255:0] x3_r, y3_r, z3_r;

wire	  valid_pd, i_first_lvl;
wire	  addsub_valid_0, addsub_valid_1;
wire [254:0] a_addsub_w0, a_addsub_w1;
wire [254:0] b_addsub_w0, b_addsub_w1;
wire [255:0] a_mult_w, b_mult_w;
wire [255:0] res_addsub_w0, res_addsub_w1, res_mult_w;


always @(posedge i_clk) begin
	if (i_rst) begin	
		B_r 		<= 0;
		C_r			<= 0;
		D_r 		<= 0;
		F_r 		<= 0;
		I_r			<= 0;
		J_r 		<= 0;
		K_r			<= 0;
		imm0_r		<= 0;
		imm1_r		<= 0;
		imm2_r		<= 0;
		a_addsub_r0 <= 0;
		b_addsub_r0	<= 0;
		a_addsub_r1	<= 0;
		b_addsub_r1	<= 0;
		a_mult_r	<= 0;
		b_mult_r	<= 0;
	end else begin
		case (ad_level) 
			0: begin				//level 1
				if (i_first_lvl_r) begin 	//i_first_lvl_r 1 cycle earlier than i_first_lvl
					a_addsub_r0 <= x2;  
					b_addsub_r0 <= y2;
					a_mult_r    <= x1;
			 		b_mult_r    <= x2;
				end
			end	
			1: begin
				if (i_first_lvl_r) begin
	                        	a_addsub_r0 <= x1;
					b_addsub_r0 <= y1;
				        a_mult_r    <= y1; 
	                                b_mult_r    <= y2;
					C_r 	    <= res_mult_w;      //output C use at level 3,4
					imm0_r 	    <= res_addsub_w0;	// use at level 6
				end
                        end 
			2: begin
				if (i_first_lvl_r) begin
	                                a_addsub_r0 <= C_r; 
	                                b_addsub_r0 <= res_mult_w;	
	                                a_mult_r    <= z2;
	                                b_mult_r    <= z2;
					D_r	    <= res_mult_w;	// use at level 4
					imm1_r	    <= res_addsub_w0;	// use at level 6
				end
                        end 
                        3: begin
				if (i_first_lvl_r) begin 
	                                a_mult_r    <= D_r;
	                                b_mult_r    <= C_r;
					B_r	    <= res_mult_w;	// use at level 6
					imm2_r	    <= res_addsub_w0;	// use at level 7,11
				end
                        end 
			4: begin
				if (i_first_lvl_r) begin
	                                a_mult_r   <= {1'b0,`d};
	                                b_mult_r   <=  res_mult_w;
				end
			end 
                        5: begin
				if (i_first_lvl_r) begin
					a_addsub_r0 <= res_mult_w;
					b_addsub_r0 <= B_r;
	                                a_addsub_r1 <= B_r;
	                                b_addsub_r1 <= res_mult_w;
	                                a_mult_r    <= imm0_r;
	                                b_mult_r    <= imm1_r;
				end	
                        end 
                        6: begin
				if (i_first_lvl_r) begin
					a_addsub_r1 <= res_mult_w;
					b_addsub_r1 <= imm2_r;
	                                a_mult_r    <= res_addsub_w1;
	                                b_mult_r    <= z2;
					G_r	    <= res_addsub_w0;	// use at level 8,9
					F_r	    <= res_addsub_w1;	// use at level 9

				end
                        end
                        7: begin
			 	if (i_first_lvl_r) begin	
	                                a_mult_r    <= z2;
	                                b_mult_r    <= G_r;
					I_r	    <= res_addsub_w1;	// use at level 10
					J_r 	    <= res_mult_w;	// use at level 10
				end
			end
			8: begin
                                if (i_first_lvl_r) begin
                                        a_mult_r    <= G_r;
                                        b_mult_r    <= F_r;
					K_r	    <= res_mult_w;	// use at level 11
                                end
                        end
			9: begin
                                if (i_first_lvl_r) begin
                                        a_mult_r    <= I_r;
                                        b_mult_r    <= J_r;
					z3_r	    <= res_mult_w;
                                end
                        end
			10: begin
                                if (i_first_lvl_r) begin
                                        a_mult_r    <= imm2_r;
                                        b_mult_r    <= K_r;
					x3_r	    <= res_mult_w;
                                end
                        end
			11: begin
				if (i_first_lvl_r) begin
					y3_r	    <= res_mult_w;	
				end
                        end
		endcase
	end	
end 
// count number of clock
always @(posedge i_clk) begin
	if (i_rst) begin
		lvl_count <= 0;
	end else if (valid_pd || i_first) begin
		lvl_count <= 0;
	end else begin
		lvl_count <= lvl_count + 1;
	end
end
always @(posedge i_clk) begin
	if (i_rst) begin
		ad_level <= 0;
	end else if (i_state == S_P1) begin 
		if (i_first) begin
			ad_level <= 0;
		end else if (valid_pd) begin
			ad_level <= (ad_level == 11) ? 0: ad_level + 1;
		end
	end else ad_level <= 0; 
end

always @(posedge i_clk) begin
	if (i_rst) begin
		i_first_lvl_r <= 0;
		i_first_lvl_r1 <= 0;
	end else begin
		i_first_lvl_r <= (i_state == S_P1) ? (i_first || valid_pd) : 0; // update with state later
		i_first_lvl_r1 <= i_first_lvl_r;
	end
end
assign i_first_lvl = i_first_lvl_r1; 
assign a_addsub_w0 = a_addsub_r0;
assign b_addsub_w0 = b_addsub_r0;
assign a_addsub_w1 = a_addsub_r1;
assign b_addsub_w1 = b_addsub_r1;
assign b_addsub_w2 = (ad_level == 2) ? res_addsub_w0 : 0;
assign a_mult_w	   = a_mult_r;
assign b_mult_w	   = b_mult_r;
assign x3	   = x3_r;
assign y3	   = y3_r;
assign z3	   = z3_r;
assign o_valid	   = (ad_level == 11) ? i_first_lvl : 0;

modular_add_sub modular_add_sub_pd_inst0 (
        .i_clk    (i_clk),
	.i_rst	  (i_rst),
        .a        (a_addsub_w0),
        .b        (b_addsub_w0),
        .i_add_sub(1'b1),
        .i_first  (i_first_lvl),
	.o_valid  (addsub_valid_0),
        .res      (res_addsub_w0)
);

modular_add_sub modular_add_sub_pd_inst1 (
        .i_clk    (i_clk),
	.i_rst    (i_rst),
        .a        (a_addsub_w1),
        .b        (b_addsub_w1),
        .i_add_sub(1'b0),
        .i_first  (i_first_lvl),
        .o_valid  (addsub_valid_1),
	.res      (res_addsub_w1)
);

modular_mult modular_mult_inst(
        .i_clk  (i_clk)  ,
	.i_rst    (i_rst),
        .a      (a_mult_w),
        .b      (b_mult_w),
        .i_first(i_first_lvl)  ,
	.o_valid(valid_pd)  ,
        .res    (res_mult_w)
);
endmodule
