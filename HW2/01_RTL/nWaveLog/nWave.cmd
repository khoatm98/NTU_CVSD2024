verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2k41036/NTU_CVSD2024/HW2/01_RTL/core.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/curr_pc\[31:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/o_status\[2:0\]} \
{/testbed/u_core/o_status_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/curr_pc\[31:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/o_status\[2:0\]} \
{/testbed/u_core/o_status_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 277.394366 -snap {("G1" 2)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 305.845070 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 145.809859 -snap {("G1" 4)}
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/curr_pc\[31:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/o_status\[2:0\]} \
{/testbed/u_core/o_status_valid} \
{/testbed/u_core/imm_r\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 256.056338 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetRadix -win $_nWave1 -format Hex
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/curr_pc\[31:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/o_status\[2:0\]} \
{/testbed/u_core/o_status_valid} \
{/testbed/u_core/imm_r\[11:0\]} \
{/testbed/u_core/i_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/curr_pc\[31:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/o_status\[2:0\]} \
{/testbed/u_core/o_status_valid} \
{/testbed/u_core/imm_r\[11:0\]} \
{/testbed/u_core/i_rdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/u_int_reg_file"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/curr_pc\[31:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/o_status\[2:0\]} \
{/testbed/u_core/o_status_valid} \
{/testbed/u_core/imm_r\[11:0\]} \
{/testbed/u_core/i_rdata\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrA\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrB\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataA\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataB\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetCursor -win $_nWave1 408.978873 -snap {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/curr_pc\[31:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/o_status\[2:0\]} \
{/testbed/u_core/o_status_valid} \
{/testbed/u_core/imm_r\[11:0\]} \
{/testbed/u_core/i_rdata\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrA\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrB\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataA\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataB\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 520.173709 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 248.943662 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetCursor -win $_nWave1 48.366197 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 24.183099 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 549.098592 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 146.046948 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 553.840376 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1144.311033 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 550.165493 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1855.875000 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 1946.739437 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/u_alu"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/curr_pc\[31:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/o_status\[2:0\]} \
{/testbed/u_core/o_status_valid} \
{/testbed/u_core/imm_r\[11:0\]} \
{/testbed/u_core/i_rdata\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrA\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrB\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataA\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataB\[31:0\]} \
{/testbed/u_core/u_alu/o_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/curr_pc\[31:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/o_status\[2:0\]} \
{/testbed/u_core/o_status_valid} \
{/testbed/u_core/imm_r\[11:0\]} \
{/testbed/u_core/i_rdata\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrA\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrB\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataA\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataB\[31:0\]} \
{/testbed/u_core/u_alu/o_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 553.873239 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 549.295775 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 549.295775 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 280.751174 289.906103
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 447.001228 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 250.320688 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 165.046607 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 544.653804 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 2849.219484 -snap {("G1" 12)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 3051.930751 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 27.028169 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 448.217136 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 551.825117 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 459.478873 -snap {("G1" 12)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1511.325117 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 2245.805022 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2851.686477 -snap {("G1" 12)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/u_float_reg_file"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/u_int_reg_file"
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/curr_pc\[31:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/o_status\[2:0\]} \
{/testbed/u_core/o_status_valid} \
{/testbed/u_core/imm_r\[11:0\]} \
{/testbed/u_core/i_rdata\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrA\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrB\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataA\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataB\[31:0\]} \
{/testbed/u_core/u_alu/o_data\[31:0\]} \
{/testbed/u_core/u_int_reg_file/w_addr\[4:0\]} \
{/testbed/u_core/u_int_reg_file/w_data\[31:0\]} \
{/testbed/u_core/u_int_reg_file/w_enable} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/curr_pc\[31:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/o_status\[2:0\]} \
{/testbed/u_core/o_status_valid} \
{/testbed/u_core/imm_r\[11:0\]} \
{/testbed/u_core/i_rdata\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrA\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_addrB\[4:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataA\[31:0\]} \
{/testbed/u_core/u_int_reg_file/r_dataB\[31:0\]} \
{/testbed/u_core/u_alu/o_data\[31:0\]} \
{/testbed/u_core/u_int_reg_file/w_addr\[4:0\]} \
{/testbed/u_core/u_int_reg_file/w_data\[31:0\]} \
{/testbed/u_core/u_int_reg_file/w_enable} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 3249.916923 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 3540.469740 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2253.494092 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 3560.139296 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 4153.386256 -snap {("G1" 12)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 3566.414319 -snap {("G1" 15)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 440.096831 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 1655.178991 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 2251.609741 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 1647.032276 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 2253.091548 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetRadix -win $_nWave1 -format Hex
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1045.089202 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 441.934272 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 1052.676056 -snap {("G1" 15)}
