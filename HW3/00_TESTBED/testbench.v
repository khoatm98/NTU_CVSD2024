`timescale 1ns/1ps
`define CYCLE       5.0     // CLK period.
`define HCYCLE      (`CYCLE/2)
`define MAX_CYCLE   20000
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
`elsif tbh
    `define INFILE "../00_TESTBED/PATTERN/indatah.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmodeh.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/goldenh.dat"
`else
    `define INFILE "../00_TESTBED/PATTERN/indata0.dat"
    `define OPFILE "../00_TESTBED/PATTERN/opmode0.dat"
    `define GOLDEN "../00_TESTBED/PATTERN/golden0.dat"
`endif

// Modify your sdf file name
`define SDFFILE "../02_SYN/Netlist/core_syn.sdf"


module testbed;

reg         clk, rst_n;
wire        op_valid;
wire [ 3:0] op_mode;
wire        op_ready;
wire        in_valid;
wire [ 7:0] in_data;
wire        in_ready;
wire        out_valid;
wire [13:0] out_data;

reg  [ 7:0] indata_mem [0:2047];
reg  [ 3:0] opmode_mem [0:1023];
reg  [13:0] golden_mem [0:4095];


// ==============================================
// TODO: Declare regs and wires you need
// ==============================================
integer i, j, k, error, cycle;
reg        op_valid_r;
reg [ 3:0] op_mode_r;
reg        in_valid_r;
reg [ 7:0] in_data_r;
// For gate-level simulation only
`ifdef SDF
    initial $sdf_annotate(`SDFFILE, u_core);
    initial #1 $display("SDF File %s were used for this simulation.", `SDFFILE);
`endif

// Write out waveform file
initial begin
  $fsdbDumpfile("core.fsdb");
  $fsdbDumpvars(0, "+mda");
end

assign op_valid    = op_valid_r;
assign op_mode     = op_mode_r;
assign in_valid    = in_valid_r;
assign in_data     = in_data_r;



core u_core (
	.i_clk       (clk),
	.i_rst_n     (rst_n),
	.i_op_valid  (op_valid),
	.i_op_mode   (op_mode ),
    .o_op_ready  (op_ready),
	.i_in_valid  (in_valid),
	.i_in_data   (in_data),
	.o_in_ready  (in_ready),
	.o_out_valid (out_valid),
	.o_out_data  (out_data)
);

// Read in test pattern and golden pattern
initial $readmemb(`INFILE, indata_mem);
initial $readmemb(`OPFILE, opmode_mem);
initial $readmemb(`GOLDEN, golden_mem);

// Clock generation
initial clk = 1'b0;
always begin #(`CYCLE/2) clk = ~clk; end

// Reset generation
initial begin
    rst_n = 1; # (               0.25 * `CYCLE);
    rst_n = 0; # ((`RST_DELAY - 0.25) * `CYCLE);
    rst_n = 1; # (         `MAX_CYCLE * `CYCLE);
    $display("Error! Runtime exceeded!");
	$display("j %d", j);
    $finish;
end

initial begin
	i = 0;
	j = 0;
	op_mode_r = 0;
	in_valid_r = 0;
	op_valid_r = 0;
	in_data_r = 0;
	while (opmode_mem[i] !== 4'dx) begin
		@(negedge clk);
		if(op_ready) begin
			@(negedge clk);
			op_valid_r = 1;
			op_mode_r = opmode_mem[i][3:0];
			@(negedge clk);
			op_valid_r = 0;
			if (op_mode_r == 0) begin // map loading
				j = 0;
				// Load imput feature map
                while (j < 2048) begin
					
					in_valid_r = 1;
					in_data_r = indata_mem[j][7:0];
                    if (in_ready) begin
                    j = j + 1;
                    end
					@(negedge clk);
                end
                in_valid_r = 0;
			end
			i = i + 1;
			
		end
	end
	# ( 2 * `CYCLE);
	$display("count instruction %d", i);
end

integer flag;
initial begin
    k = 0;
    error = 0;
	flag = 0;
    while (golden_mem[k] !== 14'dx ) begin
        @(negedge clk);
        if (out_valid) begin
            if (out_data !== golden_mem[k][13:0]) begin
                $display ("Test[%4d]: Error! GOLDEN=(%d), yours=(%d)", k, golden_mem[k][13:0], out_data);
                $finish; 
                error = error+1;
            end
			else begin
				$display ("Test[%4d]: Correct! GOLDEN=(%d), yours=(%d)", k, golden_mem[k][13:0], out_data);
			end
            k = k + 1;
			flag = 0;
        end
		else if (flag == 0) begin
			$display ("Processing...");
			flag = 1;
		end
    end
    if(error == 0) begin
        $display("----------------------------------------------------");
        $display("-                    ALL PASS!                     -");
        $display("-           Latency: %0d/%0d cycle/ns           -",cycle,$time);
        $display("----------------------------------------------------");
    end else begin
        $display("----------------------------------------------");
        $display("         Wrong! Total error: %d               ", error);
        $display("----------------------------------------------");
    end
    # ( 2 * `CYCLE);
    //$display("End of Process, total cycle = %d",cycle_count);
    $finish;
end

always @ (posedge clk) begin
if (!rst_n)
	cycle <= 0;
else
	cycle <= cycle + 1;
end
// ==============================================
// TODO: Check pattern after process finish
// ==============================================


endmodule
