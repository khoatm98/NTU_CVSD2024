`timescale 1ns/1ps
//`define CYCLE       5.0     // CLK period.
`define HCYCLE      (`CYCLE/2)
//`define MAX_CYCLE   10000000
`define PAT_NUM 16

`ifdef ALL
  `define MAX_CYCLE   20000 * `PAT_NUM
`else
  `define MAX_CYCLE   200000
`endif

`define RST_DELAY   2


`ifdef tb1
    `define INFILE "../00_TESTBED/PATTERN/indata1.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode1.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden1.dat"
`elsif tb2
    `define INFILE "../00_TESTBED/PATTERN/indata2.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode2.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden2.dat"
`elsif tb3
    `define INFILE "../00_TESTBED/PATTERN/indata3.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode3.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden3.dat"
`elsif tb4
    `define INFILE "../00_TESTBED/PATTERN/indata4.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode4.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden4.dat"
`elsif tb5
    `define INFILE "../00_TESTBED/PATTERN/indata5.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode5.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden5.dat"
`elsif tb11
    `define INFILE "../00_TESTBED/PATTERN/indata11.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode11.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden11.dat"
`elsif tb12
    `define INFILE "../00_TESTBED/PATTERN/indata12.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode12.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden12.dat"
`elsif tb13
    `define INFILE "../00_TESTBED/PATTERN/indata13.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode13.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden13.dat"
`elsif tb14
    `define INFILE "../00_TESTBED/PATTERN/indata14.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode14.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden14.dat"
`elsif tb15
    `define INFILE "../00_TESTBED/PATTERN/indata15.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode15.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden15.dat"
`elsif tb6
    `define INFILE "../00_TESTBED/PATTERN/indata6.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode6.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden6.dat"
`elsif tb7
    `define INFILE "../00_TESTBED/PATTERN/indata7.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode7.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden7.dat"
`elsif tb8
    `define INFILE "../00_TESTBED/PATTERN/indata8.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode8.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden8.dat"
`elsif tb9
    `define INFILE "../00_TESTBED/PATTERN/indata9.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode9.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden9.dat"
`elsif tb10
    `define INFILE "../00_TESTBED/PATTERN/indata10.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode10.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden10.dat"
`elsif tbh
    `define INFILE "../00_TESTBED/PATTERN/indatah.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmodeh.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/goldenh.dat"
`elsif tb0
    `define INFILE "../00_TESTBED/PATTERN/indata0.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode0.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden0.dat"
`endif


// Modify your sdf file name
`define SDFFILE "../02_SYN/Netlist/core_syn.sdf"

module testbed;

reg         clk, rst_n;
reg         op_valid;
reg  [ 3:0] op_mode;
wire        op_ready;
reg         in_valid;
reg  [ 7:0] in_data;
wire        in_ready;
wire        out_valid;
wire [13:0] out_data;
reg  [13:0] golden_data;

reg  [ 7:0] indata_mem [0:2047];
reg  [ 3:0] opmode_mem [0:10230];
reg  [13:0] golden_mem [0:40950];

integer opmode_counter;
integer golden_counter;
integer this_opmode;
integer this_output_counter;
integer next_op_ready;
integer golden_depth;
integer golden_output_number;

integer total_computation_time;
integer in_out_time, d32_time, d16_time;
initial in_out_time = 0;
initial total_computation_time = 0;
initial d32_time = 0;
initial d16_time = 0;
always @(posedge clk) total_computation_time = total_computation_time + 1;
always @(posedge clk) if(in_valid || op_ready || op_valid || out_valid) in_out_time = in_out_time + 1;
always @(posedge clk) if(!(in_valid || op_ready || op_valid || out_valid) && (this_opmode == 8 && golden_depth == 32)) d32_time = d32_time + 1;
always @(posedge clk) if(!(in_valid || op_ready || op_valid || out_valid) && (this_opmode == 8 && golden_depth == 16)) d16_time = d16_time + 1;


integer sum_32_time, sum_16_time, sum_8_time;
initial sum_32_time = 0;
initial sum_16_time = 0;
initial sum_8_time = 0;
// ==============================================
// TODO: Declare regs and wires you need
// ==============================================


//===============================================
// For gate level simulation
//===============================================
`ifdef SDF
    initial $sdf_annotate(`SDFFILE, u_core);
    initial #1 $display("SDF File %s were used for this simulation.", `SDFFILE);
