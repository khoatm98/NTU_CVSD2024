module reg_file #(
    parameter ADDR_WIDTH   = 5,
    parameter DATA_WIDTH   = 32,
    parameter REG_AMOUNT   = 32
) (   
    input                     i_clk,
    input                     i_rst_n,
    input                     w_enable, 
    input  [  ADDR_WIDTH-1:0] w_addr,
    input  signed [  DATA_WIDTH-1:0] w_data,
    input  [  ADDR_WIDTH-1:0] r_addrA,
	input  [  ADDR_WIDTH-1:0] r_addrB,
    output signed [  DATA_WIDTH-1:0] r_dataA,
	output signed [  DATA_WIDTH-1:0] r_dataB
);

reg signed [DATA_WIDTH-1:0] reg_bank[0:REG_AMOUNT-1];


assign r_dataA =  reg_bank[r_addrA];
assign r_dataB =  reg_bank[r_addrB];
integer i;
always @(posedge i_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
        for(i=0; i<REG_AMOUNT; i=i+1)
            reg_bank[i] <= {DATA_WIDTH{1'b0}};
    end
    else begin
        if(w_enable) begin
            reg_bank[w_addr] <= w_data;
        end
    end
end
endmodule