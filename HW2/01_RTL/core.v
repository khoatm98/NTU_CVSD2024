module core #( // DO NOT MODIFY INTERFACE!!!
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 32
) ( 
    input i_clk,
    input i_rst_n,

    // Testbench IOs
    output [2:0] o_status, 
    output       o_status_valid,

    // Memory IOs
    output [ADDR_WIDTH-1:0] o_addr,
    output [DATA_WIDTH-1:0] o_wdata,
    output                  o_we,
    input  [DATA_WIDTH-1:0] i_rdata
);
localparam IDLE                   = 4'd0;
localparam FETCH                  = 4'd1;
localparam DECODE            	  = 4'd2;
localparam EXECUTION   		      = 4'd3;
localparam MEMORY_ACCESS          = 4'd4;
localparam WRITEBACK              = 4'd5;
localparam PC_GENERATION          = 4'd6;
localparam END     			      = 4'd7;
localparam RESET     			  = 4'd8;
// ---------------------------------------------------------------------------
// Wires and Registers
// ---------------------------------------------------------------------------
// ---- Add your own wires and registers here if needed ---- //
reg signed  [ADDR_WIDTH-1:0]   curr_pc, next_pc;
reg         [3:0]              curr_state, next_state;
// Reigister declaration
reg  signed [11:0          ]   imm_r;
reg         [4:0           ]   r1_f1_addr_r;
reg         [4:0           ]   r2_f2_addr_r;
reg         [4:0           ]   rd_fd_addr_r;


// Output from reg files
wire        [31:0          ]   r1_data_w;
wire        [31:0          ]   r2_data_w;
wire        [31:0          ]   f1_data_w;
wire        [31:0          ]   f2_data_w;
							   
wire                           fl_en_w;
wire                           int_en_w;
wire        [31:0          ]   r_f_wdata_w;
wire        [4:0           ]   r_f_waddr_w;
//ALU
wire signed [DATA_WIDTH-1:0]   ALUinputA_w;
wire signed [DATA_WIDTH-1:0]   ALUinputB_w;
wire				  	       ALUen_w;
wire signed [DATA_WIDTH-1:0]   ALUout_w;
reg         [DATA_WIDTH-1:0]   ALUout_r;

wire                           ALUcond_w;
wire                           ALUovf_w;
reg	                           ALUcond_r;
wire                           mux_int_or_fl_1_w;
wire                           mux_int_or_fl_2_w;
wire                           mux_int_or_fl_3_w;
						       
reg         [DATA_WIDTH-1:0]   inst_r;
						       
reg  [2:0]                     o_status_r;
reg                            o_status_valid_r;
			                   
reg  [2:0]                     o_status_wait_r;
wire [2:0]                     o_status_w;
wire                           o_status_valid_w;

wire                           error_flag_w;
wire                           invalid_mem_w;
reg                            pc_overflow_r;
reg                            alu_overflow_r;
reg                            addr_overflow_r;


wire        [DATA_WIDTH-1:0]   inst_w;
wire                           b_type_w;
wire                           r_type_w;
wire                           i_type_w;
wire                           s_type_w;
wire                           l_type_w;
wire                           eof_type_w;

wire        [2:0]              funct3_w;
wire        [6:0]              funct7_w;
wire        [6:0]              opcode_w;
wire        [ADDR_WIDTH-1:0]   ALUPCRes_i_w;
				  
// ---------------------------------------------------------------------------
// Continuous Assignment
// ---------------------------------------------------------------------------
// ---- Add your own wire data assignments here if needed ---- //
assign b_type_w =        (opcode_w == `OP_BEQ & funct3_w == `FUNCT3_BEQ ) ||  
				         (opcode_w == `OP_BLT & funct3_w == `FUNCT3_BLT );
assign r_type_w =        (opcode_w == `OP_ADD    & funct7_w == `FUNCT7_ADD    & funct3_w == `FUNCT3_ADD   )    ||  
				         (opcode_w == `OP_SLT    & funct7_w == `FUNCT7_SLT    & funct3_w == `FUNCT3_SLT   )    ||  
				         (opcode_w == `OP_SRL    & funct7_w == `FUNCT7_SRL    & funct3_w == `FUNCT3_SRL   )    ||  
				         (opcode_w == `OP_FSUB   & funct7_w == `FUNCT7_FSUB   & funct3_w == `FUNCT3_FSUB  )    ||  
				         (opcode_w == `OP_SUB    & funct7_w == `FUNCT7_SUB    & funct3_w == `FUNCT3_SUB   )    ||
				         (opcode_w == `OP_SLL    & funct7_w == `FUNCT7_SLL    & funct3_w == `FUNCT3_SLL   )    ||
				         (opcode_w == `OP_FADD   & funct7_w == `FUNCT7_FADD   & funct3_w == `FUNCT3_FADD  )    ||
				         (opcode_w == `OP_FLT    & funct7_w == `FUNCT7_FLT    & funct3_w == `FUNCT3_FLT   )    ||
				         (opcode_w == `OP_FCLASS & funct7_w == `FUNCT7_FCLASS & funct3_w == `FUNCT3_FCLASS);
assign i_type_w =        (opcode_w == `OP_ADDI & funct3_w == `FUNCT3_ADDI) ||  
				         (opcode_w == `OP_LW   & funct3_w == `FUNCT3_LW  ) ||
				         (opcode_w == `OP_FLW  & funct3_w == `FUNCT3_FLW );
assign s_type_w =        (opcode_w == `OP_SW   & funct3_w == `FUNCT3_SW ) || 
						 (opcode_w == `OP_FSW  & funct3_w == `FUNCT3_FSW);
assign eof_type_w =      (opcode_w == `OP_EOF);
				         
