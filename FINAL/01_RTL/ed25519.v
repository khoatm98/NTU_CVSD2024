`timescale 1ns/10ps

`define q 255'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed
`define minus_one 255'h7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec
`define d 255'h52036cee2b6ffe738cc740797779e89800700a4d4141d8ab75eb4dca135978a3
module ed25519 #(
    parameter DATA_W = 64,
	parameter BUFF_W = 256
)
(
input                 i_clk      ,
input                 i_rst      ,
input                 i_in_valid ,
output                o_in_ready ,
input  [DATA_W-1:0]   i_in_data  ,
output                o_out_valid,
input                 i_out_ready,
output [DATA_W-1:0]   o_out_data
);
// ---------------------------------------------------------------------------
// Parameter declaration
// ---------------------------------------------------------------------------
localparam S_RST            = 4'd0;
localparam S_INPUT          = 4'd1;
localparam S_SCALAR_MULT_D  = 4'd2;  // point doubling
localparam S_SCALAR_MULT_A  = 4'd3;  // point addition
localparam S_SCALAR_CHECK   = 4'd4; 
localparam S_REDUCE_CHECK   = 4'd5;  // compute z_inv
localparam S_REDUCE_Z_INV_SQ= 4'd6;  // compute z_inv
localparam S_REDUCE_Z_INV_M = 4'd7;  // compute z_inv
localparam S_REDUCE_XZ_INV  = 4'd8;  // compute x* z_inv
localparam S_REDUCE_YZ_INV  = 4'd9;  // compute y* z_inv
localparam S_REDUCE_X_TRAN  = 4'd10; // make x even
localparam S_REDUCE_Y_TRAN  = 4'd11; // make y even
localparam S_OUTPUT         = 4'd12;                 

// ---------------------------------------------------------------------------
// Reg and wire declaration
// ---------------------------------------------------------------------------
reg [3:0] curr_state, next_state;
reg [3:0] curr_s_state, next_s_state; //sub state
reg [3:0] generic_cnt;

reg [DATA_W-1:0]   o_out_data_r;

wire m_reg_wren;
wire m_reg_rden;

reg  m_reg_rden_r;
reg [BUFF_W*3-1:0] data_buf_r;
reg [DATA_W-1:0]   in_data_r;

reg [255:0] X_r;
reg [255:0] Y_r;
reg [255:0] Z_r;
reg [255:0] A_r;
reg [255:0] B_r;
reg [255:0] C_r;
reg [255:0] D_r;

reg  o_out_valid_r;
reg  o_in_ready_r;
// ---------------------------------------------------------------------------
// Continuous assignment
// ---------------------------------------------------------------------------
assign o_out_valid = curr_state == S_OUTPUT;
assign o_in_ready  = next_state == S_INPUT;

assign m_reg_wren  = o_out_valid && i_out_ready;  // write enable
assign m_reg_rden  = o_in_ready  && i_in_valid;   // read enable

assign o_out_data = data_buf_r[BUFF_W*3-1 -:64];


always @ (posedge i_clk) begin
	m_reg_rden_r <= m_reg_rden;
	in_data_r    <= i_in_data;
end
// ---------------------------------------------------------------------------
// MOD ADD/SUB and MOD MULT instanitiate
// ---------------------------------------------------------------------------
reg [255:0] modadd_a_in_r;
reg [255:0] modadd_b_in_r;

reg         modadd_inst;
reg         modadd_i_valid;
reg         modadd_o_valid;
reg [255:0] modadd_res_r;

reg [255:0] modmult_a_in_r;
reg [255:0] modmult_b_in_r;

reg         modmult_i_valid;
reg         modmult_o_valid;
reg [255:0] modmult_res_r;


reg [255:0] addD_a_in_w;
reg [255:0] addD_b_in_w;
reg [255:0] multD_a_in_w;
reg [255:0] multD_b_in_w;
reg [255:0] addA_a_in_w;
reg [255:0] addA_b_in_w;
reg [255:0] multA_a_in_w;
reg [255:0] multA_b_in_w;

reg [255:0] redZ1_a_in_w;
reg [255:0] redZ1_b_in_w;
reg [255:0] redZ2_a_in_w;
reg [255:0] redZ2_b_in_w;

reg [255:0] redXZ_a_in_w;
reg [255:0] redXZ_b_in_w;
reg [255:0] redYZ_a_in_w;
reg [255:0] redYZ_b_in_w;
reg [255:0] tranX_a_in_w;
reg [255:0] tranX_b_in_w;
reg [255:0] tranY_a_in_w;
reg [255:0] tranY_b_in_w;

reg         addD_inst;
reg         addD_i_valid;
reg         multD_i_valid;
reg         addA_inst;
reg         addA_i_valid;
reg         multA_i_valid;

reg         redZ1_i_valid;
reg         redZ2_i_valid;
reg         redXZ_i_valid;
reg         redYZ_i_valid;
reg         tranX_i_valid;
reg         tranY_i_valid;
modular_add_sub modular_add_sub_inst (
        .i_clk    (i_clk)        ,
		.i_rst    (i_rst)        ,
        .a        (modadd_a_in_r[254:0]),
        .b        (modadd_b_in_r[254:0]),
        .i_add_sub(modadd_inst)  ,
        .i_first  (modadd_i_valid),
        .o_valid  (modadd_o_valid),
		.res      (modadd_res_r[254:0])
);

