verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2k41036/NTU_CVSD2024/FINAL/01_RTL/ed25519.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 6532.579526 -snap {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 59840.893580 -snap {("G2" 0)}
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
wvSetCursor -win $_nWave1 26746.599190 -snap {("G1" 5)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvResizeWindow -win $_nWave1 8 31 1920 1009
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 5495.268296 -snap {("G1" 10)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 26407.817088 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 7876.551224 -snap {("G1" 11)}
wvResizeWindow -win $_nWave1 8 31 1920 1009
wvSetCursor -win $_nWave1 6451.158394 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 7490.681548 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 26721.859889 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 25315.446211 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 26446.691995 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 27363.918307 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 26416.117785 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/res_r\[255:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/res_r\[255:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 7368.384706 -snap {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/multiplier_64x64_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/multiplier_64x64_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 12587.539230 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 11605.274608 -snap {("G1" 16)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 32487.492867 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetCursor -win $_nWave1 32560.253210 -snap {("G1" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 32560.253210 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 32560.253210 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 33469.757489 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 32414.732525 -snap {("G1" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 11350.613409 -snap {("G1" 16)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetCursor -win $_nWave1 32414.732525 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/multiplier_64x64_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 16 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 19 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 19 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 21 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 21 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 23 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 23 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 31505.228245 -snap {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetCursor -win $_nWave1 12587.539230 -snap {("G1" 33)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 13569.803852 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 14588.448645 -snap {("G1" 17)}
wvResizeWindow -win $_nWave1 8 31 1920 1009
wvResizeWindow -win $_nWave1 8 31 1920 1009
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 12540.478052 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 14514.780719 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13600.751707 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 14405.097238 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 15428.809732 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 16342.838744 -snap {("G1" 15)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 13637.312867 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 12613.600373 -snap {("G1" 19)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetCursor -win $_nWave1 8299.383434 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetCursor -win $_nWave1 11589.887879 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetCursor -win $_nWave1 12540.478052 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 11370.520916 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetCursor -win $_nWave1 8482.189236 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 7458.476742 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 11224.276274 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 14770.708843 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 15538.493213 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 14880.392324 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 15721.299016 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 16415.961065 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 11589.887879 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 12321.111089 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 16196.594102 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 14379.504425 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 12661.129882 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 13502.036573 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 11344.928104 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 12258.957116 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 13684.842376 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 14562.310228 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 15366.655759 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 14379.504425 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 15403.216919 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 14452.626746 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 15403.216919 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 11600.856227 -snap {("G1" 34)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 35 36 37 )} 
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 35 36 37 )} 
wvSetPosition -win $_nWave1 {("G1" 37)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 12368.640598 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 13538.597734 -snap {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetCursor -win $_nWave1 14306.382104 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 15330.094598 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 16353.807093 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 17450.641908 -snap {("G1" 36)}
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSetCursor -win $_nWave1 21580.224986 -snap {("G1" 37)}
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 38 39 )} 
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 38 39 )} 
wvSetPosition -win $_nWave1 {("G1" 39)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 23602.057162 -snap {("G1" 38)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 41 42 )} 
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 41 42 )} 
wvSetPosition -win $_nWave1 {("G1" 42)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 32431.930465 -snap {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 17405.293499 -snap {("G1" 18)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 32541.613947 -snap {("G1" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSetPosition -win $_nWave1 {("G1" 43)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetCursor -win $_nWave1 31591.023774 -snap {("G1" 41)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetPosition -win $_nWave1 {("G1" 44)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 30640.433601 -snap {("G1" 44)}
wvSetCursor -win $_nWave1 30421.066638 -snap {("G1" 44)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 32322.246984 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 30823.239403 -snap {("G1" 44)}
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSetCursor -win $_nWave1 31408.217971 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 32358.808144 -snap {("G1" 14)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetCursor -win $_nWave1 30457.627798 -snap {("G1" 44)}
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetCursor -win $_nWave1 17639.284926 -snap {("G1" 36)}
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetCursor -win $_nWave1 18589.875099 -snap {("G1" 44)}
wvSetCursor -win $_nWave1 32300.310287 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetRadix -win $_nWave1 -format Ascii
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
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
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSetCursor -win $_nWave1 17675.846086 -snap {("G1" 36)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 45 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 45 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSetCursor -win $_nWave1 16542.450111 -snap {("G1" 46)}
wvSetCursor -win $_nWave1 17602.723765 -snap {("G1" 46)}
wvSetCursor -win $_nWave1 20417.933124 -snap {("G1" 46)}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSetPosition -win $_nWave1 {("G1" 47)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 12666.967098 -snap {("G1" 47)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSetPosition -win $_nWave1 {("G1" 48)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetCursor -win $_nWave1 13226.692588 -snap {("G1" 46)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 48 49 )} 
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 48 49 )} 
wvSetPosition -win $_nWave1 {("G1" 49)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 35 36 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSetCursor -win $_nWave1 12422.347057 -snap {("G1" 45)}
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 44 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 43 44 )} 
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 43 44 )} 
wvSetPosition -win $_nWave1 {("G1" 44)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 13575.158894 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 12514.885240 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 8675.963387 -snap {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 11454.611585 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 7615.689732 -snap {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetCursor -win $_nWave1 8420.035264 -snap {("G1" 44)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 7652.250893 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 7385.354421 -snap {("G1" 12)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 8482.189236 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 9432.779409 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 10346.808422 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 11553.326718 -snap {("G1" 16)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 12467.355731 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 13454.507065 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 14478.219559 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 15575.054374 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 14734.147682 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 15611.615534 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 14514.780719 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 15465.370892 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 12430.794571 -snap {("G1" 43)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 11736.132521 -snap {("G1" 42)}
wvScrollDown -win $_nWave1 6
wvSetCursor -win $_nWave1 12577.039213 -snap {("G1" 45)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 15392.248571 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSetCursor -win $_nWave1 16415.961065 -snap {("G1" 49)}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetCursor -win $_nWave1 15575.054374 -snap {("G1" 41)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 16452.522226 -snap {("G1" 49)}
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSetCursor -win $_nWave1 17512.795880 -snap {("G1" 46)}
wvSetCursor -win $_nWave1 20291.444078 -snap {("G1" 49)}
wvSetCursor -win $_nWave1 17512.795880 -snap {("G1" 46)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 19523.659708 -snap {("G1" 41)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 21680.768177 -snap {("G1" 46)}
wvSetCursor -win $_nWave1 32356.627044 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 32466.310525 -snap {("G1" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 8
wvScrollDown -win $_nWave1 8
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 22009.818622 -snap {("G1" 30)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 32649.116328 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 28 29 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 22 23 24 25 26 27 28 29 30 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 12796.406176 -snap {("G1" 26)}
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
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 12540.478052 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 15538.493213 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 16415.961065 -snap {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSetCursor -win $_nWave1 17659.040522 -snap {("G1" 36)}
wvSetCursor -win $_nWave1 20547.372202 -snap {("G1" 36)}
wvSetCursor -win $_nWave1 21388.278893 -snap {("G1" 37)}
wvSetCursor -win $_nWave1 21497.962375 -snap {("G1" 36)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 15414.185267 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 19545.596404 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 15670.113391 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 35 36 )} 
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 35 36 )} 
wvSetPosition -win $_nWave1 {("G1" 36)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 11611.824575 -snap {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetCursor -win $_nWave1 12441.762919 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 13319.230771 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 11381.489264 -snap {("G1" 28)}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 12368.640598 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 13502.036573 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 12697.691042 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 13757.964697 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 12697.691042 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 14160.137462 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 12843.935684 -snap {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/res_out_r\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/res_out_r\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetCursor -win $_nWave1 13502.036573 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 14416.065586 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSetCursor -win $_nWave1 16573.174055 -snap {("G1" 46)}
wvSetCursor -win $_nWave1 17450.641907 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 20485.218229 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 21545.491884 -snap {("G1" 43)}
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSetCursor -win $_nWave1 20448.657069 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 21472.369563 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 20704.585192 -snap {("G1" 44)}
wvSetCursor -win $_nWave1 21618.614205 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 20594.901711 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 21472.369563 -snap {("G1" 43)}
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 25713.464181 -snap {("G1" 38)}
wvSetCursor -win $_nWave1 26335.003909 -snap {("G1" 38)}
wvSetCursor -win $_nWave1 27504.961045 -snap {("G1" 38)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31453.566380 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 17487.203068 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 26444.687391 -snap {("G1" 42)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 27651.205688 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 32477.278874 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetCursor -win $_nWave1 28345.867737 -snap {("G1" 42)}
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 27724.328009 -snap {("G1" 42)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSetCursor -win $_nWave1 29625.508355 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 30795.465491 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 31161.077096 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 27651.205688 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 28748.040503 -snap {("G1" 38)}
wvSetCursor -win $_nWave1 29625.508355 -snap {("G1" 38)}
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/res_out_r\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/C\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/res_out_r\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/C\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 41)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 41)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetCursor -win $_nWave1 27578.083367 -snap {("G1" 38)}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/res_out_r\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/C\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/sum_S\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/res_out_r\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/C\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/sum_S\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetCursor -win $_nWave1 28492.112379 -snap {("G1" 40)}
wvSetCursor -win $_nWave1 27431.838725 -snap {("G1" 40)}
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetCursor -win $_nWave1 28528.673540 -snap {("G1" 40)}
wvSetCursor -win $_nWave1 29479.263713 -snap {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetCursor -win $_nWave1 25420.974897 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 26444.687391 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 27578.083367 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 28528.673540 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 29515.824873 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 30466.415046 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 31380.444059 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 29515.824873 -snap {("G1" 32)}
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetCursor -win $_nWave1 31417.005219 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 29588.947194 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 30539.537367 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 31417.005219 -snap {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetCursor -win $_nWave1 29515.824873 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 31417.005219 -snap {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetCursor -win $_nWave1 30539.537367 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 31343.882898 -snap {("G1" 13)}
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
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetCursor -win $_nWave1 29601.743600 -snap {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 29418.937797 -snap {("G1" 35)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 28 )} 
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetCursor -win $_nWave1 27846.807896 -snap {("G1" 44)}
wvSetCursor -win $_nWave1 28322.102982 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 27444.635130 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 28358.664143 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 17646.244116 -snap {("G1" 45)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 18487.150807 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 19730.230264 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSetCursor -win $_nWave1 20607.698116 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 21448.604808 -snap {("G1" 44)}
wvSetCursor -win $_nWave1 20717.381598 -snap {("G1" 45)}
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/R_w\[2:1\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/res_out_r\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/C\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/sum_S\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 18 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvExpandBus -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 19328.057499 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 20607.698116 -snap {("G1" 48)}
wvSetCursor -win $_nWave1 21412.043647 -snap {("G1" 48)}
wvSetCursor -win $_nWave1 20571.136956 -snap {("G1" 48)}
wvSetCursor -win $_nWave1 21375.482487 -snap {("G1" 48)}
wvSetCursor -win $_nWave1 20571.136956 -snap {("G1" 49)}
wvSetCursor -win $_nWave1 21302.360166 -snap {("G1" 48)}
wvSetCursor -win $_nWave1 20644.259277 -snap {("G1" 48)}
wvSetCursor -win $_nWave1 21667.971771 -snap {("G1" 48)}
wvSetCursor -win $_nWave1 20753.942758 -snap {("G1" 48)}
wvSetCursor -win $_nWave1 21412.043647 -snap {("G1" 48)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 30479.211452 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 31502.923946 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
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
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 12381.437003 -snap {("G1" 45)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 961 31 958 1000
wvResizeWindow -win $_nWave1 2471 185 1920 1009
wvSetCursor -win $_nWave1 31393.240464 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31539.485106 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 48 49 )} 
wvSetCursor -win $_nWave1 30515.772612 -snap {("G1" 38)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSetCursor -win $_nWave1 29674.865921 -snap {("G1" 38)}
wvSetCursor -win $_nWave1 30442.650291 -snap {("G1" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetCursor -win $_nWave1 31283.556983 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvScrollDown -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 45 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 48 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSetCursor -win $_nWave1 24483.181129 -snap {("G1" 46)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 20242.086511 -snap {("G1" 51)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/res_out_r\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/R_w\[2:1\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/R_w\[2\]\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/R_w\[1\]\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/sum_S_debug\[511:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/C\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/sum_S\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/res_out_r\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/R_w\[2:1\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/R_w\[2\]\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/R_w\[1\]\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/sum_S_debug\[511:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/C\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/sum_S\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 22545.439623 -snap {("G1" 46)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 25324.087821 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 23569.152117 -snap {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSetCursor -win $_nWave1 24629.425771 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 25360.648981 -snap {("G1" 42)}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetCursor -win $_nWave1 29492.060118 -snap {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSetCursor -win $_nWave1 31664.146095 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 29287.670662 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 31371.656811 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31773.829576 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetCursor -win $_nWave1 29360.792983 -snap {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSetCursor -win $_nWave1 28373.641650 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 23364.762661 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 30274.821996 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 31115.728687 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 30421.066638 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 30896.361724 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 29616.721107 -snap {("G1" 39)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 29580.159946 -snap {("G1" 39)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 31591.023774 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31554.462613 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31627.584934 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 31627.584934 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31664.146095 -snap {("G1" 38)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31371.656811 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 31408.217971 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 32 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetCursor -win $_nWave1 31371.656811 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetCursor -win $_nWave1 12582.876429 -snap {("G1" 40)}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetCursor -win $_nWave1 13423.783120 -snap {("G1" 46)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetCursor -win $_nWave1 14337.812133 -snap {("G1" 46)}
wvSetCursor -win $_nWave1 13643.150083 -snap {("G1" 46)}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetCursor -win $_nWave1 14557.179096 -snap {("G1" 46)}
wvSetCursor -win $_nWave1 15434.646948 -snap {("G1" 46)}
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSetCursor -win $_nWave1 15471.208109 -snap {("G1" 49)}
wvSetCursor -win $_nWave1 15361.524627 -snap {("G1" 49)}
wvSetCursor -win $_nWave1 14191.567491 -snap {("G1" 49)}
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvCopy -win $_nWave1
wvSetCursor -win $_nWave1 13570.027762 -snap {("G1" 46)}
wvSetCursor -win $_nWave1 14410.934454 -snap {("G1" 46)}
wvSetCursor -win $_nWave1 15690.575072 -snap {("G1" 46)}
wvSetCursor -win $_nWave1 16421.798282 -snap {("G1" 40)}
wvSetCursor -win $_nWave1 12436.631787 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 13533.466602 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 15690.575072 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 16641.165245 -snap {("G1" 49)}
wvSetCursor -win $_nWave1 17701.438899 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 20589.770579 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 21576.921912 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 24611.498234 -snap {("G1" 49)}
wvSetCursor -win $_nWave1 25415.843765 -snap {("G1" 46)}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/res_out_r\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/R_w\[2:1\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/sum_S_debug\[511:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/shifted_ch\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/C\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/sum_S\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_ed25519/data_in_buf_r\[767:0\]} \
{/testbench/u_ed25519/data_out_buf_r\[511:0\]} \
{/testbench/u_ed25519/i_clk} \
{/testbench/u_ed25519/i_in_data\[63:0\]} \
{/testbench/u_ed25519/m_reg_rden} \
{/testbench/u_ed25519/m_reg_wren} \
{/testbench/u_ed25519/i_in_valid} \
{/testbench/u_ed25519/o_in_ready_r} \
{/testbench/u_ed25519/o_out_valid_r} \
{/testbench/u_ed25519/curr_state\[1:0\]} \
{/testbench/u_ed25519/input_cnt\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/o_valid} \
{/testbench/u_ed25519/res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_r\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/accumulated_res_w\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/res_out_r\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[3\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[2\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[1\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_a\[0\]\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/C_b\[3:0\]} \
{/testbench/u_ed25519/modular_mult_inst/cnt\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/a_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/b_in_r\[63:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/a\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/b\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/R_w\[2:1\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/sum_S_debug\[511:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/shifted_ch\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/res\[254:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/C_\[255:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/compare} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_h\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/accum_l\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/round\[4:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/C\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/sum_S\[263:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/i_first} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/a\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/b\[127:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S1\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/S0\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L2\[135:0\]} \
{/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/L1\[135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 50)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 46)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSetCursor -win $_nWave1 26549.239741 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 27463.268753 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 26402.995099 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 25342.721444 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 27536.391074 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 13496.905441 -snap {("G1" 48)}
wvSetCursor -win $_nWave1 14264.689812 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 15361.524627 -snap {("G1" 47)}
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSetCursor -win $_nWave1 17591.755418 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 20662.892900 -snap {("G1" 48)}
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 24465.253592 -snap {("G1" 51)}
wvSetCursor -win $_nWave1 20443.525937 -snap {("G1" 51)}
wvSetCursor -win $_nWave1 21394.116110 -snap {("G1" 48)}
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 31338.751766 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 8555.311557 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 9542.462891 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 10602.736545 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 11736.132521 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 12577.039213 -snap {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSetCursor -win $_nWave1 11663.010200 -snap {("G1" 43)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetCursor -win $_nWave1 8372.505755 -snap {("G1" 27)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst/modular_add_sub_inst"
wvGetSignalSetScope -win $_nWave1 \
           "/testbench/u_ed25519/modular_mult_inst/mod_q_reduce_inst"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_ed25519/modular_mult_inst"
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetCursor -win $_nWave1 1462.446420 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 8372.505755 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 9323.095928 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 10383.369582 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 11370.520916 -snap {("G1" 27)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 12321.111089 -snap {("G1" 51)}
wvSetCursor -win $_nWave1 11699.571360 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 15538.493213 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 19560.220868 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 23618.509684 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 31661.964994 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetPosition -win $_nWave1 {("G1" 25)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 50)}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 11443.643237 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 10346.808422 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 31347.368962 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 31452.209661 -snap {("G1" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31609.470709 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 8439.676259 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 11584.897225 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 15411.582734 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 19447.949640 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 15621.264132 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 19447.949640 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 23641.577595 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 8649.357657 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11375.215827 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 8439.676259 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11165.534430 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 15464.003083 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11427.636177 -snap {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 11322.795478 -snap {("G1" 17)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 15726.104830 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11427.636177 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 15568.843782 -snap {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 11846.998972 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 12371.202467 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11689.737924 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 12842.985612 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11846.998972 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 12371.202467 -snap {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetCursor -win $_nWave1 11794.578623 -snap {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetCursor -win $_nWave1 12476.043165 -snap {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 11480.056526 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 12580.883864 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13524.450154 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 12476.043165 -snap {("G1" 17)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 11480.056526 -snap {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 12371.202467 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 13314.768756 -snap {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetCursor -win $_nWave1 12371.202467 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 11270.375128 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 12423.622816 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 13314.768756 -snap {("G1" 32)}
wvSetCursor -win $_nWave1 14625.277492 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 11322.795478 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 10693.751285 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 11794.578623 -snap {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetCursor -win $_nWave1 12633.304214 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 11375.215827 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 12895.405961 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 11480.056526 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 12738.144913 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 11584.897225 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 12476.043165 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 13419.609455 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 12423.622816 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 13472.029805 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 14834.958890 -snap {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 12476.043165 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11689.737924 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 12476.043165 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11532.476876 -snap {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 12318.782117 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11427.636177 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 12109.100719 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11165.534430 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11427.636177 -snap {("G1" 17)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 12580.883864 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13419.609455 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 14625.277492 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13629.290853 -snap {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetCursor -win $_nWave1 12580.883864 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 14415.596095 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 12685.724563 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 13419.609455 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12738.144913 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 13838.972251 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 14363.175745 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 15516.423433 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 11270.375128 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 12371.202467 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 13576.870504 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 14415.596095 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 13524.450154 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 14468.016444 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13314.768756 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 12476.043165 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 11375.215827 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 12371.202467 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13576.870504 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 14572.857143 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13629.290853 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 14677.697842 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13262.348407 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 14415.596095 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13367.189106 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 14310.755396 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13419.609455 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13472.029805 -snap {("G1" 17)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31347.368962 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31190.107914 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 31294.948613 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 31452.209661 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