assign l_type_w =        (opcode_w == `OP_LW   & funct3_w == `FUNCT3_LW  ) ||
				         (opcode_w == `OP_FLW  & funct3_w == `FUNCT3_FLW );

assign inst_w = i_rdata;

assign invalid_mem_w = inst_r == 0;


assign o_status_valid_w = next_state == END;
assign o_status_w       = o_status_wait_r;

assign opcode_w = inst_r[6:0]   ;
assign funct3_w = inst_r[14:12] ;
assign funct7_w = inst_r[31:25] ;

assign ALUPCRes_i_w = curr_pc + (imm_r<<1);


assign mux_int_or_fl_1_w = !(opcode_w == `OP_FADD   || opcode_w == `OP_FSUB  || 
							 opcode_w == `OP_FCLASS || opcode_w == `OP_FLT);
assign mux_int_or_fl_2_w = !(opcode_w == `OP_FADD   || opcode_w == `OP_FSUB  || 
							 opcode_w == `OP_FCLASS || opcode_w == `OP_FLW   || 
							 opcode_w == `OP_FLT    || opcode_w == `OP_FSW);
assign mux_int_or_fl_3_w = mux_int_or_fl_2_w        || (funct7_w == `FUNCT7_FCLASS && opcode_w == `OP_FCLASS) 
													|| (opcode_w == `OP_FLT && funct7_w == `FUNCT7_FLT);

assign ALUen_w = curr_state == EXECUTION;
assign ALUinputA_w = mux_int_or_fl_1_w ? r1_data_w : f1_data_w;
assign ALUinputB_w = mux_int_or_fl_2_w ? r2_data_w : f2_data_w;

assign error_flag_w = pc_overflow_r | ALUovf_w | invalid_mem_w;

assign o_addr = curr_state == MEMORY_ACCESS ? ALUout_w : curr_pc;
assign o_we   = (curr_state == MEMORY_ACCESS) && s_type_w && ~error_flag_w;
assign o_wdata = mux_int_or_fl_2_w ? r2_data_w : f2_data_w	;
assign o_status = o_status_r;
assign o_status_valid = o_status_valid_r;

//Write back to reg file
assign int_en_w = curr_state == WRITEBACK && ~error_flag_w ? mux_int_or_fl_3_w : 0;
assign fl_en_w = curr_state == WRITEBACK && ~error_flag_w ? ~mux_int_or_fl_3_w : 0;
assign r_f_waddr_w = rd_fd_addr_r;
assign r_f_wdata_w = l_type_w ?  i_rdata : ALUout_w;

/*************************************************/
/*************  Register file    *****************/
/*************************************************/

always @ (*) begin
	case({r_type_w, i_type_w, b_type_w, s_type_w})
		4'b1000: begin // r type
			imm_r = 0;
			r1_f1_addr_r = inst_r[19:15];
			r2_f2_addr_r = inst_r[24:20];
			rd_fd_addr_r = inst_r[11:7];
		end
		4'b0100: begin // i type
			imm_r   = inst_r[31:20];
			r1_f1_addr_r = inst_r[19:15];
			r2_f2_addr_r = 0;
			rd_fd_addr_r = inst_r[11:7];
		end
		4'b0010: begin // b type
			imm_r   = {inst_r[31], inst_r[7], inst_r[30:25], inst_r[11:8]};
			r1_f1_addr_r = inst_r[19:15];
			r2_f2_addr_r = inst_r[24:20];
			rd_fd_addr_r = 0;
		end
		4'b0001: begin // b type
			imm_r   = {inst_r[31:25], inst_r[11:7]};
			r1_f1_addr_r = inst_r[19:15];
			r2_f2_addr_r = inst_r[24:20];
			rd_fd_addr_r = 0;
		end
		default:  begin // b type
			imm_r   = 0;
			r1_f1_addr_r = 0;
			r2_f2_addr_r = 0;
			rd_fd_addr_r = 0;
		end
	endcase
