verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/MingKe/Study/NTU_CVSD2024/HW3/01_RTL/core.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/sobel"
wvGetSignalSetScope -win $_nWave1 "/sobel/u_sober_compare_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSetCursor -win $_nWave1 14519.053565 -snap {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/sobel"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 5134682.667395 -snap {("G1" 10)}
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/sobel"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 5444523.303532 -snap {("G1" 16)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 5531108.284425 -snap {("G1" 16)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 5445198.087995 -snap {("G1" 16)}
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/MingKe/Study/NTU_CVSD2024/HW3/01_RTL/core.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/sobel"
wvGetSignalSetScope -win $_nWave1 "/sobel/u_sober_compare_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvExpandBus -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 5113255.582652 -snap {("G1" 11)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 5121228.934632 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4935081095.389569 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 4935193451.392083 -snap {("G1" 17)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/sobel"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 12429.330434 -snap {("G1" 8)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 17253.873168 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 12429.330434 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 17049.443391 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 14800.715845 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 12347.558523 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 11161.865817 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 5151.630377 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 10916.550085 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 12388.444478 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 13737.681006 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 15986.408551 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 13533.251229 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 11080.093906 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 13737.681006 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 13655.909095 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 15986.408551 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 18480.451829 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 21056.267018 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 23264.108608 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/median_inst/med_e_wait_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/median_inst/med_e_wait_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 6301016.354595 -snap {("G1" 19)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6192815.762293 -snap {("G1" 24)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6405880.652938 -snap {("G1" 22)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6403950.835844 -snap {("G1" 28)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 5165076.888499 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSetCursor -win $_nWave1 5160459.716476 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 5152428.247730 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 5166564.509288 -snap {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 5173259.405438 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 9164005.445904 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 9189603.852140 -snap {("G2" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 9166295.275942 -snap {("G1" 9)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 12834.269428 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 15106.566310 -snap {("G1" 15)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbed/u_core/x_origin_r\[2:0\]} \
{/testbed/u_core/y_origin_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbed/u_core/x_origin_r\[2:0\]} \
{/testbed/u_core/y_origin_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetCursor -win $_nWave1 9159211.431244 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbed/u_core/x_origin_r\[2:0\]} \
{/testbed/u_core/y_origin_r\[2:0\]} \
{/testbed/u_core/cnt\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbed/u_core/x_origin_r\[2:0\]} \
{/testbed/u_core/y_origin_r\[2:0\]} \
{/testbed/u_core/cnt\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 12918.428571 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 15359.043741 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 12708.030712 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 69519.660726 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 67061.612774 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 72990.624454 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 72898.650349 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 75221.442717 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 91716.634900 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbed/u_core/x_origin_r\[2:0\]} \
{/testbed/u_core/y_origin_r\[2:0\]} \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbed/u_core/x_origin_r\[2:0\]} \
{/testbed/u_core/y_origin_r\[2:0\]} \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 5 6 7 8 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 96181.277478 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 12160.996277 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 14854.088879 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 12245.155421 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 14896.168450 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 13170.906003 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 10604.052117 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 12792.189856 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 15316.964169 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 4823420.906215 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 4825651.123525 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 4823425.114173 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 4821194.896862 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 4825823.649771 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 4823761.750748 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 4825360.774480 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 4828053.867081 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 4823256.795885 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 4825865.729343 -snap {("G1" 12)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbed/u_core/x_origin_r\[2:0\]} \
{/testbed/u_core/y_origin_r\[2:0\]} \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/in_data_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbed/u_core/x_origin_r\[2:0\]} \
{/testbed/u_core/y_origin_r\[2:0\]} \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/in_data_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetPosition -win $_nWave1 {("G3" 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 12708.030712 -snap {("G3" 9)}
wvSetCursor -win $_nWave1 67087.461470 -snap {("G3" 9)}
wvSetCursor -win $_nWave1 71850.869009 -snap {("G3" 9)}
wvSetCursor -win $_nWave1 73940.119753 -snap {("G3" 9)}
wvSetCursor -win $_nWave1 76422.814495 -snap {("G3" 9)}
wvSetCursor -win $_nWave1 90477.391507 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 9156883.300939 -snap {("G3" 8)}
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSetCursor -win $_nWave1 9147377.525648 -snap {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetCursor -win $_nWave1 9151964.198985 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 9154362.734583 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8982867.439330 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 8985013.497497 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8987454.112666 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8989936.807408 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8991914.547287 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8983035.757618 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8978322.845565 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8980468.903732 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8982614.961899 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8985097.656640 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8987959.067529 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8990147.205268 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 8992040.786003 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 9152025.214364 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 9154002.954243 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 9156653.967272 -snap {("G3" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbed/u_core/x_origin_r\[2:0\]} \
{/testbed/u_core/y_origin_r\[2:0\]} \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/x_r\[2:0\]} \
{/testbed/u_core/y_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 10 11 )} 
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/i_rst_n} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/o_out_data\[13:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3\]} \
{/testbed/u_core/sram_wen_ready_r\[2\]} \
{/testbed/u_core/sram_wen_ready_r\[1\]} \
{/testbed/u_core/sram_wen_ready_r\[0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/out_data_wait_r\[13:0\]} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbed/u_core/x_origin_r\[2:0\]} \
{/testbed/u_core/y_origin_r\[2:0\]} \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/in_data_r\[7:0\]} \
{/testbed/u_core/x_r\[2:0\]} \
{/testbed/u_core/y_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 10 11 )} 
wvSetPosition -win $_nWave1 {("G3" 11)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 9152656.407942 -snap {("G3" 3)}
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSetCursor -win $_nWave1 9149668.758338 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 9151814.816505 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 9149879.156197 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 9151856.896076 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 9154129.192959 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 9156738.126416 -snap {("G3" 10)}
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSetCursor -win $_nWave1 9154549.988678 -snap {("G3" 11)}
wvSetCursor -win $_nWave1 9156780.205988 -snap {("G3" 10)}
wvSetCursor -win $_nWave1 9158884.184583 -snap {("G3" 10)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
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
wvSetCursor -win $_nWave1 4827993.414594 -snap {("G1" 12)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 5104404.941860 -snap {("G1" 10)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
