//`define d = 255'h52036CEE2B6FFE738CC740797779E898D54D314DC6D3CD97D7B62F6F5C1EE4B9
module point_doubling #(
	parameter DATA_W = 256
) (
	input                 i_clk     ,
        input		      i_rst	,
	input  [DATA_W-1:0]   x1        ,
        input  [DATA_W-1:0]   y1        ,
        input                 i_first   , 
        output                o_valid   ,
        output [DATA_W-1:0]   x2	,
	output [DATA_W-1:0]   y2	,
	output [DATA_W-1:0]   z2
);

reg	   i_first_lvl2_r, i_first_lvl_r, i_first_lvl_r1;
reg [5:0] lvl_count;
reg [3:0] pd_level;
reg [255:0] B_r, D_r, F_r, J_r;
reg [255:0] a_addsub_r0, a_addsub_r1;
reg [255:0] b_addsub_r0, b_addsub_r1;
reg [255:0] a_mult_r, b_mult_r;
//reg [255:0] lvl4_res_addsub;
wire	  valid_pd, i_first_lvl;
wire	  addsub_valid_0, addsub_valid_1, addsub_valid_2;
wire [255:0] a_addsub_w0, a_addsub_w1, a_addsub_w2;
wire [255:0] b_addsub_w0, b_addsub_w1, b_addsub_w2;
wire [255:0] a_mult_w, b_mult_w;
wire [255:0] res_addsub_w0, res_addsub_w1, res_addsub_w2, res_mult_w;
wire z1 = 1'b1;

always @(posedge i_clk) begin
	if (i_rst) begin	
		B_r 		<= 0;
		D_r 		<= 0;
		F_r 		<= 0;
		J_r 		<= 0;
		a_addsub_r0 	<= 0;
		b_addsub_r0	<= 0;
		a_addsub_r1	<= 0;
		b_addsub_r1	<= 0;
		a_mult_r	<= 0;
		b_mult_r	<= 0;
		i_first_lvl2_r <= 0;
	end else begin
		case (pd_level) 
			0: begin				//level 1
				if (i_first_lvl_r) begin 	//i_first_lvl_r 1 cycle earlier than i_first_lvl
					a_addsub_r0 <= x1;		//output: B
					b_addsub_r0 <= y1;		//output: B
					a_mult_r    <= y1;		//output: D
			 		b_mult_r    <= y1;		//output: D
				end
			end	
			1: begin
				if (i_first_lvl_r) begin
	                                a_mult_r    <= x1; 		//output: C
	                                b_mult_r    <= x1; 		//output: C
					B_r	    <= res_addsub_w0;	//temporary save B double check this one
					D_r	    <= res_mult_w;
				end
                        end 
			2: begin
				if (i_first_lvl_r) begin
	                                a_addsub_r0 <= res_mult_w;	//input: C 
	                                b_addsub_r0 <= D_r; 		//input: D
					a_addsub_r1 <= res_mult_w;	//input: C, output: F
					b_addsub_r1 <= D_r;		//input: D, output: F
	                                a_mult_r    <= B_r;	 	//input: B 
	                                b_mult_r    <= B_r;	 	//input: B
				end
				i_first_lvl2_r <= addsub_valid_1;
                        end 
                        3: begin
				if (i_first_lvl_r) begin
	                                a_addsub_r0 <= res_mult_w;
	                                b_addsub_r0 <= res_addsub_w2;	//input: E
	                                a_mult_r    <= z1;		//input: Z
	                                b_mult_r    <= z1;		//input: Z
					F_r         <= res_addsub_w1;   //temporary save F
				end
                        end 
			4: begin
				if (i_first_lvl_r) begin
	                                a_addsub_r0 <= res_mult_w;	//output: A 
	                                b_addsub_r0 <= res_mult_w; 	//output: A
					B_r <= res_addsub_w0; //temporary save add at level 4 in B
				end
			end 
                        5: begin
				if (i_first_lvl_r) begin
	                                a_addsub_r1 <= F_r;		//input: F, output: J
	                                b_addsub_r1 <= res_addsub_w0;
	                                a_mult_r    <= res_addsub_w2;	//input: E;
	                                b_mult_r    <= F_r;	
				end	
                        end 
                        6: begin
				if (i_first_lvl_r) begin
	                                a_mult_r    <= B_r;
	                                b_mult_r    <= res_addsub_w1;
					D_r         <= res_mult_w;
					J_r         <= res_addsub_w1;
				end
                        end
                        7: begin
			 	if (i_first_lvl_r) begin	
	                                a_mult_r    <= J_r;
	                                b_mult_r    <= F_r;
					B_r         <= res_mult_w;
				end
			end
			8: begin
				if (i_first_lvl_r) begin
					J_r	    <= res_mult_w;
				end
                        end
		endcase
	end	
end 
// count number of clock
always @(posedge i_clk) begin
	if (i_rst) begin
		lvl_count <= 0;
	end else if (valid_pd) begin
		lvl_count <= 0;
	end else begin
		lvl_count <= lvl_count + 1;
	end
end
always @(posedge i_clk) begin
	if (i_rst) begin
		pd_level <= 0;
	end else if (i_first) begin
		pd_level <= 0;
	end else if (valid_pd) begin
		pd_level <= (pd_level ==8) ? 0: pd_level + 1;
	end 
end

always @(posedge i_clk) begin
	if (i_rst) begin
		i_first_lvl_r <= 0;
		i_first_lvl_r1 <= 0;
	end else begin
		i_first_lvl_r <= i_first || valid_pd;
		i_first_lvl_r1 <= i_first_lvl_r;
	end
end
assign i_first_lvl = i_first_lvl_r1; 
assign i_first_lvl_2nd = i_first_lvl2_r;
assign a_addsub_w0 = a_addsub_r0;
assign b_addsub_w0 = b_addsub_r0;
assign a_addsub_w1 = a_addsub_r1;
assign b_addsub_w1 = b_addsub_r1;
assign b_addsub_w2 = (pd_level == 2) ? res_addsub_w0 : 0;
assign a_mult_w	   = a_mult_r;
assign b_mult_w	   = b_mult_r;
assign x2	   = B_r;
assign y2	   = D_r;
assign z2	   = J_r;
assign o_valid	   = (pd_level == 8) ? i_first_lvl : 0;

modular_add_sub modular_add_sub_pd_inst0 (
        .i_clk    (i_clk),
        .a        (a_addsub_w0),
        .b        (b_addsub_w0),
        .i_add_sub(1'b1),
        .i_first  (i_first_lvl),
	.o_valid  (addsub_valid_0),
        .res      (res_addsub_w0)
);

modular_add_sub modular_add_sub_pd_inst1 (
        .i_clk    (i_clk),
        .a        (a_addsub_w1),
        .b        (b_addsub_w1),
        .i_add_sub(1'b0),
        .i_first  (i_first_lvl),
        .o_valid  (addsub_valid_1),
	.res      (res_addsub_w1)
);

modular_add_sub modular_add_sub_pd_inst2 ( // E
        .i_clk    (i_clk),
        .a        (`q),
        .b        (b_addsub_w2),
        .i_add_sub(1'b0),
        .i_first  (i_first_lvl_2nd),	// define base on addsub_valid_1 at level 3 Dec - 04
        .o_valid  (addsub_valid_2),
	.res      (res_addsub_w2)
);

modular_mult modular_mult_inst(
        .i_clk  (i_clk)  ,
        .a      (a_mult_w),
        .b      (b_mult_w),
        .i_first(i_first_lvl)  ,
	.o_valid(valid_pd)  ,
        .res    (res_mult_w)
);
endmodule