end

    reg_file#(
    .ADDR_WIDTH(5),
    .DATA_WIDTH(DATA_WIDTH),
    .REG_AMOUNT(32)
    ) u_int_reg_file (   
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .w_enable(int_en_w),
        .w_addr(r_f_waddr_w),
        .w_data(r_f_wdata_w),
        .r_addrA(r1_f1_addr_r),
        .r_dataA(r1_data_w),
		.r_addrB(r2_f2_addr_r),
        .r_dataB(r2_data_w)
    );


	reg_file#(
    .ADDR_WIDTH(5),
    .DATA_WIDTH(DATA_WIDTH),
    .REG_AMOUNT(32)
    ) u_float_reg_file (   
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .w_enable(fl_en_w),
        .w_addr(r_f_waddr_w),
        .w_data(r_f_wdata_w),
        .r_addrA(r1_f1_addr_r),
        .r_dataA(f1_data_w),
		.r_addrB(r2_f2_addr_r),
        .r_dataB(f2_data_w)
    );
/*************************************************/
/*************        ALU        *****************/
/*************************************************/
	alu #(
    .INST_W(17),
    .INT_W(9),
    .FRAC_W(23),
	.DATA_W(DATA_WIDTH) 
    )u_alu(
        .i_clk          (i_clk         ),
        .i_rst_n        (i_rst_n       ),
        .i_data_a       (ALUinputA_w   ),
        .i_data_b       (ALUinputB_w   ),
		.o_busy         (),
		.i_imm          (imm_r         ),
		.i_in_valid     (ALUen_w       ),
        .i_inst         ({funct3_w, funct7_w, opcode_w}),
        .o_data         (ALUout_w      ), 
		.o_out_valid	(),
		.o_cond			(ALUcond_w     ),
		.o_ovf			(ALUovf_w      )
    );
	
// ---------------------------------------------------------------------------
// Combinational Blocks
// ---------------------------------------------------------------------------
// ---- Write your conbinational block design here ---- //
always @ (*) begin
	if( curr_state == PC_GENERATION && (b_type_w & ALUcond_w) )
		next_pc = ALUPCRes_i_w;
	else
		next_pc = curr_pc + 4;

	
	if (next_pc >= 4096 || next_pc < 0 ) begin
		pc_overflow_r = 1;
	end else
		pc_overflow_r = 0;
end

always @ (*) begin
	case({r_type_w, i_type_w, b_type_w, s_type_w, eof_type_w})
		5'b10000: o_status_wait_r = error_flag_w ? `INVALID_TYPE : `R_TYPE;
		5'b01000: o_status_wait_r = error_flag_w ? `INVALID_TYPE : `I_TYPE;
		5'b00100: o_status_wait_r = error_flag_w ? `INVALID_TYPE : `B_TYPE;
		5'b00010: o_status_wait_r = error_flag_w ? `INVALID_TYPE : `S_TYPE;
		5'b00001: o_status_wait_r = error_flag_w ? `INVALID_TYPE : `EOF_TYPE;
		default:  o_status_wait_r = `INVALID_TYPE;
	endcase
end


//FSM
always @(*) begin 
	case(curr_state)
		RESET            : next_state = FETCH;
		IDLE             : next_state = IDLE;
		FETCH            : next_state = DECODE;
		DECODE           : begin
			next_state = EXECUTION;
		end
		EXECUTION   	 : begin
			if (b_type_w)
				next_state = PC_GENERATION;
			else if (r_type_w || opcode_w == `OP_ADDI)
				next_state = WRITEBACK;
			else if (eof_type_w)
				next_state = END;
			else
				next_state = MEMORY_ACCESS;
		end 
		MEMORY_ACCESS    : begin
				if (l_type_w) begin
					next_state =  error_flag_w ? END:WRITEBACK;
				end else begin
					next_state =    PC_GENERATION;
				end
			end 
		WRITEBACK        : next_state =  PC_GENERATION;
		PC_GENERATION    : next_state =  END;
		END   			 : next_state =  (error_flag_w || eof_type_w) ? IDLE : FETCH;		
		default          : next_state = IDLE;
	endcase
end
// ---------------------------------------------------------------------------
// Sequential Block
// ---------------------------------------------------------------------------
// ---- Write your sequential block design here ---- //
always @ (posedge i_clk or negedge i_rst_n) begin
	if(!i_rst_n)
		curr_state <= RESET;
	else
		curr_state <= next_state;
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if(!i_rst_n) begin
		inst_r <= 0;
		o_status_r <=0;
		o_status_valid_r <=0;
	end
	else begin
		inst_r <= curr_state == FETCH ? inst_w : inst_r;
		o_status_r <= o_status_w;
		o_status_valid_r <= o_status_valid_w;
	end
end

always @ (posedge i_clk or negedge i_rst_n) begin
	if(!i_rst_n)
		curr_pc <= 0;
	else begin
		curr_pc <= curr_state == PC_GENERATION ? next_pc : curr_pc;
	end
end



//DEBUG

reg [31:0] counter;
always @ (posedge i_clk or negedge i_rst_n) begin
	if(!i_rst_n)
		counter <= 0;
	else begin
		counter <= next_state == FETCH ? counter+1 : counter;
	end
end
endmodule