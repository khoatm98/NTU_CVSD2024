/********************************************************************
* Filename: testbed.v
* Authors:
*     Yu-Cheng Lin
* Description:
*     testbench for final project of CVSD 2024 Fall
* Parameters:
*
* Note:
*
* Review History:
*     2024.10.02             Yu-Cheng Lin
*********************************************************************/

`timescale 1ns/10ps
`define PERIOD    10.0
`define MAX_CYCLE 120000
//`define MAX_CYCLE 1_00
`define RST_CYCLE 5

`define I_DELAY 1
`define O_DELAY 1

`ifdef GATE
    `define SDF
    `define SDF_FILE "../02_SYN/Netlist/ed25519_syn.sdf" // Modify your sdf file name
`elsif POST
    `define SDF
    `define SDF_FILE "../05_POST/ed25519.sdf"  // Modify your sdf file name
`endif

`include "../00_TESTBED/pattern/tb_dat.sv"

// TODO: You should make sure your design can correctly handle the random IO handshake
// `define RANDOM_IO_HANDSHAKE

module testbench #(
    parameter DATA_W = 64,
    parameter PATN_W = 256,
    parameter IO_CYCLE = PATN_W/DATA_W
) ();

/* `ifdef PAT0
    import dat_0::*;
`elsif PAT1
    import dat_1::*;
`elsif PAT2
    import dat_2::*;
`else 
    import dat_0::*;
`endif */
	wire [767:0] input_data[2:0];
	wire [511:0] golden_data[2:0];
	assign  input_data[0]  = 768'h259f4329e6f4590b9a164106cf6a659eb4862b21fb97d43588561712e8e5216a0fa4d2a95dafe3275eaf3ba907dbb1da819aba3927450d7399a270ce660d2fae2f0fe2678dedf6671e055f1a557233b324f44fb8be4afe607e5541eb11b0bea2;
	assign  golden_data[0] = 512'h47f6a5d15e1a09495f9216eba5253538db62c06ad333adbcc86932c069f00d26465032bc1d1cace745d1b3bad5ca1115805ab1512361151d1c84c68aa2f54468;
	assign  input_data[1]  = 768'h17e0aa3c03983ca8ea7e9d498c778ea6eb2083e6ce164dba0ff18e0242af9fc32e2c9fbf00b87ab7cde15119d1c5b09aa9743b5c6fb96ec59dbf2f30209b133c116943db82ba4a31f240994b14a091fb55cc6edd19658a06d5f4c5805730c232;
	assign  golden_data[1] = 512'h7a3afed80c2ab24733d7a3cf8b33efcd547e88fabc71b39da58b42a26e6c606c6cbfdc595891983cc17335e1ecfbd786b92805efbd5be956a142f23285f29f8c;
	assign  input_data[2]  = 768'h1759edc372ae22448b0163c1cd9d2b7d247a8333f7b0b7d2cda8056c3d15eef75b90ea17eaf962ef96588677a54b09c016ad982c842efa107c078796f88449a86a210d43f514ec3c7a8e677567ad835b5c2e4bc5dd3480e135708e41b42c0ac6;
	assign  golden_data[2] = 512'h668e7ea762ae11fb5159d50df7f92ee488c0f5ac4266701687de38e61cc5c8062bc1a2c8137938914f9b6e42763026845c6ee2c134819c7ba755a513d05c6ec8;

    // Ports
    wire              clk;
    wire              rst;

    reg               in_valid;
    wire              in_ready;
    reg  [DATA_W-1:0] in_data;

    wire              out_valid;
    reg               out_ready;
    wire [DATA_W-1:0] out_data;

    // TB variables
    reg  [PATN_W*2-1:0] output_data;

    integer input_end, output_end;
    integer i,ii, j,jj, k;
    integer correct, error;

    // Cycle counting
    reg [31:0] cycle_count;   // To count the number of clock cycles

    clk_gen u_clk_gen (
        .clk   (clk  ),
        .rst   (rst  ),
        .rst_n (     )
    );

    ed25519 u_ed25519 (
        .i_clk       (clk      ),
        .i_rst       (rst      ),
        .i_in_valid  (in_valid ),
        .o_in_ready  (in_ready ),
        .i_in_data   (in_data  ),
        .o_out_valid (out_valid),
        .i_out_ready (out_ready),
        .o_out_data  (out_data )
    );

