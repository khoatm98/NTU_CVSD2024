verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2k41036/NTU_CVSD2024/lab2/Lab2_alu.fsdb}
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2k41036/NTU_CVSD2024/lab2/Lab2_alu.vcd.fsdb" \
           "/home/raid7_2/user12/r2k41036/NTU_CVSD2024/lab2/Lab2_alu.vcd"
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2k41036/NTU_CVSD2024/lab2/Lab2_alu.vcd.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_alu"
wvGetSignalSetScope -win $_nWave1 "/test_alu/my_alu"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_alu/my_alu/alu_out\[7:0\]} \
{/test_alu/my_alu/clk} \
{/test_alu/my_alu/inputA\[7:0\]} \
{/test_alu/my_alu/inputB\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_alu/my_alu/alu_out\[7:0\]} \
{/test_alu/my_alu/clk} \
{/test_alu/my_alu/inputA\[7:0\]} \
{/test_alu/my_alu/inputB\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 35533.561590 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 62452.926430 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 99601.649911 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 104985.522879 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 148056.506624 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 85603.580193 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 112119.154561 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 118579.802123 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 109965.605374 -snap {("G1" 4)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 102026.495822 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvResizeWindow -win $_nWave1 475 270 1103 332
wvResizeWindow -win $_nWave1 475 270 1103 332
wvResizeWindow -win $_nWave1 475 270 1103 362
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 2491446.772124 -snap {("G1" 4)}
wvExit
