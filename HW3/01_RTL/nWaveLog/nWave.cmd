verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2k41036/NTU_CVSD2024/HW3/01_RTL/core.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 68890.938652 -snap {("G1" 4)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8215552.631579 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 8186315.789474 -snap {("G1" 7)}
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 8217942.780015 -snap {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 8214123.154797 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 8217802.184403 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 8213795.672228 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 8215834.652492 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8218272.563677 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 8214061.626177 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 8211756.691966 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8218006.609729 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8216011.955124 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 8211801.017624 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8216011.955124 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 8212066.971572 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8216011.955124 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 8220932.103151 -snap {("G1" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 8217997.621554 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 8214008.312344 -snap {("G1" 18)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8216002.966950 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 8218086.272871 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 8222075.582082 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 8218086.272871 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 8221898.279450 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 8217820.318924 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 8222075.582082 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 8219814.973529 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8223804.282739 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8226020.565634 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8230054.200503 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8238254.447213 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 8244105.434055 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 8248050.417608 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8250045.072213 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8377287.172283 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8373874.096625 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8378040.708467 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8381808.389389 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 19769.243421 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 21941.200658 -snap {("G1" 8)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8238395.289674 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 8249644.602851 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 8254258.137521 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8257984.453986 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8262243.101374 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8249644.602851 -snap {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetCursor -win $_nWave1 8254613.024804 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetCursor -win $_nWave1 8257629.566704 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8262775.432297 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8254258.137521 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8248402.497364 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetCursor -win $_nWave1 8253725.806599 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8257984.453987 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8261710.770451 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8266146.861480 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 9306432.169853 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 9310158.486317 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 9314062.246423 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8261747.477250 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8765881.913594 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8249576.305049 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 27148.877098 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 22357.898787 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 19873.687811 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 15969.927705 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 18099.251399 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 22712.786069 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 19341.356887 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 15615.040423 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 17921.807758 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 19696.244169 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 9894212.119506 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 9897406.105047 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 9903084.301564 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9902019.639717 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9897938.435970 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9902197.083358 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 10405656.746663 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 10410802.612256 -snap {("G1" 20)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 10399978.550145 -snap {("G1" 28)}
wvSetCursor -win $_nWave1 10403172.535686 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 10410802.612256 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 10406543.964868 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 10410092.837692 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 10414706.372362 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 10406898.852151 -snap {("G1" 28)}
wvSetCursor -win $_nWave1 10398913.888298 -snap {("G1" 28)}
wvSetCursor -win $_nWave1 10390396.593522 -snap {("G1" 28)}
wvSetCursor -win $_nWave1 8259260.385556 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 8253759.632680 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8259082.941915 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8254646.850886 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8258195.723709 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8769605.349340 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 8762330.160053 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8764991.814670 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8769960.236623 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8801900.092033 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8798281.216141 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 8252243.276355 -snap {("G1" 23)}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[3:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 29 30 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[3:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 29 30 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8250291.396303 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetCursor -win $_nWave1 8253662.825485 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8249049.290814 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8254195.156408 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8249936.509020 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8253662.825485 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8250113.952661 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8254372.600049 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8250823.727226 -snap {("G1" 21)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8255259.818255 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8249404.178097 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8253662.825485 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8569132.361825 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 8753503.612906 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8749954.740083 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8754035.943830 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8750132.183724 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8754035.943830 -snap {("G1" 2)}
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetCursor -win $_nWave1 8750087.822814 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8753902.861099 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8756032.184793 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8758250.230307 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8762065.268592 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8742191.580782 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8746006.619067 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8750176.544634 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8753902.861099 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8758250.230307 -snap {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 8750442.710096 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8753814.139278 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8741925.415320 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 8744941.957220 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8749378.048249 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8754169.026560 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8757451.733922 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8730302.856824 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8733940.451467 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8738908.873420 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8742191.580782 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8745296.844502 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8749644.213711 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8742191.580782 -snap {("G1" 29)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 8745563.009964 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8750265.266455 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8752572.033790 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8757363.012101 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8249655.823178 -snap {("G1" 29)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetCursor -win $_nWave1 8254091.914207 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8250010.710460 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8253737.026925 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8258616.727057 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9294261.872974 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 9297810.745797 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 9302424.280468 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9306061.875111 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 9301714.505903 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 9305795.709650 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 9310054.357038 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 9302069.393185 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 9305795.709650 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 9298165.633080 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 9301448.340441 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 9302158.115006 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 9306505.484214 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 9298165.633080 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 9301803.227723 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 9301803.227723 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 9305618.266009 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 9301891.949544 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetCursor -win $_nWave1 9306061.875111 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9310054.357038 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9849605.512205 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 9853864.159593 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9850226.564949 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9853952.881413 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9842064.157455 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 9845967.917561 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 9849960.399487 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 9854573.934157 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8249815.725237 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8253808.207163 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8257889.410910 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8757603.454722 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8761862.102110 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8754232.025540 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8757958.342004 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8761507.214828 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8765943.305857 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 8770024.509604 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8758047.063825 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8762039.545751 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8765943.305857 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8770201.953245 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8774105.713350 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8749848.559255 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8754462.093925 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8758099.688569 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8753929.763002 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8757922.244928 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8762180.892316 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8765995.930601 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8757921.231014 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8245699.438328 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8249869.363895 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8253861.845822 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8750257.085196 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8753894.679840 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8758153.327228 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8762057.087333 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8765872.125618 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8245983.145371 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8254056.831044 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8246160.589012 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8249886.905476 -snap {("G1" 21)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8758178.287222 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8753830.918013 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 8757823.399939 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetRadix -win $_nWave1 -1Com
wvSetRadix -win $_nWave1 -Unsigned
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 8754097.083475 -snap {("G1" 21)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 10426523.924085 -snap {("G1" 32)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 10422620.163980 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 10397866.776037 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 10409932.943637 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 10413659.260101 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 10418006.629310 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 10421910.389415 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 10425902.871341 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 10430871.293294 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 10961554.337810 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 10980363.363773 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 10986041.560290 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8754833.880577 -snap {("G1" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8762288.238214 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8749881.752356 -snap {("G1" 21)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 10986782.544940 -snap {("G1" 23)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
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
wvSetCursor -win $_nWave1 8158162.785669 -snap {("G1" 28)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8224736.143698 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8239666.809097 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 8243544.904006 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 8246242.709160 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8250795.255357 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8263778.442661 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8251301.093824 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8249614.965602 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8245568.257871 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8250458.029713 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8253830.286155 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246074.096338 -snap {("G1" 19)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8249952.191247 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8254167.511800 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246242.709160 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8250289.416891 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8245231.032227 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 8250120.804069 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8245568.257871 -snap {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetCursor -win $_nWave1 8242196.001429 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246242.709160 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8249783.578424 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8242533.227073 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8245905.483516 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8250458.029713 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246074.096338 -snap {("G1" 21)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 8245905.483516 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8249783.578424 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8251132.481001 -snap {("G1" 28)}
wvSetCursor -win $_nWave1 8245736.870693 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8250120.804069 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8246242.709160 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8250120.804069 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 8245062.419405 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetCursor -win $_nWave1 8249277.739958 -snap {("G1" 30)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8246242.709160 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8245568.257871 -snap {("G1" 29)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/cnt_next_w\[11:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetPosition -win $_nWave1 {("G1" 39)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 8246411.321982 -snap {("G1" 39)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSetCursor -win $_nWave1 8250458.029713 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8254673.350266 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8246411.321982 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 8250458.029713 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8253661.673333 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetCursor -win $_nWave1 8246411.321982 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 8250458.029713 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8253661.673333 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8250120.804069 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246242.709160 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8250289.416891 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246242.709160 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8249783.578424 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8245905.483516 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8249783.578424 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/cnt_next_w\[11:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/cnt_next_w\[11:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSetPosition -win $_nWave1 {("G1" 36)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8253998.898978 -snap {("G1" 36)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8246074.096338 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8250289.416891 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246748.547626 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8245736.870693 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8246411.321982 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246074.096338 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8261586.475973 -snap {("G1" 17)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8273347.220316 -snap {("G1" 17)}
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 80245369.704588 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 78848693.966059 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 77959900.314268 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 154142213.324953 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 111353147.517285 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 139667573.852923 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 136620281.332495 -snap {("G1" 24)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8674223.758642 -snap {("G1" 12)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8245018.102753 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 8253980.092313 -snap {("G1" 36)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/cnt_next_w\[11:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/cnt_next_w\[11:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSetPosition -win $_nWave1 {("G1" 37)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/cnt_next_w\[11:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/cnt_next_w\[11:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSetPosition -win $_nWave1 {("G1" 38)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 54 )} 
wvSetCursor -win $_nWave1 8257785.868703 -snap {("G1" 36)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 50)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSetCursor -win $_nWave1 8245877.471615 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8249314.947063 -snap {("G1" 31)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 54)}
wvSetPosition -win $_nWave1 {("G1" 54)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/cnt_next_w\[11:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 51 52 53 54 )} 
wvSetPosition -win $_nWave1 {("G1" 54)}
wvSetPosition -win $_nWave1 {("G1" 54)}
wvSetPosition -win $_nWave1 {("G1" 54)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/cnt_next_w\[11:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 51 52 53 54 )} 
wvSetPosition -win $_nWave1 {("G1" 54)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 51 )} 
wvSetPosition -win $_nWave1 {("G1" 51)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 56)}
wvSelectSignal -win $_nWave1 {( "G1" 54 )} 
wvSetPosition -win $_nWave1 {("G1" 54)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 58)}
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 57 )} 
wvSetPosition -win $_nWave1 {("G1" 57)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 60)}
wvSelectSignal -win $_nWave1 {( "G1" 60 )} 
wvExpandBus -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 63)}
wvSetPosition -win $_nWave1 {("G1" 63)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/cnt_next_w\[11:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1\]\[1:0\]} \
{/testbed/u_core/sram_select1_delay_r\[0\]\[1:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1\]\[1:0\]} \
{/testbed/u_core/sram_select2_delay_r\[0\]\[1:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1\]\[1:0\]} \
{/testbed/u_core/sram_select3_delay_r\[0\]\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[1:0\]} \
{/testbed/u_core/sram_select_r1\[2:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 63 )} 
wvSetPosition -win $_nWave1 {("G1" 63)}
wvSetPosition -win $_nWave1 {("G1" 63)}
wvSetPosition -win $_nWave1 {("G1" 63)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_data\[7:0\]} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/i_op_valid} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/o_in_ready} \
{/testbed/u_core/o_op_ready} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_select_r\[1:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/cnt_next_w\[11:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1\]\[1:0\]} \
{/testbed/u_core/sram_select1_delay_r\[0\]\[1:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1\]\[1:0\]} \
{/testbed/u_core/sram_select2_delay_r\[0\]\[1:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1\]\[1:0\]} \
{/testbed/u_core/sram_select3_delay_r\[0\]\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[1:0\]} \
{/testbed/u_core/sram_select_r1\[2:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 63 )} 
wvSetPosition -win $_nWave1 {("G1" 63)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 51 52 53 54 55 56 57 58 59 60 61 62 63 )} \
           
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 50)}
wvScrollUp -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 50)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvScrollUp -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvScrollDown -win $_nWave1 9
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetCursor -win $_nWave1 8253857.325334 -snap {("G1" 32)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8257908.635683 -snap {("G1" 44)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 45 46 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 45 46 47 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8754071.386483 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8757508.861931 -snap {("G1" 13)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8749897.309153 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 8753948.619503 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
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
wvSetCursor -win $_nWave1 8246262.044042 -snap {("G1" 13)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8741970.557015 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 8726176.585002 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8730718.963273 -snap {("G1" 21)}
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetCursor -win $_nWave1 8753676.388584 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 8750484.447097 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8753430.854623 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8757113.864032 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8754167.456505 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8750238.913136 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8754044.689525 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8758218.766854 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8749870.612195 -snap {("G1" 29)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 30 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 30 31 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 8743486.729221 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8748274.641452 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8743486.729221 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8750238.913136 -snap {("G1" 29)}
wvSetCursor -win $_nWave1 8753676.388584 -snap {("G1" 41)}
wvSetCursor -win $_nWave1 8743363.962240 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8746310.369767 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8750607.214077 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8741890.758477 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8746064.835807 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8749993.379175 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8754781.291406 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8757973.232894 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8761533.475322 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8766075.853592 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 8758218.766854 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8762024.543243 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8766321.387553 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8762515.611164 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8757850.465913 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 8762147.310223 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8766075.853592 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8761901.776263 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 8765462.018691 -snap {("G1" 29)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8761410.708341 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 8757604.931953 -snap {("G1" 38)}
wvSetCursor -win $_nWave1 8765584.785671 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 8761901.776263 -snap {("G1" 13)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8765584.785671 -snap {("G1" 29)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8761723.764142 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 8766020.608452 -snap {("G1" 30)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8761969.298103 -snap {("G1" 13)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8766143.375432 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8758040.754734 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8758163.521714 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8761969.298103 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8765897.841471 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 8258293.208109 -snap {("G1" 30)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8261976.217517 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 8253775.383234 -snap {("G1" 28)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8262860.139775 -snap {("G1" 17)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8265929.314282 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8766474.846278 -snap {("G1" 31)}
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8761901.776263 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 8757113.864032 -snap {("G1" 36)}
wvSetCursor -win $_nWave1 8753062.553682 -snap {("G1" 40)}
wvSetCursor -win $_nWave1 8766198.620572 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 8761901.776263 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 8758341.533835 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 8754044.689525 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 8761656.242302 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 8765339.251710 -snap {("G1" 28)}
wvSetCursor -win $_nWave1 8761901.776263 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 8757482.164973 -snap {("G1" 37)}
wvSetCursor -win $_nWave1 8753676.388584 -snap {("G1" 39)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8256785.343593 -snap {("G1" 41)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 8249910.392699 -snap {("G1" 22)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 8246350.150270 -snap {("G1" 5)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8253347.868146 -snap {("G1" 25)}
wvSetCursor -win $_nWave1 8250155.926659 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8245736.315369 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 8258135.780377 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8237879.228631 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 8246104.616310 -snap {("G1" 5)}
wvScrollDown -win $_nWave1 3
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 3
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetCursor -win $_nWave1 8249910.392699 -snap {("G1" 24)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetCursor -win $_nWave1 8246104.616310 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8250155.926659 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 8253961.703048 -snap {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 8245981.849330 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8250033.159679 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8255066.605870 -snap {("G1" 17)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8246350.150270 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 8249910.392699 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 8253593.402107 -snap {("G1" 18)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8245981.849330 -snap {("G1" 18)}
wvScrollDown -win $_nWave1 8
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetPosition -win $_nWave1 {("G1" 28)}
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetPosition -win $_nWave1 {("G1" 28)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 28)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8254360.695733 -snap {("G1" 30)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetCursor -win $_nWave1 8245981.849330 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 8250278.693639 -snap {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetCursor -win $_nWave1 8253716.169087 -snap {("G1" 18)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 29 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetCursor -win $_nWave1 8250088.404819 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 8254262.482149 -snap {("G1" 33)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 41)}
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 8250862.266005 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select3_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select1_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select2_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1:0\]} \
{/testbed/u_core/sram_select3_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select3_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1:0\]} \
{/testbed/u_core/sram_select1_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select1_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1:0\]} \
{/testbed/u_core/sram_select2_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select2_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 13
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvScrollUp -win $_nWave1 13
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetCursor -win $_nWave1 8245349.837011 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetCursor -win $_nWave1 8250361.136097 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246352.096828 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8250528.179399 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8253869.045456 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 8250695.222702 -snap {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetCursor -win $_nWave1 8245959.545066 -snap {("G1" 5)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 39 40 41 42 43 44 45 46 47 48 49 50 )} \
           
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 39 40 41 42 43 44 45 46 47 48 49 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 24)}
wvScrollDown -win $_nWave1 4
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 58 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 44 45 46 47 48 49 50 51 52 53 54 55 56 \
           57 58 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 44 45 46 47 48 49 50 51 52 53 54 55 56 \
           57 58 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 7
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8794120.495525 -snap {("G1" 43)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8774576.429092 -snap {("G1" 41)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8766224.263950 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 8258120.297513 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 8261586.446048 -snap {("G1" 51)}
wvSetCursor -win $_nWave1 8765664.668885 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 8769673.708153 -snap {("G1" 42)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8789217.774587 -snap {("G1" 41)}
wvScrollDown -win $_nWave1 4
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetPosition -win $_nWave1 {("G1" 25)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 41)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetPosition -win $_nWave1 {("G1" 44)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_r\[16:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_r\[16:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSetPosition -win $_nWave1 {("G1" 45)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_r\[16:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_ready_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/depth_ready_r\[5:0\]} \
{/testbed/u_core/depth_wait_r\[5:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_r\[16:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_ready_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSelectSignal -win $_nWave1 {( "G1" 45 46 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetCursor -win $_nWave1 8774016.834028 -snap {("G1" 44)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSetRadix -win $_nWave1 -format Bin
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8766083.321163 -snap {("G1" 42)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8773735.992475 -snap {("G1" 43)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvScrollDown -win $_nWave1 7
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8765916.277859 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 8769883.556302 -snap {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetRadix -win $_nWave1 -format UDec
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 5
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8753889.160055 -snap {("G1" 46)}
wvSetCursor -win $_nWave1 8273777.475090 -snap {("G1" 44)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8212744.028312 -snap {("G1" 40)}
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
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8578606.488583 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 8578606.488583 -snap {("G1" 30)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8295274.104337 -snap {("G1" 30)}
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 7
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 3
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8256781.532276 -snap {("G1" 30)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8254174.856017 -snap {("G1" 28)}
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 16 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 8245673.752544 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 8254348.347925 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 8258165.169892 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 8252266.445033 -snap {("G1" 14)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8246194.228267 -snap {("G1" 5)}
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8773826.492272 -snap {("G1" 31)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8762200.365813 -snap {("G1" 5)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 20)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 19 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8758175.353557 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 8761992.175525 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 8757958.488673 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8753924.801821 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8757958.488673 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8761818.683617 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8765808.997492 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8757871.742719 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 8761905.429571 -snap {("G1" 31)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8758131.980581 -snap {("G1" 36)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 8741997.233173 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 8746117.665979 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 8749891.114969 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 8754054.920752 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 8758045.234627 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 8761254.834917 -snap {("G1" 14)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 22)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 8257816.017428 -snap {("G1" 28)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 13 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 14 15 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 8249739.969129 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8253990.520866 -snap {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 13 14 15 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 8245793.028231 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8249870.088060 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8250867.666529 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 8250173.698898 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8253947.147889 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8258110.953671 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 8249870.088060 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 8254033.893843 -snap {("G1" 18)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetCursor -win $_nWave1 8249913.461037 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 8250954.412483 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 8253860.401935 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 8258241.072602 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 8253947.147889 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 8258024.207718 -snap {("G1" 23)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 8253947.147889 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8250954.412483 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetCursor -win $_nWave1 8254033.893843 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 8250780.920575 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 8245662.909301 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8250000.206991 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetCursor -win $_nWave1 8245923.147162 -snap {("G1" 13)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8254147.869437 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 8257634.721422 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8262256.827541 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8265865.313898 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8270081.972112 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8245917.276962 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_select_r1\[2:0\]} \
{/testbed/u_core/sram_select_r2\[2:0\]} \
{/testbed/u_core/sram_select_r3\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 31 32 33 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_select_r1\[2:0\]} \
{/testbed/u_core/sram_select_r2\[2:0\]} \
{/testbed/u_core/sram_select_r3\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 31 32 33 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8241862.797909 -snap {("G1" 32)}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 8245876.732171 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 8249606.852899 -snap {("G1" 32)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8253985.690275 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8257877.990165 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8245957.821752 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8250133.935176 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8254147.869437 -snap {("G1" 38)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8249809.576852 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSetCursor -win $_nWave1 8255120.944410 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8253701.876742 -snap {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvScrollDown -win $_nWave1 15
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetCursor -win $_nWave1 8249971.756014 -snap {("G1" 13)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_select_r1\[2:0\]} \
{/testbed/u_core/sram_select_r2\[2:0\]} \
{/testbed/u_core/sram_select_r3\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_select_r1\[2:0\]} \
{/testbed/u_core/sram_select_r2\[2:0\]} \
{/testbed/u_core/sram_select_r3\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSetPosition -win $_nWave1 {("G1" 35)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvExpandBus -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_select_r1\[2:0\]} \
{/testbed/u_core/sram_select_r2\[2:0\]} \
{/testbed/u_core/sram_select_r3\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_wait_r\[0\]\[8:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/sram_select_r1\[2:0\]} \
{/testbed/u_core/sram_select_r2\[2:0\]} \
{/testbed/u_core/sram_select_r3\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSetPosition -win $_nWave1 {("G1" 38)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 18 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 18 19 )} 
wvSetRadix -win $_nWave1 -format UDec
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 28 29 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 27)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetCursor -win $_nWave1 8270049.536279 -snap {("G1" 28)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8765950.841903 -snap {("G1" 35)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetRadix -win $_nWave1 -format Bin
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 12 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 8754894.277527 -snap {("G1" 22)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8745933.878822 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 8249961.619815 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 8261922.333019 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 8265895.722490 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8757854.047235 -snap {("G1" 13)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetCursor -win $_nWave1 8777802.084173 -snap {("G1" 32)}
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3\]} \
{/testbed/u_core/sram_cen_ready_r\[2\]} \
{/testbed/u_core/sram_cen_ready_r\[1\]} \
{/testbed/u_core/sram_cen_ready_r\[0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/out_data_r\[13:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/sram_data_ready_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 6
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvScrollDown -win $_nWave1 5
wvScrollUp -win $_nWave1 6
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvScrollDown -win $_nWave1 11
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 8
wvScrollDown -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G1" 52 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 29)}
wvScrollUp -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 10526689.459860 -snap {("G1" 28)}
wvSetCursor -win $_nWave1 11118254.171473 -snap {("G1" 28)}
wvSetCursor -win $_nWave1 14037024.987336 -snap {("G1" 28)}
wvSetCursor -win $_nWave1 14615485.622655 -snap {("G1" 28)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 14674389.094331 -snap {("G1" 31)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 14598610.880846 -snap {("G1" 22)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 14585531.131425 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 14605641.347524 -snap {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 14642942.554803 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 14646348.317207 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 14660944.441794 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 14593964.447853 -snap {("G1" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 14597962.164197 -snap {("G1" 37)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 14602016.643250 -snap {("G1" 5)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 14605990.032721 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 14565473.623549 -snap {("G1" 36)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[1:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[1:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[1:0\]} \
{/testbed/u_core/conv_inst/out_data_w\[13:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[1:0\]} \
{/testbed/u_core/conv_inst/out_data_w\[13:0\]} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
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
wvSetCursor -win $_nWave1 8277395.995976 -snap {("G1" 37)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8785866.381897 -snap {("G1" 41)}
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8765723.638969 -snap {("G1" 38)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8762571.443872 -snap {("G1" 38)}
wvSetCursor -win $_nWave1 8765372.479698 -snap {("G1" 38)}
wvSetCursor -win $_nWave1 8769162.116405 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 8766225.147957 -snap {("G1" 38)}
wvSetCursor -win $_nWave1 8785832.398743 -snap {("G1" 40)}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetCursor -win $_nWave1 8765318.930484 -snap {("G1" 38)}
wvSetCursor -win $_nWave1 8770097.168070 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 8773722.037964 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 8776770.224010 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 8780642.244123 -snap {("G1" 32)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8785997.165556 -snap {("G1" 33)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[1:0\]} \
{/testbed/u_core/conv_inst/out_data_w\[13:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[1:0\]} \
{/testbed/u_core/conv_inst/out_data_w\[13:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cs\[2:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8765977.997737 -snap {("G1" 34)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetCursor -win $_nWave1 8762188.361031 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 8765648.464111 -snap {("G1" 39)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8781960.378630 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 8765648.464111 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 8781960.378630 -snap {("G1" 33)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 32)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8761117.376744 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 8762023.594217 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 8766389.914771 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8770179.551477 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8765648.464111 -snap {("G1" 2)}
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8766031.451328 -snap {("G1" 36)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8761775.357480 -snap {("G1" 43)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8744815.468357 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 8749630.443216 -snap {("G1" 41)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8746062.202919 -snap {("G1" 45)}
wvSetCursor -win $_nWave1 8741763.118224 -snap {("G1" 48)}
wvSetCursor -win $_nWave1 8749243.525593 -snap {("G1" 40)}
wvSetCursor -win $_nWave1 8757755.713290 -snap {("G1" 49)}
wvSetCursor -win $_nWave1 8761796.852903 -snap {("G1" 43)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetCursor -win $_nWave1 8757755.713290 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 8762054.797985 -snap {("G1" 44)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[1:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/out_data_w\[13:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[1:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/out_data_w\[13:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8757583.749902 -snap {("G1" 32)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8761968.816291 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8758185.621759 -snap {("G1" 32)}
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 3
wvScrollDown -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[1:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/out_data_w\[13:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[1:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/out_data_w\[13:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8761538.907821 -snap {("G1" 33)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8758099.640065 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8773662.326662 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 8761422.832535 -snap {("G1" 32)}
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8765807.898924 -snap {("G1" 41)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8773460.269681 -snap {("G1" 35)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8766065.844005 -snap {("G1" 36)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8770106.983619 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8773804.196457 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8778275.244540 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 8781542.548908 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 8786099.578685 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 8789882.773217 -snap {("G1" 34)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8770106.983619 -snap {("G1" 33)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8789538.846441 -snap {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/out_data_w\[13:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/conv_data_wait_r\[31:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/out_data_w\[13:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_data_r\[31:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_isFirst_signal_r} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8790054.736604 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 8773116.342905 -snap {("G1" 33)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8778791.134703 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 9361824.402891 -snap {("G1" 35)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 9357968.123920 -snap {("G1" 53)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 9350165.285198 -snap {("G1" 31)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 9353948.479730 -snap {("G1" 41)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 9350681.175361 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 9354464.369893 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 9345350.310339 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 9350079.303504 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 9354636.333281 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 56 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 40 41 42 43 44 45 46 47 48 49 50 51 52 53 \
           54 55 56 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 40 41 42 43 44 45 46 47 48 49 50 51 52 \
           53 54 55 56 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 39 40 41 42 43 44 45 46 47 48 49 50 51 \
           52 53 54 55 56 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 34 35 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/data_b_r\[7:0\]} \
{/testbed/u_core/median_inst/data_c_r\[7:0\]} \
{/testbed/u_core/median_inst/data_d_r\[7:0\]} \
{/testbed/u_core/median_inst/data_e_r\[7:0\]} \
{/testbed/u_core/median_inst/data_f_r\[7:0\]} \
{/testbed/u_core/median_inst/data_g_r\[7:0\]} \
{/testbed/u_core/median_inst/data_h_r\[7:0\]} \
{/testbed/u_core/median_inst/data_i_r\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 33 34 35 36 37 38 39 40 41 42 )} 
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/data_b_r\[7:0\]} \
{/testbed/u_core/median_inst/data_c_r\[7:0\]} \
{/testbed/u_core/median_inst/data_d_r\[7:0\]} \
{/testbed/u_core/median_inst/data_e_r\[7:0\]} \
{/testbed/u_core/median_inst/data_f_r\[7:0\]} \
{/testbed/u_core/median_inst/data_g_r\[7:0\]} \
{/testbed/u_core/median_inst/data_h_r\[7:0\]} \
{/testbed/u_core/median_inst/data_i_r\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 33 34 35 36 37 38 39 40 41 42 )} 
wvSetPosition -win $_nWave1 {("G1" 42)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 9350767.157055 -snap {("G1" 37)}
wvSetCursor -win $_nWave1 9176457.286592 -snap {("G1" 32)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetCursor -win $_nWave1 9181792.450699 -snap {("G1" 32)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 34 35 36 37 38 39 40 41 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 34 35 36 37 38 39 40 41 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 34 35 36 37 38 39 40 41 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 9169926.976940 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 9175687.750431 -snap {("G1" 41)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetCursor -win $_nWave1 9165670.883092 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 9169926.976940 -snap {("G1" 33)}
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8236995.504497 -snap {("G1" 33)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8257993.308920 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 12 13 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSetRadix -win $_nWave1 -format UDec
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSetPosition -win $_nWave1 {("G1" 47)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSetRadix -win $_nWave1 -format Hex
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8262034.448534 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 8265860.633912 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 8263023.238013 -snap {("G1" 15)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8266075.588147 -snap {("G1" 38)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 8263023.238013 -snap {("G1" 15)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8255026.940480 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 8257950.318073 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 8262765.292932 -snap {("G1" 15)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSetPosition -win $_nWave1 {("G1" 48)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8270331.681995 -snap {("G1" 48)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSetPosition -win $_nWave1 {("G1" 49)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8265817.643065 -snap {("G1" 47)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 50)}
wvSetPosition -win $_nWave1 {("G1" 50)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSetPosition -win $_nWave1 {("G1" 50)}
wvSetPosition -win $_nWave1 {("G1" 50)}
wvSetPosition -win $_nWave1 {("G1" 50)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/i_in_valid} \
{/testbed/u_core/i_op_mode\[3:0\]} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/y_origin_wait_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSetPosition -win $_nWave1 {("G1" 50)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8254167.123541 -snap {("G1" 50)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8255929.748266 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8258122.281461 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8258939.107553 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 8261819.494299 -snap {("G1" 50)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8245912.880927 -snap {("G1" 1)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvScrollUp -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvScrollDown -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvExpandBus -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8250040.002234 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 8253393.288296 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 8265645.679677 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 8269815.791832 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 8266032.597300 -snap {("G1" 47)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8255155.913021 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 8259068.080094 -snap {("G1" 11)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8254081.141848 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 8257950.318073 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8261991.457687 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8266204.560688 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSetCursor -win $_nWave1 8255413.858103 -snap {("G1" 45)}
wvSetCursor -win $_nWave1 8259111.070941 -snap {("G1" 45)}
wvSetCursor -win $_nWave1 8261604.540064 -snap {("G1" 45)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8259111.070941 -snap {("G1" 45)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8261991.457687 -snap {("G1" 45)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8253500.765413 -snap {("G1" 24)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/median/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/median/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8266140.074417 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 8258573.685354 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 8253930.673883 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 8257971.813497 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8262528.843273 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8265710.165948 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 11 12 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 11 12 13 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetCursor -win $_nWave1 8258143.776884 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 8262012.953110 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8254274.600659 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 8258573.685354 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8261840.989722 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8266741.946275 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8249545.607494 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetCursor -win $_nWave1 8245590.449575 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 8250835.332903 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 8249717.570882 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8253586.747108 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8249631.589188 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8246106.339738 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8249545.607494 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8250061.497658 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8246450.266514 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8258659.667048 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 8262184.916498 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8265968.111030 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8270009.250643 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8273964.408563 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8272330.756378 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8266569.982887 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8265882.129336 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8264592.403927 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8263130.715131 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 8267085.873050 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8266140.074417 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8270439.159113 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8274308.335338 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8278005.548176 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8282648.559647 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetCursor -win $_nWave1 8258745.648742 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8262528.843273 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8266398.019499 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8269923.268949 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8273878.426869 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8278349.474952 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8282476.596259 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8286001.845709 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8257799.850109 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246364.284820 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8240603.511328 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8245418.486187 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8230285.708060 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8233638.994122 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8246278.303126 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8234068.902592 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8245332.504493 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8233896.939204 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8237852.097123 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8241893.236737 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246708.211595 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8277567.041537 -snap {("G1" 25)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8757963.961712 -snap {("G2" 4)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8235797.134638 -snap {("G1" 22)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8241635.291654 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 8245074.559410 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 8242323.145205 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8246364.284819 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_r1\[2:0\]} \
{/testbed/u_core/sram_select_r2\[2:0\]} \
{/testbed/u_core/sram_select_r3\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_r1\[2:0\]} \
{/testbed/u_core/sram_select_r2\[2:0\]} \
{/testbed/u_core/sram_select_r3\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_r1\[2:0\]} \
{/testbed/u_core/sram_select_r2\[2:0\]} \
{/testbed/u_core/sram_select_r3\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G2" 15)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8266109.980825 -snap {("G2" 9)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 11162222.778390 -snap {("G2" 11)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8829548.020971 -snap {("G2" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8261209.024271 -snap {("G2" 5)}
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8246370.733446 -snap {("G2" 8)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 9 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetCursor -win $_nWave1 8258021.252971 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 8261933.420043 -snap {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 8 )} 
wvSetCursor -win $_nWave1 8757845.736883 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 8755997.130464 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetCursor -win $_nWave1 8757888.727730 -snap {("G2" 7)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 8754105.533198 -snap {("G2" 10)}
wvSetCursor -win $_nWave1 8757845.736883 -snap {("G2" 9)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8754019.551504 -snap {("G2" 9)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8749763.457656 -snap {("G2" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetCursor -win $_nWave1 8754449.459974 -snap {("G2" 7)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8257993.308919 -snap {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8828361.473595 -snap {("G2" 9)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetCursor -win $_nWave1 8825246.786734 -snap {("G2" 7)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8837628.150656 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 8842013.217045 -snap {("G2" 2)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetCursor -win $_nWave1 8245235.285412 -snap {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8830284.824322 -snap {("G2" 11)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8818492.435003 -snap {("G2" 11)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8829842.018599 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8818234.489922 -snap {("G2" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
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
wvSetCursor -win $_nWave1 8757746.368260 -snap {("G2" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8256473.092804 -snap {("G2" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/cnt_next4_mod16_r\[3:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8231620.084181 -snap {("G2" 12)}
wvSetCursor -win $_nWave1 8806005.132631 -snap {("G2" 10)}
wvSetCursor -win $_nWave1 8806037.375766 -snap {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 8 9 10 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 14)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSetPosition -win $_nWave1 {("G2" 15)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8802211.190388 -snap {("G2" 15)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8797611.169764 -snap {("G1" 3)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8301006.536769 -snap {("G2" 3)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8253833.388003 -snap {("G2" 2)}
wvScrollDown -win $_nWave1 3
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8246161.601391 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8249830.716727 -snap {("G2" 1)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8253666.610033 -snap {("G2" 1)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8257919.448264 -snap {("G1" 2)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 8245327.711541 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8258002.837249 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 8245994.823421 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSetCursor -win $_nWave1 8254250.332927 -snap {("G2" 2)}
wvScrollDown -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 8256752.002475 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 8246578.546315 -snap {("G2" 3)}
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8241450.123743 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8245286.017049 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8212597.534962 -snap {("G2" 3)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_2_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_3_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSelectSignal -win $_nWave1 {( "G2" 21 22 23 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 3 4 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8245953.128928 -snap {("G2" 3)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvScrollDown -win $_nWave1 9
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 8242117.235622 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 8253624.915541 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 8242450.791562 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8245619.572989 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8241616.901713 -snap {("G1" 3)}
wvScrollDown -win $_nWave1 3
wvScrollUp -win $_nWave1 3
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8245119.239079 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8242617.569532 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 8245619.572989 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8243618.237351 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8246453.462838 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8240115.899984 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8241616.901713 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8240115.899984 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8242284.013592 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8229608.887885 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8239448.788105 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetCursor -win $_nWave1 8244452.127200 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8249955.800204 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8254792.361329 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8247120.574717 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8250456.134114 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8247620.908627 -snap {("G2" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8243117.903441 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8246620.240808 -snap {("G2" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetCursor -win $_nWave1 8250789.690053 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 8253958.471480 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 8257460.808847 -snap {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 10)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvScrollDown -win $_nWave1 8
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 8246453.462838 -snap {("G2" 3)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 8229442.109915 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8232444.113372 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 8245619.572989 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8240783.011864 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8246620.240808 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 8242117.235622 -snap {("G1" 3)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetCursor -win $_nWave1 8245452.795019 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8242450.791562 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8244952.461109 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8241116.567803 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8237614.230437 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 8244118.571260 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8240282.677954 -snap {("G2" 5)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8233444.781191 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetCursor -win $_nWave1 8241616.901713 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8245619.572989 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8254625.583360 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8258795.032605 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8263464.815761 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8276139.941468 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8280142.612744 -snap {("G2" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 15 16 17 18 19 20 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 12 13 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8258795.032605 -snap {("G2" 8)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8253954.302031 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 8258290.529247 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 8269714.820180 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 8758378.441232 -snap {("G2" 10)}
wvSetCursor -win $_nWave1 8765975.177758 -snap {("G2" 9)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvExpandBus -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetCursor -win $_nWave1 8761472.172572 -snap {("G2" 8)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvSetPosition -win $_nWave1 {("G2" 26)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 10 11 12 13 14 15 16 17 18 19 20 21 22 \
           23 24 25 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvSetPosition -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 12 13 14 15 16 17 18 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 12 13 14 15 16 17 18 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s5_0_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s5_0_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8762360.265262 -snap {("G2" 19)}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 12 13 14 15 16 17 18 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 12 13 14 15 16 17 18 19 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 36)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 8761859.931352 -snap {("G2" 35)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 37)}
wvSetPosition -win $_nWave1 {("G2" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 37 )} 
wvSetPosition -win $_nWave1 {("G2" 37)}
wvSetPosition -win $_nWave1 {("G2" 37)}
wvSetPosition -win $_nWave1 {("G2" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 37 )} 
wvSetPosition -win $_nWave1 {("G2" 37)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8765862.602628 -snap {("G2" 37)}
wvSetCursor -win $_nWave1 8770198.829844 -snap {("G2" 37)}
wvSetCursor -win $_nWave1 8774701.835029 -snap {("G2" 37)}
wvSetCursor -win $_nWave1 8777703.838486 -snap {("G2" 37)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 38)}
wvSetPosition -win $_nWave1 {("G2" 38)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 38 )} 
wvSetPosition -win $_nWave1 {("G2" 38)}
wvSetPosition -win $_nWave1 {("G2" 38)}
wvSetPosition -win $_nWave1 {("G2" 38)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_r\[31:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_w\[4:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/y_forecase_w1\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cnt\[7:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/conv_inst/o_out_data\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 38 )} 
wvSetPosition -win $_nWave1 {("G2" 38)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8246372.407291 -snap {("G2" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 10 11 12 13 14 15 16 17 18 19 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 9)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetCursor -win $_nWave1 8245829.371759 -snap {("G2" 12)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvExpandBus -win $_nWave1
wvSetCursor -win $_nWave1 8253607.162555 -snap {("G2" 27)}
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvScrollUp -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8258137.143699 -snap {("G2" 26)}
wvSetCursor -win $_nWave1 8262384.001021 -snap {("G2" 22)}
wvSetCursor -win $_nWave1 8265309.613843 -snap {("G2" 18)}
wvSetCursor -win $_nWave1 8269745.220380 -snap {("G2" 14)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8261931.002907 -snap {("G2" 22)}
wvSetCursor -win $_nWave1 8265989.111015 -snap {("G2" 19)}
wvSetCursor -win $_nWave1 8270141.593730 -snap {("G2" 16)}
wvSetCursor -win $_nWave1 8294112.743950 -snap {("G2" 27)}
wvSetCursor -win $_nWave1 8298265.226666 -snap {("G2" 27)}
wvSetCursor -win $_nWave1 8302134.585559 -snap {("G2" 27)}
wvSetCursor -win $_nWave1 8262497.250550 -snap {("G2" 24)}
wvSetCursor -win $_nWave1 8265989.111015 -snap {("G2" 21)}
wvSetCursor -win $_nWave1 8270141.593730 -snap {("G2" 16)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G2" 30)}
wvSetPosition -win $_nWave1 {("G2" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 30 )} 
wvSetPosition -win $_nWave1 {("G2" 30)}
wvSetPosition -win $_nWave1 {("G2" 30)}
wvSetPosition -win $_nWave1 {("G2" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_cen_ready_r\[3:0\]} \
{/testbed/u_core/sram_wen_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/sram_select_forecase_0_r\[2:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_forecase_1_r\[2:0\]} \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_s1_3_ready_r\[16:0\]} \
{/testbed/u_core/conv_inst/out_cnt\[2:0\]} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 30 )} 
wvSetPosition -win $_nWave1 {("G2" 30)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8254475.408941 -snap {("G2" 30)}
wvSetCursor -win $_nWave1 8257401.021763 -snap {("G2" 30)}
wvSetCursor -win $_nWave1 8260987.256835 -snap {("G2" 30)}
wvSetCursor -win $_nWave1 8266932.857087 -snap {("G2" 30)}
wvSetCursor -win $_nWave1 8269575.346087 -snap {("G2" 30)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8274294.076446 -snap {("G2" 30)}
wvSetCursor -win $_nWave1 8277502.813089 -snap {("G2" 30)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8257684.145585 -snap {("G2" 26)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 30)}
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G2" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G2" 30)}
wvScrollUp -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvScrollUp -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 29)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 28)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 27)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 25)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 24)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 23)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetCursor -win $_nWave1 8262591.625157 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8270141.593730 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8274010.952624 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8270047.219123 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8273727.828803 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8278352.184554 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8282221.543448 -snap {("G1" 2)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8277785.936911 -snap {("G2" 13)}
wvSetCursor -win $_nWave1 8281938.419626 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 8285902.153127 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8281749.670412 -snap {("G2" 10)}
wvSetCursor -win $_nWave1 8286468.400770 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8269575.346087 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8266366.609444 -snap {("G2" 10)}
wvSetCursor -win $_nWave1 8269952.844516 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8274577.200267 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8278163.435339 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8282127.168840 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 8285902.153127 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8290526.508878 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8294584.616986 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8298076.477451 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8302700.833202 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8306570.192096 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8309684.554133 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8314686.408312 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8317706.395742 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvSetPosition -win $_nWave1 {("G2" 21)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvSetPosition -win $_nWave1 {("G2" 22)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSetPosition -win $_nWave1 {("G2" 22)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvSetPosition -win $_nWave1 {("G2" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSetPosition -win $_nWave1 {("G2" 22)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G2" 23)}
wvSetPosition -win $_nWave1 {("G2" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSetPosition -win $_nWave1 {("G2" 23)}
wvSetPosition -win $_nWave1 {("G2" 23)}
wvSetPosition -win $_nWave1 {("G2" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSetPosition -win $_nWave1 {("G2" 23)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G2" 25)}
wvSetPosition -win $_nWave1 {("G2" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 24 25 )} 
wvSetPosition -win $_nWave1 {("G2" 25)}
wvSetPosition -win $_nWave1 {("G2" 25)}
wvSetPosition -win $_nWave1 {("G2" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 24 25 )} 
wvSetPosition -win $_nWave1 {("G2" 25)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvSelectSignal -win $_nWave1 {( "G2" 24 )} 
wvSelectSignal -win $_nWave1 {( "G2" 24 )} 
wvSetRadix -win $_nWave1 -format UDec
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8297982.102844 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 8301757.087131 -snap {("G1" 1)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8334410.701210 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8317895.144956 -snap {("G2" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvSetPosition -win $_nWave1 {("G2" 26)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 25)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 34)}
wvSetPosition -win $_nWave1 {("G2" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p1\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p3\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p4\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p5\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p6\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p7\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p8\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p9\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 26 27 28 29 30 31 32 33 34 )} 
wvSetPosition -win $_nWave1 {("G2" 34)}
wvSetPosition -win $_nWave1 {("G2" 34)}
wvSetPosition -win $_nWave1 {("G2" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p1\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p3\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p4\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p5\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p6\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p7\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p8\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p9\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 26 27 28 29 30 31 32 33 34 )} 
wvSetPosition -win $_nWave1 {("G2" 34)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 29 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 8322203.345773 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8321825.847344 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8325600.831631 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8330225.187382 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8333622.673240 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8321731.472737 -snap {("G2" 23)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetCursor -win $_nWave1 8325695.206238 -snap {("G2" 12)}
wvSetCursor -win $_nWave1 8314842.126414 -snap {("G2" 11)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G2" 44)}
wvSetPosition -win $_nWave1 {("G2" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p1\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p3\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p4\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p5\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p6\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p7\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p8\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p9\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/data_b_r\[7:0\]} \
{/testbed/u_core/median_inst/data_c_r\[7:0\]} \
{/testbed/u_core/median_inst/data_d_r\[7:0\]} \
{/testbed/u_core/median_inst/data_e_r\[7:0\]} \
{/testbed/u_core/median_inst/data_f_r\[7:0\]} \
{/testbed/u_core/median_inst/data_g_r\[7:0\]} \
{/testbed/u_core/median_inst/data_h_r\[7:0\]} \
{/testbed/u_core/median_inst/data_i_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 36 37 38 39 40 41 42 43 44 )} 
wvSetPosition -win $_nWave1 {("G2" 44)}
wvSetPosition -win $_nWave1 {("G2" 44)}
wvSetPosition -win $_nWave1 {("G2" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p1\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p3\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p4\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p5\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p6\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p7\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p8\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p9\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/data_b_r\[7:0\]} \
{/testbed/u_core/median_inst/data_c_r\[7:0\]} \
{/testbed/u_core/median_inst/data_d_r\[7:0\]} \
{/testbed/u_core/median_inst/data_e_r\[7:0\]} \
{/testbed/u_core/median_inst/data_f_r\[7:0\]} \
{/testbed/u_core/median_inst/data_g_r\[7:0\]} \
{/testbed/u_core/median_inst/data_h_r\[7:0\]} \
{/testbed/u_core/median_inst/data_i_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 36 37 38 39 40 41 42 43 44 )} 
wvSetPosition -win $_nWave1 {("G2" 44)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8318050.863058 -snap {("G2" 40)}
wvSetCursor -win $_nWave1 8322203.345773 -snap {("G2" 39)}
wvSelectSignal -win $_nWave1 {( "G2" 35 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 43)}
wvSetCursor -win $_nWave1 8317767.739236 -snap {("G2" 25)}
wvSetCursor -win $_nWave1 8317956.488451 -snap {("G2" 24)}
wvSetCursor -win $_nWave1 8318145.237665 -snap {("G2" 38)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8349005.734208 -snap {("G2" 24)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8310689.643699 -snap {("G2" 15)}
wvSetCursor -win $_nWave1 8313898.380343 -snap {("G2" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8318239.612272 -snap {("G2" 8)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G2" 45)}
wvSetPosition -win $_nWave1 {("G2" 45)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p1\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p3\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p4\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p5\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p6\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p7\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p8\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p9\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/data_b_r\[7:0\]} \
{/testbed/u_core/median_inst/data_c_r\[7:0\]} \
{/testbed/u_core/median_inst/data_d_r\[7:0\]} \
{/testbed/u_core/median_inst/data_e_r\[7:0\]} \
{/testbed/u_core/median_inst/data_f_r\[7:0\]} \
{/testbed/u_core/median_inst/data_g_r\[7:0\]} \
{/testbed/u_core/median_inst/data_h_r\[7:0\]} \
{/testbed/u_core/median_inst/data_i_r\[7:0\]} \
{/testbed/u_core/median_inst/o_out_data\[13:0\]} \
{/testbed/u_core/median_inst/out_data_w\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 44 45 )} 
wvSetPosition -win $_nWave1 {("G2" 45)}
wvSetPosition -win $_nWave1 {("G2" 45)}
wvSetPosition -win $_nWave1 {("G2" 45)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_addr_wait_r\[3:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/median_inst/med_e_r\[15:0\]} \
{/testbed/u_core/median_inst/med_e_r\[15\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[14\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[13\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[12\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[11\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[10\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[9\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[8\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[7\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[6\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[5\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[4\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[3\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[2\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[1\]\[7:0\]} \
{/testbed/u_core/median_inst/med_e_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_data\[31:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/median\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/cnt\[7:0\]} \
{/testbed/u_core/median_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p1\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p2\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p3\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p4\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p5\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p6\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p7\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p8\[7:0\]} \
{/testbed/u_core/median_inst/u_median_filter_submodule/p9\[7:0\]} \
{/testbed/u_core/median_inst/data_a_r\[7:0\]} \
{/testbed/u_core/median_inst/data_b_r\[7:0\]} \
{/testbed/u_core/median_inst/data_c_r\[7:0\]} \
{/testbed/u_core/median_inst/data_d_r\[7:0\]} \
{/testbed/u_core/median_inst/data_e_r\[7:0\]} \
{/testbed/u_core/median_inst/data_f_r\[7:0\]} \
{/testbed/u_core/median_inst/data_g_r\[7:0\]} \
{/testbed/u_core/median_inst/data_h_r\[7:0\]} \
{/testbed/u_core/median_inst/data_i_r\[7:0\]} \
{/testbed/u_core/median_inst/o_out_data\[13:0\]} \
{/testbed/u_core/median_inst/out_data_w\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 44 45 )} 
wvSetPosition -win $_nWave1 {("G2" 45)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 45 )} 
wvSelectSignal -win $_nWave1 {( "G2" 44 )} 
wvSetPosition -win $_nWave1 {("G2" 44)}
wvSetPosition -win $_nWave1 {("G2" 40)}
wvSetPosition -win $_nWave1 {("G2" 23)}
wvSetPosition -win $_nWave1 {("G2" 24)}
wvSetPosition -win $_nWave1 {("G2" 25)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 25)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvSetRadix -win $_nWave1 -format UDec
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 35 )} 
wvSelectSignal -win $_nWave1 {( "G2" 27 28 29 30 31 32 33 34 35 )} 
wvSelectSignal -win $_nWave1 {( "G2" 27 28 29 30 31 32 33 34 35 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 34 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomAll -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8345294.846009 -snap {("G2" 25)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetCursor -win $_nWave1 8253896.086483 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetCursor -win $_nWave1 8270009.076053 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8258062.823696 -snap {("G2" 18)}
wvSetCursor -win $_nWave1 8269912.735308 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8318372.129950 -snap {("G2" 4)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8322033.078253 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8325597.685811 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8329836.678583 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8333690.308375 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8257966.482951 -snap {("G2" 20)}
wvSetCursor -win $_nWave1 8262205.475723 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8265095.698067 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8270201.757542 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8274344.409569 -snap {("G2" 23)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8257773.801461 -snap {("G2" 24)}
wvSetCursor -win $_nWave1 8261916.453488 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8266059.105515 -snap {("G2" 23)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8269912.735308 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8317697.744736 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8262590.838702 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8265288.379557 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8270876.142756 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8274055.387335 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8277427.313404 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8282437.032134 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8269912.735308 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8273862.705845 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8278005.357872 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8282726.054368 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8286290.661926 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8289566.247250 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8293612.558532 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8297562.529070 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 8301897.862586 -snap {("G2" 23)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8270105.416798 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 8273670.024356 -snap {("G2" 30)}
wvSetCursor -win $_nWave1 8277909.017128 -snap {("G2" 30)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8282726.054368 -snap {("G2" 28)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8278198.039362 -snap {("G2" 15)}
wvSetCursor -win $_nWave1 8257773.801461 -snap {("G2" 18)}
wvSetCursor -win $_nWave1 8262398.157212 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 8265770.083281 -snap {("G2" 11)}
wvSetCursor -win $_nWave1 8270105.416798 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8278198.039362 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 8281088.261706 -snap {("G2" 11)}
wvSetCursor -win $_nWave1 8257773.801461 -snap {("G2" 17)}
wvSetCursor -win $_nWave1 8262687.179447 -snap {("G2" 13)}
wvSetCursor -win $_nWave1 8265481.061047 -snap {("G2" 10)}
wvSetCursor -win $_nWave1 8269912.735308 -snap {("G2" 6)}
wvSetCursor -win $_nWave1 8277812.676383 -snap {("G2" 14)}
wvSetCursor -win $_nWave1 8269912.735308 -snap {("G2" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8286097.980437 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8301897.862586 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8317408.722502 -snap {("G2" 4)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8333304.945396 -snap {("G2" 26)}
wvSetCursor -win $_nWave1 8349971.894249 -snap {("G2" 26)}
wvSetCursor -win $_nWave1 8334075.671354 -snap {("G2" 25)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8285712.617458 -snap {("G2" 26)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 36 )} 
wvSelectSignal -win $_nWave1 {( "G2" 36 37 38 39 40 41 42 43 44 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetCursor -win $_nWave1 8281666.306175 -snap {("G2" 23)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8286483.343416 -snap {("G2" 24)}
wvSelectSignal -win $_nWave1 {( "G2" 29 )} 
wvSelectSignal -win $_nWave1 {( "G2" 28 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8257484.779227 -snap {("G2" 23)}
wvSelectSignal -win $_nWave1 {( "G2" 29 )} 
wvSelectSignal -win $_nWave1 {( "G2" 27 )} 
wvSelectSignal -win $_nWave1 {( "G2" 28 )} 
wvSelectSignal -win $_nWave1 {( "G2" 28 )} 
wvSetCursor -win $_nWave1 8253727.490179 -snap {("G2" 29)}
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8345010.345891 -snap {("G2" 25)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8536150.383603 -snap {("G2" 29)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8884645.725959 -snap {("G2" 25)}
wvSetCursor -win $_nWave1 9214516.436204 -snap {("G2" 25)}
wvSetCursor -win $_nWave1 9427236.800754 -snap {("G2" 25)}
wvSetCursor -win $_nWave1 9644581.521056 -snap {("G2" 25)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 9674104.454156 -snap {("G2" 27)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 9677523.567528 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 9681589.540187 -snap {("G2" 35)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 9685995.113971 -snap {("G2" 26)}
wvSetCursor -win $_nWave1 9686133.726675 -snap {("G2" 27)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 9 10 11 12 13 14 15 16 17 18 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 9 10 11 12 13 14 15 16 17 18 19 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 9662317.753869 -snap {("G2" 19)}
wvSetCursor -win $_nWave1 9666198.909589 -snap {("G2" 15)}
wvSetCursor -win $_nWave1 9670311.086483 -snap {("G2" 11)}
wvSetCursor -win $_nWave1 9673591.587150 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 9681862.145172 -snap {("G2" 27)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 10340346.104651 -snap {("G1" 15)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 10214082.686970 -snap {("G2" 4)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 10216287.978846 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 10213968.620148 -snap {("G2" 7)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 10339283.224387 -snap {("G2" 25)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 27)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 27)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 10321937.615258 -snap {("G2" 27)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 10306044.197517 -snap {("G2" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 10297574.946732 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 10303058.243715 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 10315164.929133 -snap {("G1" 15)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 7
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 9973502.026398 -snap {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 10342674.496543 -snap {("G1" 21)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 10376380.802976 -snap {("G1" 3)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 10381802.304547 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 10366140.188896 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 10370959.301404 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 10374172.043076 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 10377183.988394 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 10379995.137356 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 10381199.915483 -snap {("G1" 3)}
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 10258540.433092 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 10261753.174764 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 10264765.120082 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 10269985.825299 -snap {("G1" 3)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 10262556.360182 -snap {("G2" 4)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 10257536.451320 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 10261953.971119 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 10266371.490918 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 10270989.807071 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 10274804.937806 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 10278820.864896 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 10282635.995632 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 10278820.864896 -snap {("G1" 2)}
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 23
wvSetCursor -win $_nWave1 5361443.117536 -snap {("G2" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 23
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 5257604.592238 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 5263150.750314 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 5265439.640949 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 5266760.154777 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 5264559.298397 -snap {("G2" 23)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 5267112.291798 -snap {("G1" 3)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 5148934.709774 -snap {("G2" 2)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 5162541.148334 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 5157098.572910 -snap {("G2" 23)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 5158982.541326 -snap {("G2" 25)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 5157056.706945 -snap {("G2" 23)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 4138335.572841 -snap {("G2" 25)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 4137074.360651 -snap {("G2" 7)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 4134985.249007 -snap {("G2" 27)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 4145158.678455 -snap {("G2" 26)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 4168984.599024 -snap {("G2" 25)}
wvSetCursor -win $_nWave1 4145162.865052 -snap {("G2" 25)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 4146795.637679 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 4148679.606095 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 4150772.904335 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 4153242.996258 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 4155336.294499 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 4157429.592739 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 4159774.086768 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 4160946.333782 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 4162872.168163 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 4165049.198333 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 4166765.702889 -snap {("G2" 35)}
wvSetCursor -win $_nWave1 4168314.743587 -snap {("G2" 35)}
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 4144827.937333 -snap {("G2" 25)}
wvSetCursor -win $_nWave1 4136580.342267 -snap {("G2" 30)}
wvSetCursor -win $_nWave1 4144744.205404 -snap {("G2" 27)}
wvSetCursor -win $_nWave1 4136915.269986 -snap {("G2" 30)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 34 )} 
wvSelectSignal -win $_nWave1 {( "G2" 25 26 27 28 29 30 31 32 33 34 )} 
wvSelectSignal -win $_nWave1 {( "G2" 26 27 28 29 30 31 32 33 34 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
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
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
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
wvSetCursor -win $_nWave1 8274507.844123 -snap {("G2" 5)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8255134.577310 -snap {("G2" 6)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 8758269.147991 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 8761773.960216 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 8758018.804260 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 8753888.132709 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 8766071.527587 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 8758185.700081 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 8762149.475811 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8758018.804260 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8765946.355722 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvExpandBus -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8770139.613205 -snap {("G2" 9)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule1"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 25)}
wvSetPosition -win $_nWave1 {("G2" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvSetPosition -win $_nWave1 {("G2" 25)}
wvSetPosition -win $_nWave1 {("G2" 25)}
wvSetPosition -win $_nWave1 {("G2" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvSetPosition -win $_nWave1 {("G2" 25)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8782156.112262 -snap {("G2" 25)}
wvSetCursor -win $_nWave1 8767052.040531 -snap {("G2" 25)}
wvSetCursor -win $_nWave1 8770139.613205 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 8766134.113519 -snap {("G2" 25)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 8762295.509654 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8766050.665609 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8766217.561430 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 8757956.218328 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8762045.165924 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 8766217.561430 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8770056.165295 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8766301.009340 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8770056.165295 -snap {("G2" 25)}
wvSetCursor -win $_nWave1 8765938.010931 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 8769943.510616 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 9320874.958016 -snap {("G2" 19)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 9322212.210775 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 9325967.366731 -snap {("G2" 25)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 9329847.694551 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 9321878.419135 -snap {("G2" 5)}
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
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8806141.433061 -snap {("G2" 7)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8765855.705374 -snap {("G2" 5)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 8770327.298594 -snap {("G2" 9)}
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/out_valid_w} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/out_valid_w} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvSetPosition -win $_nWave1 {("G2" 26)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 25)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule1"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvSetPosition -win $_nWave1 {("G2" 26)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule1"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 27)}
wvSetPosition -win $_nWave1 {("G2" 27)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
{/testbed/u_core/conv_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 27 )} 
wvSetPosition -win $_nWave1 {("G2" 27)}
wvSetPosition -win $_nWave1 {("G2" 27)}
wvSetPosition -win $_nWave1 {("G2" 27)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
{/testbed/u_core/conv_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 27 )} 
wvSetPosition -win $_nWave1 {("G2" 27)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 27 )} 
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8761319.789441 -snap {("G2" 20)}
wvSetCursor -win $_nWave1 8765996.176147 -snap {("G2" 16)}
wvSetCursor -win $_nWave1 8769866.289283 -snap {("G2" 13)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8773575.147706 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 8778574.043840 -snap {("G1" 25)}
wvSetCursor -win $_nWave1 8782041.020192 -snap {("G1" 25)}
wvSetCursor -win $_nWave1 8786233.642756 -snap {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8789378.109679 -snap {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule1"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule1"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_sat_w\[16:0\]} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_sat_w\[16:0\]} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[15\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[14\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[13\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[12\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[11\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[10\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[9\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[8\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[7\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[6\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[5\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[4\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[3\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[2\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[1\]\[12:0\]} \
{/testbed/u_core/conv_inst/conv_e_r\[0\]\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8770954.758603 -snap {("G2" 28)}
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 27 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 12 13 14 15 16 17 18 19 20 21 22 23 24 \
           25 26 27 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 15 16 17 18 19 20 21 22 23 24 25 \
           26 27 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 11)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule1"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_sat_w\[16:0\]} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_sat_w\[16:0\]} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_a\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_b\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_c\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_d\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_e\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_f\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_g\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_h\[12:0\]} \
{/testbed/u_core/conv_inst/u_alu/i_data_i\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8766278.371897 -snap {("G2" 20)}
wvSetCursor -win $_nWave1 8770148.485033 -snap {("G2" 20)}
wvSelectSignal -win $_nWave1 {( "G2" 16 )} 
wvSetCursor -win $_nWave1 8770470.994461 -snap {("G2" 21)}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule1"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 15 16 17 18 19 20 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 11)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule1"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_sat_w\[16:0\]} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_sat_w\[16:0\]} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 13 14 15 16 17 18 19 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4091580.465116 -snap {("G1" 20)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 4125076.887853 -snap {("G1" 19)}
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetCursor -win $_nWave1 4129997.672737 -snap {("G1" 24)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 4128962.425644 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4129728.777388 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4131395.928550 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_sat_w\[16:0\]} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
{/testbed/u_core/conv_inst/data_r\[31:0\]} \
{/testbed/u_core/conv_inst/i_data\[31:0\]} \
{/testbed/u_core/conv_inst/i_input_done} \
{/testbed/u_core/conv_inst/i_input_done_r} \
{/testbed/u_core/conv_inst/o_out_valid} \
{/testbed/u_core/conv_inst/u_alu/o_out_data\[13:0\]} \
{/testbed/u_core/conv_inst/u_alu/out_data_wait_sat_w\[16:0\]} \
{/testbed/u_core/conv_inst/i_isFirst_r} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/conv_inst/conv_e_r\[15:0\]} \
{/testbed/u_core/conv_inst/data_a_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_b_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_c_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_d_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_e_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_f_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_g_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_h_r\[12:0\]} \
{/testbed/u_core/conv_inst/data_i_r\[12:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/conv_inst/cs\[1:0\]} \
{/testbed/u_core/median_inst/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvSetPosition -win $_nWave1 {("G2" 21)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 18 19 20 )} 
wvSetRadix -win $_nWave1 -format UDec
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 4128922.091341 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4131019.475062 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 22 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 20)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/sram_data_out_r\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[0\]\[7:0\]} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/sram_data_out_r\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[0\]\[7:0\]} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule1"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/sram_data_out_r\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[0\]\[7:0\]} \
{/testbed/u_core/conv_inst/i_isFirst} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 4124942.440178 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 4126824.707620 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4129137.207620 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4124996.219248 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4126663.370411 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4129083.428550 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4126717.149481 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4129352.323899 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4127254.940178 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4129083.428550 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4125049.998318 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4126986.044830 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4129190.986690 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4127093.602969 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 4130804.358783 -snap {("G1" 31)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4148997.818085 -snap {("G1" 29)}
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
wvSetCursor -win $_nWave1 4147968.104016 -snap {("G1" 28)}
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 4130683.510993 -snap {("G1" 22)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetCursor -win $_nWave1 4132015.887446 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 4133951.933958 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetCursor -win $_nWave1 4131128.532795 -snap {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 4129004.259539 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4130967.195586 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 4132688.125818 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 4134973.736283 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 4139060.945586 -snap {("G1" 20)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4181022.064772 -snap {("G1" 27)}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
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
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8924603.771213 -snap {("G1" 27)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/sram_data_out_r\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/x_m1_r\[5:0\]} \
{/testbed/u_core/x_m1_w\[5:0\]} \
{/testbed/u_core/x_p1_r\[5:0\]} \
{/testbed/u_core/x_p1_w\[5:0\]} \
{/testbed/u_core/x_p2_r\[5:0\]} \
{/testbed/u_core/x_p2_w\[5:0\]} \
{/testbed/u_core/y_m1_r\[4:0\]} \
{/testbed/u_core/y_m1_w\[4:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 23 24 25 26 27 28 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/sram_data_out_r\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/x_m1_r\[5:0\]} \
{/testbed/u_core/x_m1_w\[5:0\]} \
{/testbed/u_core/x_p1_r\[5:0\]} \
{/testbed/u_core/x_p1_w\[5:0\]} \
{/testbed/u_core/x_p2_r\[5:0\]} \
{/testbed/u_core/x_p2_w\[5:0\]} \
{/testbed/u_core/y_m1_r\[4:0\]} \
{/testbed/u_core/y_m1_w\[4:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 23 24 25 26 27 28 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetCursor -win $_nWave1 8747509.820867 -snap {("G1" 29)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 8245910.443510 -snap {("G1" 29)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8771840.008250 -snap {("G1" 29)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 8243745.394013 -snap {("G1" 26)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 8769036.091688 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 8243745.394013 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 8241615.837131 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 8246584.803190 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 8248714.360072 -snap {("G1" 26)}
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 17456375.282841 -snap {("G1" 35)}
wvZoomIn -win $_nWave1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetCursor -win $_nWave1 17492953.971559 -snap {("G1" 22)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 18019912.822124 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 17490807.378221 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 18017915.297769 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 17496770.137492 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 18017915.297769 -snap {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
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
wvSetCursor -win $_nWave1 8211202.237586 -snap {("G1" 35)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSetCursor -win $_nWave1 8770026.948460 -snap {("G1" 35)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSetCursor -win $_nWave1 8766229.323146 -snap {("G1" 3)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/sram_data_out_r\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/x_m1_r\[5:0\]} \
{/testbed/u_core/x_m1_w\[5:0\]} \
{/testbed/u_core/x_p1_r\[5:0\]} \
{/testbed/u_core/x_p1_w\[5:0\]} \
{/testbed/u_core/x_p2_r\[5:0\]} \
{/testbed/u_core/x_p2_w\[5:0\]} \
{/testbed/u_core/y_m1_r\[4:0\]} \
{/testbed/u_core/y_m1_w\[4:0\]} \
{/testbed/u_core/out_valid_w} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/sram_data_out_r\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/x_m1_r\[5:0\]} \
{/testbed/u_core/x_m1_w\[5:0\]} \
{/testbed/u_core/x_p1_r\[5:0\]} \
{/testbed/u_core/x_p1_w\[5:0\]} \
{/testbed/u_core/x_p2_r\[5:0\]} \
{/testbed/u_core/x_p2_w\[5:0\]} \
{/testbed/u_core/y_m1_r\[4:0\]} \
{/testbed/u_core/y_m1_w\[4:0\]} \
{/testbed/u_core/out_valid_w} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/median_filter_submodule1"
wvGetSignalSetScope -win $_nWave1 "/testbed"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst/u_alu"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/median_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbed/u_core/median_inst/u_median_filter_submodule"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/sram_data_out_r\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/x_m1_r\[5:0\]} \
{/testbed/u_core/x_m1_w\[5:0\]} \
{/testbed/u_core/x_p1_r\[5:0\]} \
{/testbed/u_core/x_p1_w\[5:0\]} \
{/testbed/u_core/x_p2_r\[5:0\]} \
{/testbed/u_core/x_p2_w\[5:0\]} \
{/testbed/u_core/y_m1_r\[4:0\]} \
{/testbed/u_core/y_m1_w\[4:0\]} \
{/testbed/u_core/out_valid_w} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/sram_data_out_r\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/x_m1_r\[5:0\]} \
{/testbed/u_core/x_m1_w\[5:0\]} \
{/testbed/u_core/x_p1_r\[5:0\]} \
{/testbed/u_core/x_p1_w\[5:0\]} \
{/testbed/u_core/x_p2_r\[5:0\]} \
{/testbed/u_core/x_p2_w\[5:0\]} \
{/testbed/u_core/y_m1_r\[4:0\]} \
{/testbed/u_core/y_m1_w\[4:0\]} \
{/testbed/u_core/out_valid_w} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 8760922.597816 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8754620.861486 -snap {("G1" 3)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 8769421.650102 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8757979.023609 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8770002.073185 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 8765939.111604 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
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
wvSetCursor -win $_nWave1 5388064.418006 -snap {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetCursor -win $_nWave1 5368039.949511 -snap {("G1" 29)}
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvScrollDown -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 14004.109051 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core/conv_inst"
wvGetSignalSetScope -win $_nWave1 "/testbed/u_core"
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/sram_data_out_r\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/x_m1_r\[5:0\]} \
{/testbed/u_core/x_m1_w\[5:0\]} \
{/testbed/u_core/x_p1_r\[5:0\]} \
{/testbed/u_core/x_p1_w\[5:0\]} \
{/testbed/u_core/x_p2_r\[5:0\]} \
{/testbed/u_core/x_p2_w\[5:0\]} \
{/testbed/u_core/y_m1_r\[4:0\]} \
{/testbed/u_core/y_m1_w\[4:0\]} \
{/testbed/u_core/out_valid_w} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_rr\[2:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbed/u_core/cnt\[10:0\]} \
{/testbed/u_core/i_clk} \
{/testbed/u_core/curr_state\[3:0\]} \
{/testbed/u_core/x_origin_r\[3:0\]} \
{/testbed/u_core/y_origin_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3:0\]} \
{/testbed/u_core/sram_addr_ready_r\[3\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[2\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[1\]\[8:0\]} \
{/testbed/u_core/sram_addr_ready_r\[0\]\[8:0\]} \
{/testbed/u_core/sram_data_out_w\[3:0\]} \
{/testbed/u_core/sram_data_out_w\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_w\[0\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[3:0\]} \
{/testbed/u_core/sram_data_out_r\[3\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[2\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[1\]\[7:0\]} \
{/testbed/u_core/sram_data_out_r\[0\]\[7:0\]} \
{/testbed/u_core/median_inst/i_isFirst} \
{/testbed/u_core/x_m1_r\[5:0\]} \
{/testbed/u_core/x_m1_w\[5:0\]} \
{/testbed/u_core/x_p1_r\[5:0\]} \
{/testbed/u_core/x_p1_w\[5:0\]} \
{/testbed/u_core/x_p2_r\[5:0\]} \
{/testbed/u_core/x_p2_w\[5:0\]} \
{/testbed/u_core/y_m1_r\[4:0\]} \
{/testbed/u_core/y_m1_w\[4:0\]} \
{/testbed/u_core/out_valid_w} \
{/testbed/u_core/out_valid_wait_r} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/sram_select_rr\[2:0\]} \
{/testbed/u_core/x_r\[3:0\]} \
{/testbed/u_core/y_r\[4:0\]} \
{/testbed/u_core/z_r\[4:0\]} \
{/testbed/u_core/cnt_next4_w\[11:0\]} \
{/testbed/u_core/sram_select_r\[2:0\]} \
{/testbed/u_core/o_out_valid} \
{/testbed/u_core/output_cnt\[2:0\]} \
{/testbed/u_core/sram_data_wait_r\[3:0\]} \
{/testbed/u_core/input_data_wait_r\[31:0\]} \
{/testbed/u_core/sram_select_delay_r\[1:0\]} \
{/testbed/u_core/sram_select_delay_r\[1\]\[2:0\]} \
{/testbed/u_core/sram_select_delay_r\[0\]\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbed/u_core/y_forecase_r\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 22167.308297 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 26108.163105 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetCursor -win $_nWave1 22167.308297 -snap {("G1" 3)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 26178.535512 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 29837.900691 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 21815.446260 -snap {("G1" 3)}
wvExit
