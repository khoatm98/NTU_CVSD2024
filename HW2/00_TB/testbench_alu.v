/********************************************************************
* Filename: testbench.v
* Authors:
*     Yi-Fan Shyu
* Description:
*     testbench for hw1 of CVSD 2024 Fall
* Parameters:
*
* Note:
*
* Review History:
*     2024.09.08             Yi-Fan Shyu
*********************************************************************/

`timescale 1ns/10ps
`define PERIOD    10.0
`define MAX_CYCLE 100000
`define RST_DELAY 2.0

`define SEQ_LEN 60
`ifdef I0
    `define IDATA  "../00_TB/ALU_I_FP_PLUS.dat"
    `define ODATA  "../00_TB/ALU_O_FP_PLUS.dat"
	`define OOVFDATA  "../00_TB/ALU_O_OVF_FP_PLUS.dat"
    `define PAT_LEN 40000
`elsif I1
    `define IDATA  "../00_TB/ALU_I_FP_MINUS.dat"
    `define ODATA  "../00_TB/ALU_O_FP_MINUS.dat"
	`define OOVFDATA  "../00_TB/ALU_O_OVF_FP_MINUS.dat"
    `define PAT_LEN 40000
`elsif I2
    `define IDATA  "../00_TB/ALU_I_FP_FLT.dat"
    `define ODATA  "../00_TB/ALU_O_FP_FLT.dat"
	`define OOVFDATA  "../00_TB/ALU_O_OVF_FP_FLT.dat"
    `define PAT_LEN 40000
`endif

module testbench #(
    parameter INST_W = 17,
    parameter INT_W  = 9,
    parameter FRAC_W = 23,
    parameter DATA_W = INT_W + FRAC_W
) ();

    // Ports
    wire              clk;
    wire              rst_n;
    reg               in_valid;
    reg  [INST_W-1:0] inst;
    reg  [DATA_W-1:0] idata_a;
    reg  [DATA_W-1:0] idata_b;

    wire              busy;
    wire              out_valid;
    wire [DATA_W-1:0] odata;
	wire              out_ovf;
    // TB variables
    reg                        valid_seq   [0:`SEQ_LEN-1];
    reg  [INST_W+2*DATA_W-1:0] input_data  [0:`PAT_LEN-1];
    reg  [         DATA_W-1:0] golden_data [0:`PAT_LEN-1];
	reg 					   golden_ovf  [0:`PAT_LEN-1];
    integer input_end, output_end, test_end;
    integer i, j, k;
    integer correct, error;

    initial begin
        $readmemb(`IDATA, input_data);
        $readmemb(`ODATA, golden_data);
		$readmemb(`OOVFDATA, golden_ovf);
    end

    clk_gen u_clk_gen (
        .clk   (clk  ),
        .rst   (     ),
        .rst_n (rst_n)
    );

    alu u_alu (
        .i_clk       (clk      ),
        .i_rst_n     (rst_n    ),
        .i_in_valid  (in_valid ),
        .o_busy      (busy     ),
        .i_inst      (inst     ),
        .i_data_a    (idata_a  ),
        .i_data_b    (idata_b  ),
        .o_out_valid (out_valid),
		.o_ovf       (out_ovf  ),
        .o_data      (odata    )
    );

    initial begin
       $fsdbDumpfile("alu.fsdb");
       $fsdbDumpvars(0, testbench, "+mda");
    end

    // Input
    initial begin
        input_end = 0;

        // reset
        wait (rst_n === 1'b0);
        in_valid =  1'b0;
        inst     =  4'b0;
        idata_a  = 16'b0;
        idata_b  = 16'b0;
        wait (rst_n === 1'b1);

        // start
        @(posedge clk);

        // loop
        i = 0; j = 0;
        while (i < `SEQ_LEN && j < `PAT_LEN) begin
            @(negedge clk);
            //if (valid_seq[i]) begin
                if (!busy) begin
                    in_valid = 1'b1;
                    inst     = input_data[j][2*DATA_W +: INST_W];
                    idata_a  = input_data[j][  DATA_W +: DATA_W];
                    idata_b  = input_data[j][       0 +: DATA_W];
                    j = j+1;

                    //i = i+1;
                end
                else begin
                    in_valid =  1'b0;
                    inst     =  4'bx;
                    idata_a  = 16'bx;
                    idata_b  = 16'bx;
                end
            //end
            //else begin
            //    in_valid =  1'b0;
            //    inst     =  4'bx;
            //    idata_a  = 16'bx;
            //    idata_b  = 16'bx;

            //    i = i+1;
            //end
            @(posedge clk);
        end

        // final
        @(negedge clk);
        in_valid =  1'b0;
        inst     =  4'b0;
        idata_a  = 16'b0;
        idata_b  = 16'b0;

        input_end = 1;
    end

    // Output
    initial begin
        correct = 0;
        error   = 0;
        output_end = 0;

        // reset
        wait (rst_n === 1'b0);
        wait (rst_n === 1'b1);

        // start
        @(posedge clk);

        // loop
        k = 0;
        while (k < `PAT_LEN) begin
            @(negedge clk);
            if (out_valid) begin
                if (odata === golden_data[k] && out_ovf == golden_ovf[k] || (out_ovf == golden_ovf[k] && out_ovf == 1)) begin
                    correct = correct + 1;
					/* $display(
                        "Test[%d]: Correct! Inst=%b, A=%b, B=%b, Golden=%b, Yours=%b",
                        k,
                        input_data[k][2*DATA_W +: INST_W],
                        input_data[k][  DATA_W +: DATA_W],
                        input_data[k][       0 +: DATA_W],
                        golden_data[k],
                        odata
                    ); */
                end
                else begin
                    error = error + 1;
                    $display(
                        "Test[%d]: Error! Inst=%b, A=%b, B=%b, Golden=%b, OVF=%b Yours=%b OVF=%b",
                        k,
                        input_data[k][2*DATA_W +: INST_W],
                        input_data[k][  DATA_W +: DATA_W],
                        input_data[k][       0 +: DATA_W],
                        golden_data[k],
						golden_ovf[k],
                        odata,
						out_ovf
                    );
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