`ifdef SDF
    initial begin
		$display("%d" , `SDF_FILE);
        $sdf_annotate(`SDF_FILE, u_ed25519);
    `ifdef FSDB
        $fsdbDumpfile("ed25519_gate.fsdb");
        $fsdbDumpvars(0, testbench, "+mda");
    `elsif VCD
        $dumpfile("ed25519_gate.vcd");
        $dumpvars();
    `endif
    end
`else
    `ifdef FSDB
    initial begin
        //$fsdbDumpfile("ed25519.fsdb");
        //$fsdbDumpvars(0, testbench, "+mda");
    end
	`else
	initial begin
        $fsdbDumpfile("ed25519.fsdb");
        $fsdbDumpvars(0, testbench, "+mda");
    end
    `endif
`endif

    // IO valid signal
    initial begin
        in_valid = 1'b0;

        // reset
        wait (rst === 1'b1);
        wait (rst === 1'b0);
		$display("--------------------START--------------------");
        while (!input_end) begin
            @(posedge clk);
            #(`I_DELAY);
`ifdef RANDOM_IO_HANDSHAKE
            in_valid = $random() % 2;
`else
            in_valid = 1'b1;
`endif
        end

        @(posedge clk);
        #(`I_DELAY);
        in_valid = 1'b0;
    end

    // IO valid signal
    initial begin
        out_ready = 1'b0;

        // reset
        wait (rst === 1'b1);
        wait (rst === 1'b0);

        while (!output_end) begin
            @(posedge clk);
            #(`I_DELAY);
`ifdef RANDOM_IO_HANDSHAKE
            out_ready = $random() % 2;
`else
            out_ready = 1'b1;
`endif
        end

        @(posedge clk);
        #(`I_DELAY);
        out_ready = 1'b0;
    end
    
    // Input
    initial begin
        input_end = 0;
        in_data = 64'b0;

        // reset
        wait (rst === 1'b1);
        wait (rst === 1'b0);
		for (ii = 0; ii < 3; ii = ii + 1) begin
			// loop
			for (i = 3 * IO_CYCLE - 1; i >= 0; i = i - 1) begin
				#(`I_DELAY);

				in_data = input_data[ii][DATA_W*i +: DATA_W];

				@(posedge clk);
				while (!(in_valid && in_ready)) begin
					@(posedge clk);
				end
			end
        end
        input_end = 1;
        
        // final
        #(`I_DELAY);
        in_data  = 64'bx;
    end

    // Output
    initial begin
        correct    = 0;
        error      = 0;
        output_end = 0;

        // reset
        wait (rst === 1'b1);
        wait (rst === 1'b0);
        
        // loop
		for (jj = 0; jj < 3; jj = jj + 1) begin
			j = 2 * IO_CYCLE - 1;
			while (j >= 0) begin
				if (out_valid && out_ready) begin
					output_data[DATA_W*j +: DATA_W] = out_data;
					j = j - 1;
				end
				@(posedge clk);
			end

			if (output_data === golden_data[jj]) begin
				correct = correct + 1;
			end
			
			else begin
				error = error + 1;
			end
			$display("----------------------------------------------");
			$display(
				"Scalar:  %h, \nInput:  (%h, %h), \nGolden: (%h, %h), \nYours:  (%h, %h)",
				input_data[ii-1][2*PATN_W +: PATN_W],
				input_data[ii-1][  PATN_W +: PATN_W],
				input_data[ii-1][       0 +: PATN_W],
				golden_data[jj][  PATN_W +: PATN_W],
				golden_data[jj][       0 +: PATN_W],
				output_data[  PATN_W +: PATN_W],
				output_data[       0 +: PATN_W]
			);
		end
        // final
        output_end = 1;
    end

    // count calculation time
    initial begin
        cycle_count = 0;
        wait (rst === 1'b1);
        wait (rst === 1'b0);

        while (1) begin
            @(posedge clk);
            cycle_count = cycle_count + 1;
        end
    end

    // Result
    initial begin
        wait (ii==3 && jj==3);

        $display("**********************************************");
        if (error === 0 && correct === 3) begin
            $display("                  PASS!                     ");
        end
        else begin
            $display("                 FAIL!                     ");
        end
        $display("----------------------------------------------");
        $display("Simulation Cycle: %6d, Time: %11.2f ns", cycle_count, `PERIOD*(cycle_count));
        $display("**********************************************");

        # (2 * `PERIOD);
        $finish;
    end

endmodule


module clk_gen (
    output reg clk,
    output reg rst,
    output reg rst_n
);

    always #(`PERIOD / 2.0) clk = ~clk;

    initial begin
        clk = 1'b0;
        rst = 1'b0; rst_n = 1'b1; 
        @(posedge clk);
        rst = 1'b1; rst_n = 1'b0; 
        #(`RST_CYCLE * `PERIOD);
        rst = 1'b0; rst_n = 1'b1; 
        #(`MAX_CYCLE * `PERIOD);
        $display("----------------------------------------------");
        $display("Error! Runtime exceeded!");
        $display("----------------------------------------------");
        $finish;
    end

endmodule
