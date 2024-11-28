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
