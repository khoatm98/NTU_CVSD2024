module alu #(
    parameter INST_W = 4,
    parameter INT_W  = 6,
    parameter FRAC_W = 10,
    parameter DATA_W = INT_W + FRAC_W
)(
    input                      i_clk,
    input                      i_rst_n,

    input                      i_in_valid,
    output                     o_busy,
    input         [INST_W-1:0] i_inst,
    input  signed [DATA_W-1:0] i_data_a,
    input  signed [DATA_W-1:0] i_data_b,

    output                     o_out_valid,
    output        [DATA_W-1:0] o_data
);

    parameter RST = 3'd0, INPUT = 3'd1, CALC = 3'd2, OUTPUT = 3'd3, WRITEBACK =3'd4;
    // Local Parameters
	parameter FXADD     = 4'b0000;
    parameter FXSUB     = 4'b0001;
    parameter FXMUL     = 4'b0010;
    parameter FXACC     = 4'b0011;
    parameter SOFTPLUS  = 4'b0100;
    parameter XOR   	= 4'b0101;
    parameter ARSHIFT  	= 4'b0110;  // Arithmetic Right Shift
    parameter LR     	= 4'b0111;  // left rotation
    parameter CLZ    	= 4'b1000;  // count leading zeros
    parameter RM4   	= 4'b1001;	// reserve match 4

    // Wires and Regs
	reg [2:0] curr_state, next_state;
	reg signed [19:0] data_accumulated_r [15:0];
	reg [19:0] data_accumulated_wait_r;
	
	
	reg [DATA_W-1:0] result_wait_r;
	reg [DATA_W-1:0] result_ready_r;
	
	reg signed [DATA_W-1:0] data_a_r;
	reg signed [DATA_W-1:0] data_b_r;
	reg [INST_W-1:0] inst_r;
	reg [INST_W-1:0] mask_r;
	
	
	wire [12:0] result_rm4_w;
	wire [3:0] data_accumulated_index_w;
    // Continuous Assignments
	//Combinational logic
	
	assign data_accumulated_index_w = data_a_r[3:0];
	
    // Combinatorial Blocks
	always @ (*) begin
        case (inst_r) 
            FXADD: result_wait_r = fx_add(data_a_r, data_b_r);
            FXSUB: result_wait_r = fx_sub(data_a_r, data_b_r);
            FXMUL: result_wait_r = fx_mul(data_a_r, data_b_r);
            FXACC: result_wait_r = SAT(data_accumulated_wait_r);
            SOFTPLUS:  result_wait_r= fx_softplus(data_a_r);
            XOR:   result_wait_r = data_a_r ^ data_b_r;
            ARSHIFT:  result_wait_r = data_a_r >>> data_b_r[4:0];
            LR:  result_wait_r = left_rotate(data_a_r, data_b_r);
            CLZ: result_wait_r = clz(data_a_r);
            RM4: result_wait_r = {3'b000,result_rm4_w[12:0]};
            default: result_wait_r = 0;
        endcase
		
    end
	
	
	always @ (*) begin
        data_accumulated_wait_r = fx_add_20bit(data_accumulated_r[data_accumulated_index_w], data_b_r);
    end
	
	
	function automatic [DATA_W-1:0] fx_add;
    input signed [DATA_W-1:0] i_a;
    input signed [DATA_W-1:0] i_b;
    reg   signed [DATA_W:0] tmp;
    begin
        tmp = i_a + i_b;
        if(tmp < $signed(17'b1_1000_0000_0000_0000) ) begin
            fx_add = 16'b1000_0000_0000_0000; 
        end
        else  if(tmp > $signed(17'b0_0111_1111_1111_1111) ) begin
            fx_add = 16'b0111_1111_1111_1111;
        end 
        else begin
            fx_add = tmp[DATA_W-1:0];
        end
    end
    endfunction
	
	
	function automatic [DATA_W-1:0] fx_sub;
    input signed [DATA_W-1:0] i_data_a;
    input signed [DATA_W-1:0] i_data_b;
    reg   signed [DATA_W:0] tmp;
    begin
        tmp = i_data_a + ~i_data_b + 1;
		
        if(tmp < $signed(17'b1_1000_0000_0000_0000) ) begin
            fx_sub = 16'b1000_0000_0000_0000; 
        end
        else  if(tmp > $signed(17'b0_0111_1111_1111_1111) ) begin
            fx_sub = 16'b0111_1111_1111_1111;
        end 
        else begin
            fx_sub = tmp[DATA_W-1:0];
        end
    end
    endfunction
	
	
	
	function automatic [DATA_W-1:0] fx_mul;
    input signed [DATA_W-1:0] i_data_a;
    input signed [DATA_W-1:0] i_data_b;
    reg   signed [DATA_W*2-1:0] direct_mult;
	reg   signed [DATA_W:0]  tmp;
	reg round;
    begin
        direct_mult = i_data_a*i_data_b;
        if (direct_mult <= $signed(32'b11111110000000000000000000000000) ) begin
            fx_mul = 16'b1000000000000000;
        end else if (direct_mult >= $signed(32'b000000011111_1111111111_0000000000) ) begin
            fx_mul = 16'b0111111111111111;
        end
        else begin
			round  = direct_mult[FRAC_W - 1];
			tmp = direct_mult[DATA_W*2-INT_W - 1 -:DATA_W] + round;
			fx_mul = tmp[DATA_W-1:0];
        end
        
    end
    endfunction
	
	function automatic [19:0] fx_add_20bit;
    input signed [19:0] i_a;
    input signed [DATA_W-1:0] i_b;
    reg   signed [20:0] tmp;
    begin
        tmp = i_a + i_b;
        if(tmp < $signed(21'b1_1000_0000_0000_0000_0000) ) begin
            fx_add_20bit = 20'b1000_0000_0000_0000_0000; 
        end
        else  if(tmp > $signed(21'b0_0111_1111_1111_1111_0000) ) begin
            fx_add_20bit = 20'b0111_1111_1111_1111_1111;
        end 
        else begin
            fx_add_20bit = tmp[19:0];
        end
    end
    endfunction
	
	
	function automatic [DATA_W-1:0] SAT;
    input signed [19:0] i_a;
    begin
        if(i_a < $signed(20'b1111_1000_0000_0000_0000) ) begin
            SAT = 16'b1000_0000_0000_0000; 
        end
        else  if(i_a > $signed(20'b0000_0111_1111_1111_1111) ) begin
            SAT = 16'b0111_1111_1111_1111;
        end 
        else begin
            SAT = i_a[DATA_W-1:0];
        end
    end
    endfunction
	
	function automatic [DATA_W-1:0] left_rotate;
    input signed [DATA_W-1:0] i_data_a;
	input signed [DATA_W-1:0] i_data_b;
    begin
        left_rotate = (i_data_a << i_data_b[4:0]) | (i_data_a >> ( DATA_W - i_data_b[4:0])) ;
    end
    endfunction
	
	function automatic [DATA_W-1:0] fx_softplus;
    input signed [DATA_W-1:0] i_data_a;
	reg signed [DATA_W+1:0] numerator;
	reg signed [3*DATA_W:0] res_extend;
	reg signed [DATA_W :0] temp;
	// 32bit Fixed point value 32'h1c71c71c with 32 fractional bits is equal to 1/9
	// 32bit Fixed point value 32'h55555555 with 32 fractional bits is equal to 1/3
    begin	
        if (i_data_a < $signed(16'hf400) ) begin // -3
			numerator = 0;
			res_extend = 0;
			temp =  0;
		end else if (i_data_a < $signed(16'hf800) ) begin // -2
			numerator = {{2{i_data_a[DATA_W-1]}},i_data_a} + $signed(18'h0c00);
			res_extend = numerator*$signed(32'h1c71c71c);
			temp =  res_extend[3*DATA_W-1 -: DATA_W] + res_extend[3*DATA_W-1 - DATA_W];
		end else if (i_data_a < $signed(16'hfc00) ) begin // -1
			numerator = {{1{i_data_a[DATA_W-1]}},i_data_a,1'b0}  + $signed(18'h1400);
			res_extend = numerator*$signed(32'h1c71c71c);
			temp =  res_extend[3*DATA_W-1 -: DATA_W] + res_extend[3*DATA_W-1 - DATA_W];
		end else if (i_data_a < $signed(16'h0000) ) begin // 0
			numerator = {{2{i_data_a[DATA_W-1]}},i_data_a} + $signed(18'h0800);
			res_extend = numerator*$signed(32'h55555555);
			temp =  res_extend[3*DATA_W-1 -: DATA_W] + res_extend[3*DATA_W-1 - DATA_W];
		end else if (i_data_a < $signed(16'h0800) ) begin // 2
			numerator =   {{1{i_data_a[DATA_W-1]}},i_data_a,1'b0} + $signed(18'h0800);
			res_extend = numerator*$signed(32'h55555555);
			temp =  res_extend[3*DATA_W-1 -: DATA_W] + res_extend[3*DATA_W-1 - DATA_W];
		end else begin //> 2
			numerator = 0;
			res_extend = 0;
			temp =  {1'b0, i_data_a};
		end
		
		fx_softplus = temp[DATA_W-1:0]; 
    end
    endfunction
	
	function automatic [DATA_W-1:0] clz;
    input signed [DATA_W-1:0] i_data_a;
	
	integer i;
	reg signed [DATA_W-1:0] data_a;
	reg  [DATA_W + 1:0] buff;

    begin
		data_a = i_data_a;
		buff[15] = data_a[DATA_W - 1];
        for (i = DATA_W - 2; i >= 0; i = i - 1) begin
			buff[i] = buff[i+1] | data_a[i];
		end
		clz = DATA_W - ((buff[1] + buff[2]) + (buff[3] + buff[4]) + (buff[5] + buff[6]) + (buff[7] + buff[8])
						+ (buff[9] + buff[10]) + (buff[11] + buff[12]) + (buff[13] + buff[14]) + (buff[15] + buff[0]));
    end
    endfunction
	
	
    // Sequential Blocks
	always @ (*) begin
		case(curr_state)
			RST: next_state = INPUT;
			INPUT: next_state = i_in_valid? CALC : INPUT;
			CALC: next_state = OUTPUT;
			OUTPUT: next_state = (inst_r == FXACC) ? WRITEBACK : INPUT; 
			WRITEBACK: next_state = INPUT; 
			default : next_state = RST;
		endcase
        
		
    end
	
	always @ (posedge i_clk or negedge i_rst_n) begin
        if(!i_rst_n) begin
            curr_state <= RST;
        end else begin
            curr_state <= next_state;
        end
		
    end
	
	always @ (posedge i_clk or negedge i_rst_n) begin
		if(!i_rst_n) begin
			result_ready_r <= 0;
		end else begin
			result_ready_r <= (curr_state == CALC) ? result_wait_r : result_ready_r;
		end
        
    end
	
	always @ (posedge i_clk or negedge i_rst_n) begin
		if(!i_rst_n) begin
			data_a_r <= 0;
			data_b_r <= 0;
			inst_r   <= 0;
		end else begin
			data_a_r <= (curr_state == INPUT & i_in_valid) ? i_data_a : data_a_r;
			data_b_r <= (curr_state == INPUT & i_in_valid) ? i_data_b : data_b_r;
			inst_r   <= (curr_state == INPUT) ? i_inst : inst_r;
		end
        
    end
	genvar i;
	generate
		for ( i = 0; i < 16; i = i + 1) begin: data_acc_vector_loop
			always @ (posedge i_clk or negedge i_rst_n) begin
				if(~i_rst_n) begin
					data_accumulated_r[i] <= 0;
				end else begin
					if (i == data_a_r)
						data_accumulated_r[i] <= (curr_state == WRITEBACK) ? data_accumulated_wait_r : data_accumulated_r[i];
					else
						data_accumulated_r[i] <= data_accumulated_r[i];
				end
			end
		end
	endgenerate
	
	
	generate
		for ( i = 0; i < 13; i = i + 1) begin: rm4_loop
			assign result_rm4_w[i] = data_a_r[i+3:i] == data_b_r[15-i:12-i];
		end
	endgenerate
    assign o_busy      = curr_state != INPUT;
    assign o_out_valid = (curr_state == OUTPUT);
    assign o_data = result_ready_r;


endmodule