modular_mult modular_mult_inst(
        .i_clk  (i_clk),
		.i_rst  (i_rst),
        .a      (modmult_a_in_r),
        .b      (modmult_b_in_r),
        .i_first(modmult_i_valid),
		.o_valid(modmult_o_valid),
        .res    (modmult_res_r)
);
// Control block for mod add/sub and mod mult inputs
always@ (posedge i_clk) begin
	case(next_state)       
		S_SCALAR_MULT_D  : begin
			modadd_a_in_r   <= addD_a_in_w;
			modadd_b_in_r   <= addD_b_in_w;
			modmult_a_in_r  <= multD_a_in_w;
			modmult_b_in_r  <= multD_b_in_w;
			modadd_inst     <= addD_inst;
			modadd_i_valid  <= addD_i_valid;
			modmult_i_valid <= multD_i_valid;
		end
		S_SCALAR_MULT_A  : begin
			modadd_a_in_r   <= addA_a_in_w;
			modadd_b_in_r   <= addA_b_in_w;
			modmult_a_in_r  <= multA_a_in_w;
			modmult_b_in_r  <= multA_b_in_w;
			modadd_inst     <= addA_inst;
			modadd_i_valid  <= addA_i_valid;
			modmult_i_valid <= multA_i_valid;
		end 
		S_REDUCE_Z_INV_SQ   : begin
			modadd_a_in_r   <= 0;
			modadd_b_in_r   <= 0;
			modmult_a_in_r  <= redZ1_a_in_w;
			modmult_b_in_r  <= redZ1_b_in_w;
			modadd_inst     <= 0;
			modadd_i_valid  <= 0;
			modmult_i_valid <= redZ1_i_valid;
		end
		S_REDUCE_Z_INV_M   : begin
			modadd_a_in_r   <= 0;
			modadd_b_in_r   <= 0;
			modmult_a_in_r  <= redZ2_a_in_w;
			modmult_b_in_r  <= redZ2_b_in_w;
			modadd_inst     <= 0;
			modadd_i_valid  <= 0;
			modmult_i_valid <= redZ2_i_valid;
		end 		
		S_REDUCE_XZ_INV  : begin
			modadd_a_in_r   <= 0;
			modadd_b_in_r   <= 0;
			modmult_a_in_r  <= redXZ_a_in_w;
			modmult_b_in_r  <= redXZ_b_in_w;
			modadd_inst     <= 0;
			modadd_i_valid  <= 0;
			modmult_i_valid <= redXZ_i_valid;
		end 
		S_REDUCE_YZ_INV  : begin
			modadd_a_in_r   <= 0;
			modadd_b_in_r   <= 0;
			modmult_a_in_r  <= redYZ_a_in_w;
			modmult_b_in_r  <= redYZ_b_in_w;
			modadd_inst     <= 0;
			modadd_i_valid  <= 0;
			modmult_i_valid <= redYZ_i_valid;
		end 
		S_REDUCE_X_TRAN  : begin
			modadd_a_in_r   <= 0;
			modadd_b_in_r   <= 0;
			modmult_a_in_r  <= tranX_a_in_w;
			modmult_b_in_r  <= tranX_b_in_w;
			modadd_inst     <= 0;
			modadd_i_valid  <= 0;
			modmult_i_valid <= tranX_i_valid;
		end 
		S_REDUCE_Y_TRAN  : begin
			modadd_a_in_r   <= 0;
			modadd_b_in_r   <= 0;
			modmult_a_in_r  <= tranY_a_in_w;
			modmult_b_in_r  <= tranY_b_in_w;
			modadd_inst     <= 0;
			modadd_i_valid  <= 0;
			modmult_i_valid <= tranY_i_valid;
		end 
		default          : begin
			modadd_a_in_r   <= 0;
			modadd_b_in_r   <= 0;
			modmult_a_in_r  <= 0;
			modmult_b_in_r  <= 0;
			modadd_inst     <= 0;
			modadd_i_valid  <= 0;
			modmult_i_valid <= 0;
		end         
	endcase 
end

// ---------------------------------------------------------------------------
// Input state
// ---------------------------------------------------------------------------
reg [BUFF_W*3-1:0]   data_in_buf_w;

always@(*) begin
	if (m_reg_rden_r)
		data_in_buf_w =  {data_buf_r[BUFF_W*3-1-64:0], in_data_r};
	else
		data_in_buf_w =  data_buf_r;
end

// ---------------------------------------------------------------------------
// Scalar multiplication
// ---------------------------------------------------------------------------
localparam S_LEVEL_0  = 4'd0;
localparam S_LEVEL_1  = 4'd1;
localparam S_LEVEL_2  = 4'd2; 
localparam S_LEVEL_3  = 4'd3; 
localparam S_LEVEL_4  = 4'd4; 
localparam S_LEVEL_5  = 4'd5; 
localparam S_LEVEL_6  = 4'd6; 
localparam S_LEVEL_7  = 4'd7; 
localparam S_LEVEL_8  = 4'd8; 
localparam S_LEVEL_9  = 4'd9; 
localparam S_LEVEL_10 = 4'd10; 
localparam S_LEVEL_11 = 4'd11; 
localparam S_LEVEL_12 = 4'd12; 
localparam S_LEVEL_13 = 4'd13; 

reg [7:0]   round_r;
reg [7:0]   round_scalar_w;

wire [255:0] M_w = data_buf_r[256*3 - 1 -: 255];

reg         end_round;


always@(posedge i_clk) begin
	if(curr_state == S_INPUT) begin
		round_r <= 255;
	end
	else begin
		round_r <= (curr_state == S_SCALAR_CHECK || curr_state == S_REDUCE_CHECK) ? round_r - 1 : round_r;
	end
end

// ---------------------------------------------------------------------------
//         Point doubling
// Target: Controller for addD_a_in_w;
//                        addD_b_in_w;
//                        multD_a_in_w;
//                        multD_b_in_w;
//                        addD_inst;
//                        addD_i_valid;
//                        multD_i_valid;
// ---------------------------------------------------------------------------
reg [3:0] next_doubling_state;

