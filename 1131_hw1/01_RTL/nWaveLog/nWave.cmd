verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2k41036/NTU_CVSD2024/1131_hw1/01_RTL/alu.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_alu"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/curr_state\[2:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/result_ready_r\[15:0\]} \
{/testbench/u_alu/result_wait_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/curr_state\[2:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/result_ready_r\[15:0\]} \
{/testbench/u_alu/result_wait_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 5986.264628 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 6237.085771 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 121196.776596 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 120569.723737 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 119959.392287 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 119742.013963 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 119323.978723 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 119583.160572 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 9305.464428 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvExit
