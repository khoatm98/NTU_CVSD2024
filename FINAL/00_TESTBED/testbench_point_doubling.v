/********************************************************************
* Filename: testbench_mod_add.v
* Authors:
*     Khoa Tran
* Description:
*     testbench for modular mult
* Parameters:
*
* Note:
*
* Review History:
*     2024.12.05             Khoa Tran
*********************************************************************/

`timescale 1ns/10ps
`define PERIOD    10.0
`define MAX_CYCLE 10000000
`define RST_DELAY 2.0

`define IDATA_x1  "../00_TESTBED/pattern_point_doubling/pd_x1_I.dat"
`define IDATA_y1  "../00_TESTBED/pattern_point_doubling/pd_y1_I.dat"
`define IDATA_z1  "../00_TESTBED/pattern_point_doubling/pd_z1_I.dat"


`define ODATA_x2  "../00_TESTBED/pattern_point_doubling/pd_x3_O.dat"
`define ODATA_y2  "../00_TESTBED/pattern_point_doubling/pd_y3_O.dat"
`define ODATA_z2  "../00_TESTBED/pattern_point_doubling/pd_z3_O.dat"
`define PAT_LEN 1


module testbench #(
    parameter INST_W = 4,
    parameter INT_W  = 6,
    parameter FRAC_W = 10,
    parameter DATA_W = INT_W + FRAC_W
) ();

    // Ports
    wire              clk;
    wire              rst_n;
    reg               in_valid;
    reg  [0:0]        inst;
	
    reg  [255-1:0]    x1_in;
    reg  [255-1:0]    y1_in;
	reg  [255-1:0]    z1_in;
    reg  [255-1:0]    x2_out;
	reg  [255-1:0]    y2_out;
    reg  [255-1:0]    z2_out;
	
    wire              busy;
    wire              out_valid;
    wire [255-1:0]    odata;

    // TB variables
    reg  [255-1:0]    input_data_x1_in  [0:`PAT_LEN-1];
	reg  [255-1:0]    input_data_y1_in  [0:`PAT_LEN-1];
	reg  [255-1:0]    input_data_z1_in  [0:`PAT_LEN-1];
	 
    reg  [255-1:0]    golden_data_x2 [0:`PAT_LEN-1];
	reg  [255-1:0]    golden_data_y2 [0:`PAT_LEN-1];
	reg  [255-1:0]    golden_data_z2 [0:`PAT_LEN-1];

    integer input_end, output_end, test_end;
    integer i, j, k;
    integer correct, error;

    initial begin
        $readmemb(`IDATA_x1, input_data_x1_in);
		$readmemb(`IDATA_y1, input_data_y1_in);
		$readmemb(`IDATA_z1, input_data_z1_in);
		
        $readmemb(`ODATA_x2, golden_data_x2);
		$readmemb(`ODATA_y2, golden_data_y2);
		$readmemb(`ODATA_z2, golden_data_z2);
    end 

    clk_gen u_clk_gen (
        .clk   (clk  ),
        .rst   (rst  ),
        .rst_n (rst_n)
    );
	
	point_doubling point_doubling_inst (
		.i_clk   (clk),
		.i_rst	 (rst),
		.i_state (3'd2     ),
		.x1      (x1_in    ),
		.y1      (y1_in    ),
		.z1      (z1_in    ),
		.i_first (in_valid ),
		.o_valid (out_valid),
		.x2	     (x2_out   ),
		.y2	     (y2_out   ),
		.z2      (z2_out   )
	);
    initial begin
       $fsdbDumpfile("modular_add_sub.fsdb");
       $fsdbDumpvars(0, testbench, "+mda");
    end

    // Input
    initial begin
        input_end = 0;

        // reset
        wait (rst === 1'b1);
        in_valid =  1'b0;
        x1_in  = 255'd0;
        y1_in  = 255'd0;
		z1_in  = 255'd0;
        wait (rst === 1'b0);

        // start
		// loop
        i = 0; j = 0;
        @(posedge clk);
		in_valid = 1'b1;
		x1_in  = input_data_x1_in[j][255-1    :   0];
        y1_in  = input_data_y1_in[j][255-1    :   0];
		z1_in  = input_data_z1_in[j][255-1    :   0];

		j = j+1;
        
        while ( j <= `PAT_LEN) begin
            @(posedge clk);
			if (out_valid) begin
				@(posedge clk);
				in_valid = 1'b1;
				x1_in  = input_data_x1_in[j][255-1    :   0];
				y1_in  = input_data_y1_in[j][255-1    :   0];
				z1_in  = input_data_z1_in[j][255-1    :   0];
				j = j+1;
				//$display("o valid");
			end else begin
				in_valid = 1'b0;
			end
        end

        // final
        @(negedge clk);
        in_valid =  1'b0;
        x1_in  = 255'd0;
        y1_in  = 255'd0;
		z1_in  = 255'd0;
        input_end = 1;
    end

    // Output
    initial begin
        correct = 0;
        error   = 0;
        output_end = 0;

        // reset
        wait (rst === 1'b1);
        wait (rst === 1'b0);

        // start
        @(posedge clk);

        // loop
        k = 0;
        while (k < `PAT_LEN) begin
            @(negedge clk);
            if (out_valid) begin
                if (x2_out === golden_data_x2[k] && y2_out === golden_data_y2[k] && z2_out === golden_data_z2[k]) begin
                    correct = correct + 1;
					$display(
                        "Test[%d]: Correct! x1=%x, y1=%x, z1=%x, Golden=%x %x %x, Yours=%x %x %x",
                        k,
                        input_data_x1_in[k][255-1    :   0],
                        input_data_y1_in[k][255-1    :   0],
                        input_data_z1_in[k][255-1    :   0],
                        golden_data_x2[k],
						golden_data_y2[k],
						golden_data_z2[k],
                        x2_out,
						y2_out,
						z2_out
                    );
                end
                else begin
                    error = error + 1;
                    $display(
                        "Test[%d]: Incorrect! \n x1=%x, \n y1=%x, \n z1=%x, \n Golden \n %d \n %d \n %d,  \n Yours \n %d \n %d \n %d",
                        k, 
                        input_data_x1_in[k][255-1    :   0],
                        input_data_y1_in[k][255-1    :   0],
                        input_data_z1_in[k][255-1    :   0],
                        golden_data_x2[k],
						golden_data_y2[k],
						golden_data_z2[k],
                        x2_out,
						y2_out,
						z2_out
                    );
					//$finish;
                end
                k = k+1;
            end
            @(posedge clk);
        end

        // final
        output_end = 1;
    end

    // Result
    initial begin
        wait (input_end && output_end);

        if (error === 0 && correct === `PAT_LEN) begin
            $display("----------------------------------------------");
            $display("-                 ALL PASS!                  -");
            $display("----------------------------------------------");
        end
        else begin
            $display("----------------------------------------------");
            $display("  Wrong! Total Error: %d                      ", error);
            $display("----------------------------------------------");
        end

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
        rst = 1'b0; rst_n = 1'b1; #(              0.25  * `PERIOD);
        rst = 1'b1; rst_n = 1'b0; #((`RST_DELAY - 0.25) * `PERIOD);
        rst = 1'b0; rst_n = 1'b1; #(         `MAX_CYCLE * `PERIOD);
        $display("Error! Runtime exceeded!");
        $finish;
    end

endmodule
