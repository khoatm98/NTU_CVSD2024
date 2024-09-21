verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2k41036/CVSD_2024/1131_hw1/01_RTL/alu.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_alu"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/result_r\[15:0\]} \
{/testbench/u_alu/result_w\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/result_r\[15:0\]} \
{/testbench/u_alu/result_w\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 935.812608 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_alu"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/result_r\[15:0\]} \
{/testbench/u_alu/result_w\[15:0\]} \
{/testbench/u_alu/i_rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/result_r\[15:0\]} \
{/testbench/u_alu/result_w\[15:0\]} \
{/testbench/u_alu/i_rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_alu"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/result_r\[15:0\]} \
{/testbench/u_alu/result_w\[15:0\]} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/curr_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/result_r\[15:0\]} \
{/testbench/u_alu/result_w\[15:0\]} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/curr_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/result_r\[15:0\]} \
{/testbench/u_alu/result_w\[15:0\]} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/result_r\[15:0\]} \
{/testbench/u_alu/result_w\[15:0\]} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetCursor -win $_nWave1 3409.509261 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 6671.694047 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvGoToGroup -win $_nWave1 "G2"
wvGoToGroup -win $_nWave1 "G1"
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 123997.702730 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetRadix -win $_nWave1 -format Bin
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetRadix -win $_nWave1 -format Bin
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 122745.578089 -snap {("G1" 9)}
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 124557.952534 -snap {("G1" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 123484.416561 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 122728.273831 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 122728.273831 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 125052.712591 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 123307.049748 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_alu/data_accumulated_index_w\[3:0\]} \
{/testbench/u_alu/result_ready_r\[15:0\]} \
{/testbench/u_alu/result_wait_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_alu/data_accumulated_index_w\[3:0\]} \
{/testbench/u_alu/result_ready_r\[15:0\]} \
{/testbench/u_alu/result_wait_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 123423.738440 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 123405.068250 -snap {("G2" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_alu/data_accumulated_index_w\[3:0\]} \
{/testbench/u_alu/result_ready_r\[15:0\]} \
{/testbench/u_alu/result_wait_r\[15:0\]} \
{/testbench/k\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_alu/data_accumulated_index_w\[3:0\]} \
{/testbench/u_alu/result_ready_r\[15:0\]} \
{/testbench/u_alu/result_wait_r\[15:0\]} \
{/testbench/k\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 155279.764504 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 155293.767147 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_alu"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_alu/data_accumulated_index_w\[3:0\]} \
{/testbench/u_alu/result_ready_r\[15:0\]} \
{/testbench/u_alu/result_wait_r\[15:0\]} \
{/testbench/k\[31:0\]} \
{/testbench/u_alu/data_accumulated_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_alu/data_accumulated_index_w\[3:0\]} \
{/testbench/u_alu/result_ready_r\[15:0\]} \
{/testbench/u_alu/result_wait_r\[15:0\]} \
{/testbench/k\[31:0\]} \
{/testbench/u_alu/data_accumulated_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetCursor -win $_nWave1 152119.834704 -snap {("G2" 16)}
wvSetCursor -win $_nWave1 155424.458483 -snap {("G2" 16)}
wvSetCursor -win $_nWave1 72499.296633 -snap {("G2" 16)}
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_alu/data_accumulated_index_w\[3:0\]} \
{/testbench/u_alu/result_ready_r\[15:0\]} \
{/testbench/u_alu/result_wait_r\[15:0\]} \
{/testbench/k\[31:0\]} \
{/testbench/u_alu/data_accumulated_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_alu/i_clk} \
{/testbench/u_alu/i_in_valid} \
{/testbench/u_alu/i_inst\[3:0\]} \
{/testbench/u_alu/next_state\[1:0\]} \
{/testbench/u_alu/o_busy} \
{/testbench/u_alu/o_data\[15:0\]} \
{/testbench/u_alu/o_out_valid} \
{/testbench/u_alu/i_rst_n} \
{/testbench/u_alu/curr_state\[1:0\]} \
{/testbench/u_alu/data_a_r\[15:0\]} \
{/testbench/u_alu/data_b_r\[15:0\]} \
{/testbench/u_alu/i_data_a\[15:0\]} \
{/testbench/u_alu/i_data_b\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_alu/data_accumulated_index_w\[3:0\]} \
{/testbench/u_alu/result_ready_r\[15:0\]} \
{/testbench/u_alu/result_wait_r\[15:0\]} \
{/testbench/k\[31:0\]} \
{/testbench/u_alu/data_accumulated_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvExit
