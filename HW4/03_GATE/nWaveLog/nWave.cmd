verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2k41036/NTU_CVSD2024/HW4/03_GATE/IOTDF_F1.fsdb}
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvResizeWindow -win $_nWave1 2091 342 960 332
wvResizeWindow -win $_nWave1 1920 23 1920 1009
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 37958.643596 -snap {("G1" 5)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 55073.924860 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 10336.952051 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 33722.187837 -snap {("G1" 1)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 29909.377655 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 54565.550169 -snap {("G1" 1)}
wvResizeWindow -win $_nWave1 1920 23 1920 1009
wvResizeWindow -win $_nWave1 1920 23 1920 1009
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvExpandBus -win $_nWave1
wvScrollUp -win $_nWave1 8
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 84
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetCursor -win $_nWave1 70715.010482 -snap {("G1" 7)}
wvResizeWindow -win $_nWave1 1920 23 1920 1009
wvResizeWindow -win $_nWave1 1920 23 1920 1009
wvSetCursor -win $_nWave1 90897.481756 -snap {("G1" 7)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 1920 23 1920 1009
wvSetCursor -win $_nWave1 71074.583138 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 130926.863676 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 150650.910671 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 229547.098653 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 310823.775065 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 371696.264930 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 388019.614167 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 371016.125378 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 69034.164484 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_clock_gating"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_crc_calc"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_clock_gating"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_clock_gating"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_clock_gating/clk} \
{/test/u_IOTDF/u_ciptext_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_crc_calc"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_clock_gating/clk} \
{/test/u_IOTDF/u_crc_calc/clk} \
{/test/u_IOTDF/u_ciptext_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_clock_gating/clk} \
{/test/u_IOTDF/u_crc_calc/clk} \
{/test/u_IOTDF/u_key_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_clock_gating/clk} \
{/test/u_IOTDF/u_crc_calc/clk} \
{/test/u_IOTDF/u_key_gen/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/u_ciptext_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_clock_gating/clk} \
{/test/u_IOTDF/u_crc_calc/clk} \
{/test/u_IOTDF/u_key_gen/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/u_ciptext_gen/clk} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 74135.211120 -snap {("G1" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetCursor -win $_nWave1 48970.047713 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 19383.977220 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 76855.769327 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 92498.979013 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 76855.769327 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 35197.221793 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen_u_sbox"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen_u_sbox"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvGetSignalSetSignalFilter -win $_nWave1 "*clk"
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen_u_sbox"
wvGetSignalSetSignalFilter -win $_nWave1 "*clk"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen_u_sbox"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen_u_sbox"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen_u_sbox"
wvGetSignalOpen -win $_nWave1
wvSetFileTimeRange -win $_nWave1 -time_unit 1p 0 40000000
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen_u_sbox"
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/data_w\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 70012.927807 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 72042.719282 -snap {("G2" 3)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 14112.895695 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 17917.426312 -snap {("G2" 3)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 13980.055939 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_clock_gating"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_crc_calc"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_key_gen/main_key\[63:1\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_key_gen/main_key\[63:1\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6059.179223 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 13927.438541 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 49937.890315 -snap {("G2" 3)}
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_key_gen/main_key\[63:1\]} \
{/test/u_IOTDF/\\data_w\[127:0\] } \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_key_gen/main_key\[63:1\]} \
{/test/u_IOTDF/\\data_w\[127:0\] } \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 14807.196669 -snap {("G3" 5)}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetCursor -win $_nWave1 18896.213323 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 26826.427439 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 30791.534496 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 42728.675159 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 30841.098335 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 34961.092387 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 47042.277954 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 58906.621729 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 71062.153053 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 74940.523394 -snap {("G3" 5)}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetCursor -win $_nWave1 74104.133624 -snap {("G2" 3)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 74924.260260 -snap {("G3" 4)}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_clock_gating"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_crc_calc"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSetPosition -win $_nWave1 {("G3" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_key_gen/main_key\[63:1\]} \
{/test/u_IOTDF/\\data_w\[127:0\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[7:1\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[15:9\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[23:17\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[31:25\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[39:33\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[47:41\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[55:49\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[63:57\] } \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 7 8 9 10 11 12 13 )} 
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSetPosition -win $_nWave1 {("G3" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_key_gen/main_key\[63:1\]} \
{/test/u_IOTDF/\\data_w\[127:0\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[7:1\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[15:9\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[23:17\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[31:25\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[39:33\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[47:41\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[55:49\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[63:57\] } \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 7 8 9 10 11 12 13 )} 
wvSetPosition -win $_nWave1 {("G3" 13)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 10 )} 
wvSelectSignal -win $_nWave1 {( "G3" 11 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvSelectSignal -win $_nWave1 {( "G3" 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 11 )} 
wvSelectSignal -win $_nWave1 {( "G3" 9 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 13 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 7 8 9 10 11 12 )} 
wvSelectSignal -win $_nWave1 {( "G3" 6 7 8 9 10 11 12 13 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 68)}
wvSelectSignal -win $_nWave1 {( "G3" 50 )} 
wvScrollDown -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G3" 52 )} 
wvScrollUp -win $_nWave1 35
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 92458.242466 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 93124.256542 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93139.745242 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93217.188739 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93248.166138 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93217.188739 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93232.677439 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93263.654837 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93279.143537 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93294.632236 -snap {("G3" 5)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 93190.664341 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93213.897390 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93260.363489 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93206.153041 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93256.491314 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93210.025216 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93295.213063 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93233.258265 -snap {("G3" 5)}
wvSetCursor -win $_nWave1 93210.025216 -snap {("G3" 5)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
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
wvSetCursor -win $_nWave1 93165.241093 -snap {("G3" 5)}
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_key_gen/main_key\[63:1\]} \
{/test/u_IOTDF/\\data_w\[127:0\] } \
{/test/u_IOTDF/first_r} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_key_gen/main_key\[63:1\]} \
{/test/u_IOTDF/\\data_w\[127:0\] } \
{/test/u_IOTDF/first_r} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 92724.176175 -snap {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetCursor -win $_nWave1 93312.746754 -snap {("G3" 3)}
wvSetCursor -win $_nWave1 92879.063170 -snap {("G3" 6)}
wvSetCursor -win $_nWave1 92507.334383 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 92848.085771 -snap {("G3" 6)}
wvSetCursor -win $_nWave1 92445.379585 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 98021.311386 -snap {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_top2maxmin"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvSetPosition -win $_nWave1 {("G3" 14)}
wvSetPosition -win $_nWave1 {("G3" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_key_gen/main_key\[63:1\]} \
{/test/u_IOTDF/\\data_w\[127:0\] } \
{/test/u_IOTDF/first_r} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_2} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_13} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_18} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_21} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_31} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_34} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_38} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_47_} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 7 8 9 10 11 12 13 14 )} 
wvSetPosition -win $_nWave1 {("G3" 14)}
wvSetPosition -win $_nWave1 {("G3" 22)}
wvSetPosition -win $_nWave1 {("G3" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_key_gen/main_key\[63:1\]} \
{/test/u_IOTDF/\\data_w\[127:0\] } \
{/test/u_IOTDF/first_r} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_2} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_13} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_18} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_21} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_31} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_34} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_38} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_47_} \
{/test/u_IOTDF/u_key_gen/\\main_key\[7:1\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[15:9\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[23:17\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[31:25\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[39:33\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[47:41\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[55:49\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[63:57\] } \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 15 16 17 18 19 20 21 22 )} 
wvSetPosition -win $_nWave1 {("G3" 22)}
wvSetPosition -win $_nWave1 {("G3" 22)}
wvSetPosition -win $_nWave1 {("G3" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/clk} \
{/test/u_IOTDF/u_top2maxmin/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test/u_IOTDF/u_top2maxmin/clk} \
{/test/u_IOTDF/clk_f1} \
{/test/u_IOTDF/clk_f2} \
{/test/u_IOTDF/clk_f3} \
{/test/u_IOTDF/clk_f4} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/test/u_IOTDF/u_key_gen/key_out\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_key_gen/main_key\[63:1\]} \
{/test/u_IOTDF/\\data_w\[127:0\] } \
{/test/u_IOTDF/first_r} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_2} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_13} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_18} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_21} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_31} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_34} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_38} \
{/test/u_IOTDF/u_key_gen/pc2_in_r_47_} \
{/test/u_IOTDF/u_key_gen/\\main_key\[7:1\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[15:9\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[23:17\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[31:25\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[39:33\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[47:41\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[55:49\] } \
{/test/u_IOTDF/u_key_gen/\\main_key\[63:57\] } \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 15 16 17 18 19 20 21 22 )} 
wvSetPosition -win $_nWave1 {("G3" 22)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 14 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 8 9 10 11 12 13 14 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 14)}
wvSetCursor -win $_nWave1 97494.695604 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 92600.266580 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 97525.673003 -snap {("G2" 3)}
wvExit