reg [255:0] PD_X_w;
reg [255:0] PD_Y_w;
reg [255:0] PD_Z_w;
reg [255:0] PD_C_w;
reg [255:0] PD_D_w;

wire   PD_end_w = next_doubling_state == S_LEVEL_10;

always@ (*) begin
	if (next_doubling_state != curr_s_state || curr_state == S_SCALAR_CHECK) begin
		
		case(next_doubling_state)
			S_LEVEL_0 : begin
				addD_a_in_w   = X_r;	
				addD_b_in_w   = Y_r;	
				multD_a_in_w  = Y_r;	
				multD_b_in_w  = Y_r;	
				addD_i_valid  = 1;
				multD_i_valid = 1;
			end
			S_LEVEL_1 : begin
				addD_a_in_w  = modadd_a_in_r;	
				addD_b_in_w  = modadd_b_in_r;	
				multD_a_in_w = X_r;	
				multD_b_in_w = X_r;
				addD_i_valid  = 0;
				multD_i_valid = 1;
			end 
			S_LEVEL_2 : begin
				addD_a_in_w  = modmult_res_r;	
				addD_b_in_w  = Y_r;	
				multD_a_in_w = X_r;	
				multD_b_in_w = X_r;	 
				addD_i_valid  = 1;
				multD_i_valid = 1;				
			end 
			S_LEVEL_3 : begin
				addD_a_in_w  = {1'b0,`q};	
				addD_b_in_w  = {1'b0, modadd_res_r[254:0]};	
				multD_a_in_w = modmult_a_in_r;	
				multD_b_in_w = modmult_b_in_r;	 	
				addD_i_valid  = 1;
				multD_i_valid = 0;
			end 
			S_LEVEL_4 : begin
				addD_a_in_w  = C_r;	
				addD_b_in_w  = D_r;	
				multD_a_in_w = modmult_a_in_r;	
				multD_b_in_w = modmult_b_in_r;	 	
				addD_i_valid  = 1;
				multD_i_valid = 0;
			end 
			S_LEVEL_5 : begin
				addD_a_in_w  = X_r;	
				addD_b_in_w  = Y_r;	
				multD_a_in_w = Z_r;	
				multD_b_in_w = Z_r;	 	
				addD_i_valid  = 1;
				multD_i_valid = 1;	
			end
			S_LEVEL_6 : begin
				addD_a_in_w  = modmult_res_r;	
				addD_b_in_w  = modmult_res_r;	
				multD_a_in_w = modmult_a_in_r;	
				multD_b_in_w = modmult_b_in_r;
				addD_i_valid  = 1;
				multD_i_valid = 0;					
			end
			S_LEVEL_7 : begin
				addD_a_in_w  = {1'b0, modadd_res_r[254:0]};		
				addD_b_in_w  = D_r;	
				multD_a_in_w = Y_r; 
				multD_b_in_w = D_r;
				addD_i_valid  = 1;
				multD_i_valid = 1;	
			end
			S_LEVEL_8 : begin
				addD_a_in_w  = modadd_a_in_r;	
				addD_b_in_w  = modadd_b_in_r;	
				multD_a_in_w ={1'b0, modadd_res_r[254:0]};	
				multD_b_in_w = X_r;	 	
				addD_i_valid  = 0;
				multD_i_valid = 1;	
			end
			S_LEVEL_9 : begin
				addD_a_in_w  = modadd_a_in_r;	
				addD_b_in_w  = modadd_b_in_r;	
				multD_a_in_w = Z_r;	
				multD_b_in_w = D_r;	 	
				addD_i_valid  = 0;
				multD_i_valid = 1;
			end
			default : begin
				addD_a_in_w  = modadd_a_in_r;	
				addD_b_in_w  = modadd_b_in_r;	
				multD_a_in_w = modmult_a_in_r;	
				multD_b_in_w = modmult_b_in_r;	 
				addD_i_valid  = 0;
				multD_i_valid = 0;				
			end
		endcase
	end else begin
		addD_a_in_w  = modadd_a_in_r;	
		addD_b_in_w  = modadd_b_in_r;	
		multD_a_in_w = modmult_a_in_r;	
		multD_b_in_w = modmult_b_in_r;	
		addD_i_valid  = 0;
		multD_i_valid = 0;
	end
end

always@ (*) begin
	case(next_doubling_state)
		S_LEVEL_3 : addD_inst = 0;
		S_LEVEL_4 : addD_inst = 0;
		default   : addD_inst = 1;
	endcase
end

always@ (*) begin
	if (next_doubling_state != curr_s_state || curr_state == S_SCALAR_CHECK) begin
		case(next_doubling_state)
			S_LEVEL_0 : begin
				PD_X_w = X_r;	
				PD_Y_w = Y_r;	
				PD_Z_w = Z_r;	
				PD_C_w = 0;	
				PD_D_w = 0;
			end
			S_LEVEL_1 : begin
				PD_X_w ={1'b0, modadd_res_r[254:0]};	
				PD_Y_w = modmult_res_r;	
				PD_Z_w = Z_r;	
				PD_C_w = X_r;	
				PD_D_w = D_r;
			end 
			S_LEVEL_2 : begin
				PD_X_w = X_r;	
				PD_Y_w = Y_r;	
				PD_Z_w = Z_r;	
				PD_C_w = modmult_res_r;	
				PD_D_w = Y_r; 	
			end 
			S_LEVEL_3 : begin
				PD_X_w = modmult_res_r;	
				PD_Y_w ={1'b0, modadd_res_r[254:0]};	
				PD_Z_w = Z_r;	
				PD_C_w = C_r;	
				PD_D_w = D_r; 	
			end 
			S_LEVEL_4 : begin
				PD_X_w = X_r;	
				PD_Y_w ={1'b0, modadd_res_r[254:0]};	
				PD_Z_w = Z_r;	
				PD_C_w = C_r;	
				PD_D_w = D_r;
			end 
			S_LEVEL_5 : begin
				PD_X_w = X_r;	
				PD_Y_w = Y_r;	
				PD_Z_w = Z_r;	
				PD_C_w = C_r;	
				PD_D_w ={1'b0, modadd_res_r[254:0]}; 	
			end
			S_LEVEL_6 : begin
				PD_X_w = {1'b0, modadd_res_r[254:0]};	
				PD_Y_w = Y_r;	
				PD_Z_w = modmult_res_r;	
				PD_C_w = C_r;	
				PD_D_w = D_r;  	
			end
			S_LEVEL_7 : begin
				PD_X_w = X_r;	
				PD_Y_w = Y_r;	
				PD_Z_w ={1'b0, modadd_res_r[254:0]};	
				PD_C_w = C_r;	
				PD_D_w = D_r;  	
			end
			S_LEVEL_8 : begin
				PD_X_w = X_r;	
				PD_Y_w = modmult_res_r;	
				PD_Z_w ={1'b0, modadd_res_r[254:0]};	
				PD_C_w = C_r;	
				PD_D_w = D_r;  	 	
			end
			S_LEVEL_9 : begin
				PD_X_w = modmult_res_r;	
				PD_Y_w = Y_r;	
				PD_Z_w = Z_r;	
				PD_C_w = C_r;	
				PD_D_w = D_r;  	
			end
			S_LEVEL_10 : begin
				PD_X_w = X_r;	
				PD_Y_w = Y_r;	
				PD_Z_w = modmult_res_r;	
				PD_C_w = C_r;	
				PD_D_w = D_r;  	
			end
			default : begin
				PD_X_w = X_r;
				PD_Y_w = Y_r;	
				PD_Z_w = Z_r;	
				PD_C_w = C_r;	
				PD_D_w = D_r;  	
			end
		endcase
	end else begin
		PD_X_w = X_r;	
		PD_Y_w = Y_r;	
		PD_Z_w = Z_r;	
		PD_C_w = C_r;	
		PD_D_w = D_r;
	end
end
// Sub state transition
always@ (*) begin
	if (curr_state == S_SCALAR_CHECK) begin
		next_doubling_state = S_LEVEL_0;
	end else begin
		case(curr_s_state)
			S_LEVEL_0 : next_doubling_state = modmult_o_valid ? S_LEVEL_1   : curr_s_state;
			S_LEVEL_1 : next_doubling_state = modmult_o_valid ? S_LEVEL_2   : curr_s_state;
			S_LEVEL_2 : next_doubling_state = modmult_o_valid ? S_LEVEL_3   : curr_s_state;
			S_LEVEL_3 : next_doubling_state = modadd_o_valid  ? S_LEVEL_4   : curr_s_state;
			S_LEVEL_4 : next_doubling_state = modadd_o_valid ? S_LEVEL_5   : curr_s_state;
			S_LEVEL_5 : next_doubling_state = modmult_o_valid ? S_LEVEL_6   : curr_s_state;
			S_LEVEL_6 : next_doubling_state = modadd_o_valid  ? S_LEVEL_7   : curr_s_state;
			S_LEVEL_7 : next_doubling_state = modmult_o_valid ? S_LEVEL_8   : curr_s_state;
			S_LEVEL_8 : next_doubling_state = modmult_o_valid ? S_LEVEL_9   : curr_s_state;
			S_LEVEL_9 : next_doubling_state = modmult_o_valid ? S_LEVEL_10   : curr_s_state;
			default   : next_doubling_state = modmult_o_valid ? S_LEVEL_0   : curr_s_state;
		endcase
	end
end

// ---------------------------------------------------------------------------
//         Point addition
// Target: Controller for addA_a_in_w;
//                        addA_b_in_w;
//                        multA_a_in_w;
//                        multA_b_in_w;
//                        addA_inst;
//                        addA_i_valid;
//                        multA_i_valid;
// ---------------------------------------------------------------------------
reg [3:0] next_addition_state;

reg [255:0] PA_X_w;
reg [255:0] PA_Y_w;
reg [255:0] PA_Z_w;
reg [255:0] PA_A_w;
reg [255:0] PA_B_w;
reg [255:0] PA_C_w;
reg [255:0] PA_D_w;

wire [255:0] X1_w = data_buf_r[256*2 - 1 -: 256];
wire [255:0] Y1_w = data_buf_r[256*1 - 1 -: 256];

wire         PA_end_w = next_addition_state == S_LEVEL_12;

wire       scalar_end_round_w = M_w[254] ? PA_end_w : PD_end_w;

always@ (*) begin
	if (next_addition_state != curr_s_state || (curr_state == S_SCALAR_MULT_D)) begin  // State transition
		case(next_addition_state)
			S_LEVEL_0 : begin
				addA_a_in_w  = X_r;	
				addA_b_in_w  = Y_r;	
				multA_a_in_w = X_r;	
				multA_b_in_w = X1_w;
				addA_i_valid  = 1;
				multA_i_valid = 1;
			end
			S_LEVEL_1 : begin
				addA_a_in_w  = X1_w;	
				addA_b_in_w  = Y1_w;	
				multA_a_in_w = Y_r;	
				multA_b_in_w = Y1_w;
				addA_i_valid  = 1;
				multA_i_valid = 1;
			end 
			S_LEVEL_2 : begin
				addA_a_in_w  = modmult_res_r;	
				addA_b_in_w  = X_r;	  
				multA_a_in_w = Z_r;	
				multA_b_in_w = Z_r;	 	
				addA_i_valid  = 1;
				multA_i_valid = 1;
			end 
			S_LEVEL_3 : begin
				addA_a_in_w  = modadd_a_in_r;
				addA_b_in_w  = modadd_b_in_r;	
				multA_a_in_w = X_r;	
				multA_b_in_w = D_r;	 	
				addA_i_valid  = 0;
				multA_i_valid = 1;
			end 
			S_LEVEL_4 : begin
				addA_a_in_w  = modadd_a_in_r;
				addA_b_in_w  = modadd_b_in_r;
				multA_a_in_w = {1'b0,`d};	
				multA_b_in_w = modmult_res_r;	 	
				addA_i_valid  = 0;
				multA_i_valid = 1;
			end 
			S_LEVEL_5 : begin
				addA_a_in_w  = A_r;	
				addA_b_in_w  = modmult_res_r;	
				multA_a_in_w = B_r;	
				multA_b_in_w = C_r;	 	
				addA_i_valid  = 1;
				multA_i_valid = 1;
			end
			S_LEVEL_6 : begin
				addA_a_in_w  = A_r;	
				addA_b_in_w  = D_r;	
				multA_a_in_w = modmult_a_in_r;	
				multA_b_in_w = modmult_b_in_r;
				addA_i_valid  = 1;
				multA_i_valid = 0;				
			end
			S_LEVEL_7 : begin
				addA_a_in_w  = B_r;	
				addA_b_in_w  = Y_r;	
				multA_a_in_w = Z_r;	
				multA_b_in_w = {1'b0, modadd_res_r[254:0]};	 	
				addA_i_valid  = 1;
				multA_i_valid = 1;
			end
			S_LEVEL_8 : begin
				addA_a_in_w  = modadd_a_in_r;	
				addA_b_in_w  = modadd_b_in_r;	
				multA_a_in_w = Z_r;	
				multA_b_in_w = C_r;	 	
				addA_i_valid  = 0;
				multA_i_valid = 1;
			end
			S_LEVEL_9 : begin
				addA_a_in_w  = modadd_a_in_r;	
				addA_b_in_w  = modadd_b_in_r;	
				multA_a_in_w = D_r;	
				multA_b_in_w = C_r;	 	
				addA_i_valid  = 0;
				multA_i_valid = 1;
			end
			S_LEVEL_10 : begin
				addA_a_in_w  = modadd_a_in_r;	
				addA_b_in_w  = modadd_b_in_r;	
				multA_a_in_w = A_r;	
				multA_b_in_w = B_r;	 	
				addA_i_valid  = 0;
				multA_i_valid = 1;
			end
			S_LEVEL_11 : begin
				addA_a_in_w  = modadd_a_in_r;	
				addA_b_in_w  = modadd_b_in_r;	
				multA_a_in_w = C_r;	
				multA_b_in_w = Y_r;	 	
				addA_i_valid  = 0;
				multA_i_valid = 1;
			end
			default : begin
				addA_a_in_w  = modadd_a_in_r;	
				addA_b_in_w  = modadd_b_in_r;	
				multA_a_in_w = modmult_a_in_r;
				multA_b_in_w = modmult_b_in_r;
				addA_i_valid  = 0;
				multA_i_valid = 0;
			end
		endcase
	end else begin
		addA_a_in_w  = modadd_a_in_r;	
		addA_b_in_w  = modadd_b_in_r;	
		multA_a_in_w = modmult_a_in_r;
		multA_b_in_w = modmult_b_in_r;
		addA_i_valid  = 0;
		multA_i_valid = 0;
	end
end

always@ (*) begin
	case(next_addition_state)
		S_LEVEL_6 : addA_inst = 0;
		S_LEVEL_7 : addA_inst = 0;
		default   : addA_inst = 1;
	endcase
end

always@ (*) begin
	if ((next_addition_state != curr_s_state) || (curr_state == S_SCALAR_MULT_D)) begin
		case(next_addition_state)
			S_LEVEL_0 : begin
				PA_X_w = X_r;	
				PA_Y_w = Y_r;	
				PA_Z_w = Z_r;	
				PA_A_w = 0;	
				PA_B_w = 0;
				PA_C_w = 0;	
				PA_D_w = 0;
			end
			S_LEVEL_1 : begin
				PA_X_w = modmult_res_r;	
				PA_Y_w = Y_r;	
				PA_Z_w = Z_r;	
				PA_A_w = 0;	
				PA_B_w ={1'b0, modadd_res_r[254:0]};
				PA_C_w = 0;	
				PA_D_w = 0;
			end 
			S_LEVEL_2 : begin
				PA_X_w = X_r;	
				PA_Y_w = modmult_res_r;	
				PA_Z_w = Z_r;	
				PA_A_w = A_r;	
				PA_B_w = B_r;
				PA_C_w ={1'b0, modadd_res_r[254:0]};	
				PA_D_w = modmult_res_r; 	
			end 
			S_LEVEL_3 : begin
				PA_X_w = X_r;	
				PA_Y_w ={1'b0, modadd_res_r[254:0]};	
				PA_Z_w = Z_r;	
				PA_A_w = modmult_res_r;	
				PA_B_w = B_r;
				PA_C_w = C_r;	
				PA_D_w = D_r; 	
			end 
			S_LEVEL_4 : begin
				PA_X_w = X_r;	
				PA_Y_w = Y_r;	
				PA_Z_w = Z_r;	
				PA_A_w = A_r;	
				PA_B_w = B_r;
				PA_C_w = C_r;	
				PA_D_w = modmult_res_r;
			end 
			S_LEVEL_5 : begin
				PA_X_w = X_r;	
				PA_Y_w = Y_r;	
				PA_Z_w = Z_r;	
				PA_A_w = A_r;	
				PA_B_w = B_r;
				PA_C_w = C_r;	
				PA_D_w = modmult_res_r;	
			end
			S_LEVEL_6 : begin
				PA_X_w = X_r;	
				PA_Y_w = Y_r;	
				PA_Z_w = Z_r;	
				PA_A_w = A_r;	
				PA_B_w = modmult_res_r;
				PA_C_w ={1'b0, modadd_res_r[254:0]};	
				PA_D_w = Y_r;  	
			end
			S_LEVEL_7 : begin
				PA_X_w = X_r;	
				PA_Y_w = Y_r;	
				PA_Z_w = Z_r;	
				PA_A_w = A_r;	
				PA_B_w = B_r;
				PA_C_w = C_r;	
				PA_D_w ={1'b0, modadd_res_r[254:0]};  	
			end
			S_LEVEL_8 : begin
				PA_X_w = X_r;	
				PA_Y_w = Y_r;	
				PA_Z_w = Z_r;	
				PA_A_w = modmult_res_r;	
				PA_B_w ={1'b0, modadd_res_r[254:0]};
				PA_C_w = C_r;	
				PA_D_w = D_r; 	 	
			end
			S_LEVEL_9 : begin
				PA_X_w = X_r;	
				PA_Y_w = Y_r;	
				PA_Z_w = modmult_res_r;	
				PA_A_w = A_r;	
				PA_B_w = B_r;
				PA_C_w = C_r;	
				PA_D_w = D_r; 	
			end
			S_LEVEL_10 : begin
				PA_X_w = X_r;	
				PA_Y_w = Y_r;	
				PA_Z_w = modmult_res_r;	
				PA_A_w = A_r;	
				PA_B_w = B_r;
				PA_C_w = Z_r;	
				PA_D_w = D_r; 	
			end
			S_LEVEL_11 : begin
				PA_X_w = modmult_res_r;	
				PA_Y_w = Y_r;	
				PA_Z_w = Z_r;	
				PA_A_w = A_r;	
				PA_B_w = B_r;
				PA_C_w = C_r;	
				PA_D_w = D_r; 	
			end
			S_LEVEL_12 : begin
				PA_X_w = X_r;	
				PA_Y_w = modmult_res_r;	
				PA_Z_w = Z_r;	
				PA_A_w = A_r;	
				PA_B_w = B_r;
				PA_C_w = C_r;	
				PA_D_w = D_r; 	
			end
			default : begin
				PA_X_w = X_r;	
				PA_Y_w = Y_r;	
				PA_Z_w = Z_r;	
				PA_A_w = A_r;	
				PA_B_w = B_r;
				PA_C_w = C_r;	
				PA_D_w = D_r;  	
			end
		endcase
	end else begin
		PA_X_w = X_r;	
		PA_Y_w = Y_r;	
		PA_Z_w = Z_r;	
		PA_A_w = A_r;	
		PA_B_w = B_r;
		PA_C_w = C_r;	
		PA_D_w = D_r; 
	end
end

always@ (*) begin
	if (curr_state == S_SCALAR_MULT_D) begin
		next_addition_state = S_LEVEL_0;
	end else begin
		case(curr_s_state)
			S_LEVEL_0  : next_addition_state = modmult_o_valid ? S_LEVEL_1   : curr_s_state;
			S_LEVEL_1  : next_addition_state = modmult_o_valid ? S_LEVEL_2   : curr_s_state;
			S_LEVEL_2  : next_addition_state = modmult_o_valid ? S_LEVEL_3   : curr_s_state;
			S_LEVEL_3  : next_addition_state = modmult_o_valid ? S_LEVEL_4   : curr_s_state;
			S_LEVEL_4  : next_addition_state = modmult_o_valid ? S_LEVEL_5   : curr_s_state;
			S_LEVEL_5  : next_addition_state = modmult_o_valid ? S_LEVEL_6   : curr_s_state;
			S_LEVEL_6  : next_addition_state = modadd_o_valid  ? S_LEVEL_7   : curr_s_state;
			S_LEVEL_7  : next_addition_state = modmult_o_valid ? S_LEVEL_8   : curr_s_state;
			S_LEVEL_8  : next_addition_state = modmult_o_valid ? S_LEVEL_9   : curr_s_state;
			S_LEVEL_9  : next_addition_state = modmult_o_valid ? S_LEVEL_10  : curr_s_state;
			S_LEVEL_10 : next_addition_state = modmult_o_valid ? S_LEVEL_11  : curr_s_state;
			S_LEVEL_11 : next_addition_state = modmult_o_valid ? S_LEVEL_12  : curr_s_state;
			default    : next_addition_state = curr_s_state;
		endcase
	end
end
// ---------------------------------------------------------------------------
// Inverse Z S_SQUARE
// ---------------------------------------------------------------------------
localparam [254:0] q_sub_2   = `q - 2;

reg [3:0]   next_inv1_state;

reg [255:0] inv1_C_w;

wire        redZ1_end_w = modmult_o_valid;
wire        redZ_end_w  = q_sub_2[round_r];
always @ (*) begin
	if (curr_state == S_REDUCE_CHECK) begin
		redZ1_a_in_w = round_r == 255 ? 1 : C_r;
		redZ1_i_valid = 1;
		redZ1_b_in_w = round_r == 255 ? 1 : C_r;
	end else begin
		redZ1_a_in_w = modmult_a_in_r;
		redZ1_b_in_w = modmult_b_in_r;
		redZ1_i_valid = 0;
	end
end

always @ (*) begin
	if (modmult_o_valid) begin
		inv1_C_w = modmult_res_r;
	end else begin
		inv1_C_w = C_r;
	end
end

// ---------------------------------------------------------------------------
// Inverse Z S_MULT
// ---------------------------------------------------------------------------
reg [3:0]   next_inv2_state;

reg [255:0] inv2_C_w;

wire        redZ2_end_w = modmult_o_valid;

always @ (*) begin
	if (curr_state == S_REDUCE_Z_INV_SQ) begin
		redZ2_a_in_w = round_r == 255 ? 1 : modmult_res_r;
		redZ2_i_valid = 1;
		redZ2_b_in_w = round_r == 255 ? 1 : Z_r;
	end else begin
		redZ2_a_in_w = modmult_a_in_r;
		redZ2_b_in_w = modmult_b_in_r;
		redZ2_i_valid = 0;
	end
end

always @ (*) begin
	if (modmult_o_valid) begin
		inv2_C_w = modmult_res_r;
	end else begin
		inv2_C_w = C_r;
	end
end

//-------------------------------------------------------------------------
// Reduce x = X/Z
// ---------------------------------------------------------------------------
reg [255:0]  redXZ_X_w;
wire         redXZ_end_w = modmult_o_valid;

always @ (*) begin
	if (curr_state == S_REDUCE_CHECK) begin
		redXZ_a_in_w = X_r;
		redXZ_b_in_w = C_r;
		redXZ_i_valid = 1;
	end else begin
		redXZ_a_in_w = modmult_a_in_r;
		redXZ_b_in_w = modmult_b_in_r;
		redXZ_i_valid = 0;
	end
end

always @ (*) begin
	if (modmult_o_valid) begin
		redXZ_X_w = modmult_res_r;
	end else begin
		redXZ_X_w = X_r;
	end
end

// ---------------------------------------------------------------------------
// Reduce Y = Y/Z
// ---------------------------------------------------------------------------
reg [255:0]  redYZ_Y_w;
wire         redYZ_end_w = modmult_o_valid;

always @ (*) begin
	if (curr_state == S_REDUCE_XZ_INV) begin
		redYZ_a_in_w = Y_r;
		redYZ_b_in_w = C_r;
		redYZ_i_valid = 1;
	end else begin
		redYZ_a_in_w = modmult_a_in_r;
		redYZ_b_in_w = modmult_b_in_r;
		redYZ_i_valid = 0;
	end
end

always @ (*) begin
	if (modmult_o_valid) begin
		redYZ_Y_w = modmult_res_r;
	end else begin
		redYZ_Y_w = Y_r;
	end
end
// ---------------------------------------------------------------------------
// Transform x
// ---------------------------------------------------------------------------
reg [255:0]  tranX_X_w;
wire         tranX_end_w = modmult_o_valid;

always @ (*) begin
	if (curr_state == S_REDUCE_YZ_INV) begin
		tranX_a_in_w = X_r;
		tranX_b_in_w = X_r[0] ? `minus_one : 1;
		tranX_i_valid = 1;
	end else begin
		tranX_a_in_w = modmult_a_in_r;
		tranX_b_in_w = modmult_b_in_r;
		tranX_i_valid = 0;
	end
end

always @ (*) begin
	if (modmult_o_valid) begin
		tranX_X_w = modmult_res_r;
	end else begin
		tranX_X_w = X_r;
	end
end
// ---------------------------------------------------------------------------
// Transform y
// ---------------------------------------------------------------------------
reg [255:0]  tranY_Y_w;
wire         tranY_end_w = modmult_o_valid;

always @ (*) begin
	if (curr_state == S_REDUCE_X_TRAN) begin
		tranY_a_in_w = Y_r;
		tranY_b_in_w = Y_r[0] ? `minus_one : 1;
		tranY_i_valid = 1;
	end else begin
		tranY_a_in_w = modmult_a_in_r;
		tranY_b_in_w = modmult_b_in_r;
		tranY_i_valid = 0;
	end
end

always @ (*) begin
	if (modmult_o_valid) begin
		tranY_Y_w = modmult_res_r;
	end else begin
		tranY_Y_w = Y_r;
	end
end
// ---------------------------------------------------------------------------
// Output state
// ---------------------------------------------------------------------------

reg [BUFF_W*3-1:0]   data_out_buf_w;

always@(*) begin
	if (m_reg_wren)
		data_out_buf_w =  {data_buf_r[BUFF_W*3-1-64:0], 64'd0};
	else
		data_out_buf_w =  data_buf_r;
end

always@ (posedge i_clk) begin
	case(curr_state)
		S_INPUT         : data_buf_r <= data_in_buf_w;
		S_SCALAR_CHECK  : data_buf_r <= {data_buf_r[256*3-2 -: 255], 1'b0, data_buf_r[256*2-1:0]};
		S_OUTPUT        : data_buf_r <= data_out_buf_w;
		S_REDUCE_Y_TRAN : data_buf_r <= modmult_o_valid ? {X_r, tranY_Y_w, 256'd0} : data_buf_r;
		default :  data_buf_r <= data_buf_r;
	endcase
end


// ---------------------------------------------------------------------------
// Sequential Circuit
// ---------------------------------------------------------------------------


always@ (*) begin
	case(curr_state)
		S_RST              :   next_state = S_INPUT;
		S_INPUT            :   next_state = generic_cnt == 11 && m_reg_rden_r ? S_SCALAR_CHECK : S_INPUT;
		S_SCALAR_MULT_D    :   next_state = PD_end_w ? (scalar_end_round_w ? S_SCALAR_CHECK : S_SCALAR_MULT_A) :  S_SCALAR_MULT_D;
		S_SCALAR_MULT_A    :   next_state = PA_end_w ? S_SCALAR_CHECK :  S_SCALAR_MULT_A;
		S_SCALAR_CHECK     :   next_state = round_r == 0  ? S_REDUCE_CHECK :  S_SCALAR_MULT_D;
		S_REDUCE_CHECK     :   next_state = round_r == 0  ? S_REDUCE_XZ_INV :  S_REDUCE_Z_INV_SQ;
		S_REDUCE_Z_INV_SQ  :   next_state = redZ1_end_w   ? ( redZ_end_w ? S_REDUCE_Z_INV_M : S_REDUCE_CHECK) :  S_REDUCE_Z_INV_SQ;
		S_REDUCE_Z_INV_M   :   next_state = redZ2_end_w   ? S_REDUCE_CHECK :  S_REDUCE_Z_INV_M;
		S_REDUCE_XZ_INV    :   next_state = redXZ_end_w   ? S_REDUCE_YZ_INV :  S_REDUCE_XZ_INV;
		S_REDUCE_YZ_INV    :   next_state = redYZ_end_w   ? S_REDUCE_X_TRAN :  S_REDUCE_YZ_INV;
		S_REDUCE_X_TRAN    :   next_state = tranX_end_w   ? S_REDUCE_Y_TRAN :  S_REDUCE_X_TRAN;
		S_REDUCE_Y_TRAN    :   next_state = tranY_end_w   ? S_OUTPUT :  S_REDUCE_Y_TRAN;
		default           :   next_state = generic_cnt == 7 && m_reg_wren ? S_RST  : S_OUTPUT;
	endcase
end
// ---------------------------------------------------------------------------
// Sequential Circuit
// ---------------------------------------------------------------------------
always@ (posedge i_clk ) begin
	if(i_rst) begin
		curr_state <= S_RST;
		curr_s_state <= 0;
	end else begin
		curr_state <= next_state;
		case(next_state)
			S_SCALAR_MULT_D: curr_s_state <= next_doubling_state;
			S_SCALAR_MULT_A: curr_s_state <= next_addition_state;
			default        : curr_s_state <= 0;
		endcase
	end
end

always@ (posedge i_clk) begin
	case(curr_state)       
		S_INPUT  : begin
			X_r <= 0;
			Y_r <= 1;
			Z_r <= 1;
			A_r <= 0;
			B_r <= 0;
			C_r <= 0;
			D_r <= 0;
		end
		S_SCALAR_MULT_D  : begin
			X_r <= PD_X_w;
			Y_r <= PD_Y_w;
			Z_r <= PD_Z_w;
			A_r <= 0;
			B_r <= 0;
			C_r <= PD_C_w;
			D_r <= PD_D_w;
		end
		S_SCALAR_MULT_A  : begin
			X_r <= PA_X_w;
			Y_r <= PA_Y_w;
			Z_r <= PA_Z_w;
			A_r <= PA_A_w;
			B_r <= PA_B_w;
			C_r <= PA_C_w;
			D_r <= PA_D_w;
		end 
		S_REDUCE_Z_INV_SQ  : begin
			X_r <= X_r;
			Y_r <= Y_r;
			Z_r <= Z_r;
			A_r <= A_r;
			B_r <= B_r;
			C_r <= inv1_C_w;
			D_r <= D_r;
		end
		S_REDUCE_Z_INV_M  : begin
			X_r <= X_r;
			Y_r <= Y_r;
			Z_r <= Z_r;
			A_r <= A_r;
			B_r <= B_r;
			C_r <= inv2_C_w;
			D_r <= D_r;
		end
		S_SCALAR_CHECK  : begin
			X_r <= X_r;
			Y_r <= Y_r;
			Z_r <= Z_r;
			A_r <= 0;
			B_r <= 0;
			C_r <= 1;
			D_r <= 0;
		end
		S_REDUCE_XZ_INV  : begin
			X_r <= redXZ_X_w;
			Y_r <= Y_r;
			Z_r <= Z_r;
			A_r <= A_r;
			B_r <= B_r;
			C_r <= C_r;
			D_r <= D_r;
		end
		S_REDUCE_YZ_INV  : begin
			X_r <= X_r;
			Y_r <= redYZ_Y_w;
			Z_r <= Z_r;
			A_r <= A_r;
			B_r <= B_r;
			C_r <= C_r;
			D_r <= D_r;
		end
		S_REDUCE_X_TRAN  : begin
			X_r <= tranX_X_w;
			Y_r <= Y_r;
			Z_r <= Z_r;
			A_r <= A_r;
			B_r <= B_r;
			C_r <= C_r;
			D_r <= D_r;
		end
		S_REDUCE_Y_TRAN  : begin
			X_r <= X_r;
			Y_r <= tranY_Y_w;
			Z_r <= Z_r;
			A_r <= A_r;
			B_r <= B_r;
			C_r <= C_r;
			D_r <= D_r;
		end
		default          : begin
			X_r <= X_r;
			Y_r <= Y_r;
			Z_r <= Z_r;
			A_r <= A_r;
			B_r <= B_r;
			C_r <= C_r;
			D_r <= D_r;
		end         
	endcase 
end
// ---------------------------------------------------------------------------
// module: generic counter
// Description: counter start from 0 at every state transition
// ---------------------------------------------------------------------------
always@ (posedge i_clk ) begin
	if(i_rst) begin
		generic_cnt <= 0;
	end else if(curr_state == S_INPUT) begin
		generic_cnt <= m_reg_rden_r ? generic_cnt + 1 : generic_cnt;
	end else if(curr_state == S_OUTPUT) begin
		generic_cnt <= m_reg_wren ? generic_cnt + 1 : generic_cnt;
	end else begin
		generic_cnt <= 0;
	end
end

endmodule
