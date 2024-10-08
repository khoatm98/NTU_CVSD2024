`timescale 1ns/100ps
`define CYCLE       10.0
`define HCYCLE      (`CYCLE/2)
`define MAX_CYCLE   1200
`define MAX_INST	1024 
`define DATA_MEM	2048 
`ifdef p0
    `define Inst   "../00_TB/PATTERN/p0/inst.dat"
	`define Data   "../00_TB/PATTERN/p0/data.dat"
	`define Status "../00_TB/PATTERN/p0/status.dat"
`elsif p1
    `define Inst   "../00_TB/PATTERN/p1/inst.dat"
	`define Data   "../00_TB/PATTERN/p1/data.dat"
	`define Status "../00_TB/PATTERN/p1/status.dat"
`elsif p2
	`define Inst   "../00_TB/PATTERN/p2/inst.dat"
	`define Data   "../00_TB/PATTERN/p2/data.dat"
	`define Status "../00_TB/PATTERN/p2/status.dat"
`elsif p3
	`define Inst   "../00_TB/PATTERN/p3/inst.dat"
	`define Data   "../00_TB/PATTERN/p3/data.dat"
	`define Status "../00_TB/PATTERN/p3/status.dat"
`elsif p4
	`define Inst   "../00_TB/PATTERN/p4/inst.dat"
	`define Data   "../00_TB/PATTERN/p4/data.dat"
	`define Status "../00_TB/PATTERN/p4/status.dat"
`elsif p5
	`define Inst   "../00_TB/PATTERN/p5/inst.dat"
	`define Data   "../00_TB/PATTERN/p5/data.dat"
	`define Status "../00_TB/PATTERN/p5/status.dat"
`elsif p6
	`define Inst   "../00_TB/PATTERN/p6/inst.dat"
	`define Data   "../00_TB/PATTERN/p6/data.dat"
	`define Status "../00_TB/PATTERN/p6/status.dat"
`elsif p7
	`define Inst   "../00_TB/PATTERN/p7/inst.dat"
	`define Data   "../00_TB/PATTERN/p7/data.dat"
	`define Status "../00_TB/PATTERN/p7/status.dat"
`elsif p8
	`define Inst   "../00_TB/PATTERN/p8/inst.dat"
	`define Data   "../00_TB/PATTERN/p8/data.dat"
	`define Status "../00_TB/PATTERN/p8/status.dat"
`elsif p9
	`define Inst   "../00_TB/PATTERN/p9/inst.dat"
	`define Data   "../00_TB/PATTERN/p9/data.dat"
	`define Status "../00_TB/PATTERN/p9/status.dat"
`elsif p10
	`define Inst   "../00_TB/PATTERN/p10/inst.dat"
	`define Data   "../00_TB/PATTERN/p10/data.dat"
	`define Status "../00_TB/PATTERN/p10/status.dat"
`elsif p11
	`define Inst   "../00_TB/PATTERN/p11/inst.dat"
	`define Data   "../00_TB/PATTERN/p11/data.dat"
	`define Status "../00_TB/PATTERN/p11/status.dat"
`elsif p12
	`define Inst   "../00_TB/PATTERN/p12/inst.dat"
	`define Data   "../00_TB/PATTERN/p12/data.dat"
	`define Status "../00_TB/PATTERN/p12/status.dat"
`elsif p13
	`define Inst   "../00_TB/PATTERN/p13/inst.dat"
	`define Data   "../00_TB/PATTERN/p13/data.dat"
	`define Status "../00_TB/PATTERN/p13/status.dat"
`elsif p14
	`define Inst   "../00_TB/PATTERN/p14/inst.dat"
	`define Data   "../00_TB/PATTERN/p14/data.dat"
	`define Status "../00_TB/PATTERN/p14/status.dat"
`elsif p15
	`define Inst   "../00_TB/PATTERN/p15/inst.dat"
	`define Data   "../00_TB/PATTERN/p15/data.dat"
	`define Status "../00_TB/PATTERN/p15/status.dat"
`else
	`define Inst   "../00_TB/PATTERN/p0/inst.dat"
	`define Data   "../00_TB/PATTERN/p0/data.dat"
	`define Status "../00_TB/PATTERN/p0/status.dat"
`endif