`endif

//===============================================
// waveform file
//===============================================
initial begin
  $fsdbDumpfile("core.fsdb");
  $fsdbDumpvars(0, "+mda");
end

//===============================================
// design
//===============================================
core u_core (
	.i_clk       (clk),
	.i_rst_n     (rst_n),
	.i_op_valid  (op_valid),
	.i_op_mode   (op_mode),
    .o_op_ready  (op_ready),
	.i_in_valid  (in_valid),
	.i_in_data   (in_data),
	.o_in_ready  (in_ready),
	.o_out_valid (out_valid),
	.o_out_data  (out_data)
);

//===============================================
// Read in test pattern and golden pattern
//===============================================
initial $readmemb(`INFILE, indata_mem);
initial $readmemb(`OPFILE, opmode_mem);
initial $readmemb(`GOLDEN, golden_mem);

//===============================================
// clock
//===============================================
initial clk = 1'b0;
always #(`CYCLE/2) clk = ~clk;

//===============================================
// Reset generation and runtime check
//===============================================
initial begin
    force clk = 1'b0;
    rst_n = 1; 
    # (0.25 * `CYCLE);
    rst_n = 0;
    op_valid = 0;
    op_mode = 0;
    in_valid = 0;
    in_data = 0; 
    # ((`RST_DELAY - 0.25) * `CYCLE);
    rst_n = 1; 
    if(|op_ready===1'bx || |in_ready===1'bx || |out_valid===1'bx || |out_data===1'bx) 
    begin
		$display("************************************************************");   
        $display("                          FAIL!                             ");   
        $display(" Output signal should be reset after initial RESET at %8t   ",$time);
        $display("************************************************************");
        $finish;
	end
    release clk;
    # (`MAX_CYCLE * `CYCLE);
    $display("Error! Runtime exceeded!");
    $finish;
end

//===============================================
// Specification 2 check
//===============================================
always @(posedge clk or negedge clk) begin
    if(in_valid && out_valid) begin
        $display("************************************************************");   
        $display("                          FAIL!                             ");   
        $display("                       (SPEC 2-3)                           ");   
        $display("        in_valid and out_valid raise simultaneously.        ");
        $display("                 Vialation at %8t                           ",$time);
        $display("************************************************************");
        $finish;
    end
    if(op_valid && out_valid) begin
        $display("************************************************************");   
        $display("                          FAIL!                             ");   
        $display("                       (SPEC 2-4)                           ");   
        $display("        op_valid and out_valid raise simultaneously.        ");
        $display("                 Vialation at %8t                           ",$time);
        $display("************************************************************");
        $finish;
    end
    if(in_valid && op_ready) begin
        $display("************************************************************");   
        $display("                          FAIL!                             ");   
        $display("                       (SPEC 2-5)                           ");   
        $display("        in_valid and op_ready raise simultaneously.         ");
        $display("                 Vialation at %8t                           ",$time);
        $display("************************************************************");
        $finish;
    end
    if(op_valid && op_ready) begin
        $display("************************************************************");   
        $display("                          FAIL!                             ");   
        $display("                       (SPEC 2-6)                           ");   
        $display("         op_valid and op_ready raise simultaneously.        ");
        $display("                 Vialation at %8t                           ",$time);
        $display("************************************************************");
        $finish;
    end
    if(op_ready && out_valid) begin
        $display("************************************************************");   
        $display("                          FAIL!                             ");   
        $display("                       (SPEC 2-7)                           ");   
        $display("         op_ready and out_valid raise simultaneously.       ");
        $display("                 Vialation at %8t                           ",$time);
        $display("************************************************************");
        $finish;
    end
end

// ==============================================
// TODO: Check pattern after process finish
// ==============================================

integer golden_file, a;

