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