module testbed;

	reg  rst_n;
	reg  clk = 0;
	wire            dmem_we;
	wire [ 31 : 0 ] dmem_addr;
	wire [ 31 : 0 ] dmem_wdata;
	wire [ 31 : 0 ] dmem_rdata;
	wire [  2 : 0 ] riscv_status;
	wire            riscv_status_valid;
	
	reg  [  2 : 0 ]	golden_status[`MAX_INST-1:0];
	reg  [  2 : 0 ]	output_status[`MAX_INST-1:0];
	reg  [ 31 : 0 ]	golden_data[`DATA_MEM-1:0];
	integer i,j,status_err_cnt,data_err_cnt,done,flag;

	core u_core (
		.i_clk(clk),
		.i_rst_n(rst_n),
		.o_status(riscv_status),
		.o_status_valid(riscv_status_valid),
		.o_we(dmem_we),
		.o_addr(dmem_addr),
		.o_wdata(dmem_wdata),
		.i_rdata(dmem_rdata)
	);

	data_mem  u_data_mem (
		.i_clk(clk),
		.i_rst_n(rst_n),
		.i_we(dmem_we),
		.i_addr(dmem_addr),
		.i_wdata(dmem_wdata),
		.o_rdata(dmem_rdata)
	);

	initial begin
		i = 0;
		j = 0;
		status_err_cnt = 0;
		data_err_cnt = 0;
		flag = 0;
		while ( i < `MAX_INST && flag == 0 ) begin
			@ (negedge clk)
			if (riscv_status_valid) begin
				output_status[i] = riscv_status;
				if (riscv_status == `INVALID_TYPE || riscv_status == `EOF_TYPE) begin
					flag = 1;
				end
				i = i + 1;
			end
		end
		
		
		for (j = 0; j < i; j = j + 1) begin
			if (output_status[j] !== golden_status[j]) begin
				$display(
					"[Error!] Status[%d]: Golden = %b, Yours = %b",
					j, golden_status[j], output_status[j]
				);
				status_err_cnt = status_err_cnt + 1;
			end else begin
				$display(
					"[Correct!] Status[%d]: Golden = %b, Yours = %b",
					j, golden_status[j], output_status[j]
				);
			end
		end
		
		for (j = 0; j < `DATA_MEM; j = j + 1) begin
			if (u_data_mem.mem_r[j] !== golden_data[j]) begin
				$display(
					"[Error!] Data[%d]: Golden = %b, Yours = %b",
					j, golden_data[j], u_data_mem.mem_r[j]
				);
				data_err_cnt = data_err_cnt + 1;
			end
		end
		
		
		if (j < `DATA_MEM && flag == 0) 
			done = 0;
		else 
			done = 1;
	end
	
	
	initial begin
		wait(done);
		if (data_err_cnt == 0 && status_err_cnt == 0) begin
			$display("PASS!");
		end else begin
			$display("  Wrong! Total error: %d", data_err_cnt+status_err_cnt);
			$display("  Data error: %d, Status error: %d", data_err_cnt,status_err_cnt);
		end
		#(7*`CYCLE)
		$finish;
	end
	initial begin
		$fsdbDumpfile("core.fsdb");
		$fsdbDumpvars(0, testbed, "+mda");
	end
	
	always #(`HCYCLE) clk = ~clk;
	
	
	integer k;
	// load data memory
	initial begin 
		rst_n = 1;
		#(0.25 * `CYCLE) rst_n = 0;
		#(`CYCLE) rst_n = 1;
		$readmemb (`Inst,   u_data_mem.mem_r);
		$readmemb (`Data,   golden_data);
		$readmemb (`Status, golden_status);
	end
	
	initial begin 
		# (`MAX_CYCLE * `CYCLE);
		$display("Timeout with %d cycles", `MAX_CYCLE);
        $finish;
	end
endmodule