initial begin
    golden_file = $fopen(`GOLDEN, "r");
// initialize
    opmode_counter = 0;
    golden_counter = 0;
    next_op_ready = 1;
    golden_depth = 32;

// always block
    while(1) begin
        @(negedge clk);
// if op_ready is 1
        if(op_ready === 1) begin
            //if(opmode_counter >= 1024) begin
            //    $display("opmode overflow");
            //    $display("golden_counter: %d", golden_counter);
            //    pass_task;
            //end 
            if(opmode_mem[opmode_counter] === 4'bx) begin
                $display("opmode complete");
                $display("golden_counter: %d", golden_counter);
                pass_task;
            end

            if(!next_op_ready) begin
                $display("************************************************************");   
                $display("                          FAIL!                             ");   
                $display("           op_ready raise before output compete             ");
                $display("************************************************************");
                $finish;
            end
            @(negedge clk);
            if(op_ready === 1) begin
                $display("************************************************************");   
                $display("                          FAIL!                             ");   
                $display("                       (SPEC 3-1)                           ");   
                $display(" Ready should be high for only one cycle. Vialation at %8t  ",$time);
                $display("************************************************************");
                $finish;
            end
// op_mode input
            op_valid = 1;
            op_mode = opmode_mem[opmode_counter];
            this_opmode = op_mode;

            case(this_opmode)
                4'b0000: begin next_op_ready = 1; golden_output_number = 0; end
                4'b0001: begin next_op_ready = 1; golden_output_number = 0; end
                4'b0010: begin next_op_ready = 1; golden_output_number = 0; end
                4'b0011: begin next_op_ready = 1; golden_output_number = 0; end
                4'b0100: begin next_op_ready = 1; golden_output_number = 0; end
                4'b0101: begin next_op_ready = 1; golden_output_number = 0; golden_depth = golden_depth == 8 ? 8 : golden_depth / 2;   end // reduce depth 
                4'b0110: begin next_op_ready = 1; golden_output_number = 0; golden_depth = golden_depth == 32 ? 32 : golden_depth * 2; end // increase depth 
                4'b0111: begin next_op_ready = 0; golden_output_number = golden_depth * 4; end // output pixel 
                4'b1000: begin next_op_ready = 0; golden_output_number = 4; end // convolution 
                4'b1001: begin next_op_ready = 0; golden_output_number = 4 * 4; end // median filter 
                4'b1010: begin next_op_ready = 0; golden_output_number = 4 * 4; end // salbor gradient 
            endcase

            if(this_opmode == 8) begin
                if(golden_depth == 32) sum_32_time = sum_32_time + 1;
                if(golden_depth == 16) sum_16_time = sum_16_time + 1;
                if(golden_depth == 8 ) sum_8_time  = sum_8_time  + 1;
            end

            @(negedge clk);
            op_valid = 0;
            op_mode = 0;
            this_output_counter = 0;
            
            if(this_opmode === 4'b0000)begin
                raster_scan_input_task;
            end
            opmode_counter = opmode_counter + 1;
        end
// if out_valid
        if(out_valid === 1) begin
            if(next_op_ready) begin
                $display("************************************************************");   
                $display("                          FAIL!                             ");   
                $display("                     too many output                        ");
                $display("************************************************************");
                $finish;
            end
            a 	 = $fscanf(golden_file, "%b", golden_data);
            //golden_data = golden_mem[golden_counter];
            if(out_data !== golden_data) begin
                $display("************************************************************");   
                $display("                          FAIL!                             ");   
                $display("      GOLDEN: %d YOURS: %d          ", golden_data, out_data);   
                $display("                   Vialation at %8t                         ", $time);
                $display("************************************************************");
                repeat(3) begin #(10);a 	 = $fscanf(golden_file, "%b", golden_data); end
                $finish;
            end else begin
				//$display("      GOLDEN: %d YOURS: %d          ", golden_data, out_data);   
			end
            golden_counter = golden_counter + 1;
            this_output_counter = this_output_counter + 1;
            if(this_output_counter == golden_output_number) begin
                next_op_ready = 1;
            end else if (this_output_counter > golden_output_number) begin
                $display("************************************************************");   
                $display("                          FAIL!                             ");   
                $display("           output raise before op input compete             ");
                $display("************************************************************");
                $finish;
            end
            if(next_op_ready && opmode_mem[opmode_counter] === 4'bx) begin
                $display("opmode complete");
                $display("golden_counter: %d", golden_counter);
                pass_task;
            end
            //if(next_op_ready && opmode_counter >= 1024) begin
            //    $display("opmode overflow");
            //    $display("golden_counter: %d", golden_counter);
            //    pass_task;
            //end
        end
    end
end

// ==============================================
// raster scan input task
// ==============================================
task raster_scan_input_task;
integer indata_counter;
begin
    indata_counter = 0;

    in_valid = 1;
    in_data = indata_mem[indata_counter];
    while(!(in_ready)) begin
        @(negedge clk);
    end
    indata_counter = indata_counter + 1;

    while(indata_counter < 2048)begin
        @(negedge clk);
        in_data = indata_mem[indata_counter];
        while(!(in_ready)) begin
            @(negedge clk);
        end
        indata_counter = indata_counter + 1;
    end
    @(negedge clk);
    in_valid = 0;
    in_data = 0;
end
endtask

// ==============================================
// pass task
// ==============================================
task pass_task;
begin
	$display ("----------------------------------------------------------------------------------------------------");
	$display ("                                             Congratulations!                                       ");
	$display ("                                             You have passed!                                       ");
    $display ("                                      total computation time %8d                                    ", total_computation_time);
    $display ("                                       input and output time %8d                                    ", in_out_time);
    $display ("                                     actual computation time %8d                                    ", total_computation_time - in_out_time);
	$display ("----------------------------------------------------------------------------------------------------");             
    $display (" %d %d %d %d %d ", sum_32_time, sum_16_time, sum_8_time, d32_time, d16_time);
	@(posedge clk);
    @(negedge clk);
    force clk = 0;
    #(`CYCLE * 1);
    $finish;
end
endtask

endmodule

