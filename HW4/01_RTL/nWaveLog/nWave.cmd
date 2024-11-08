verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2k41036/NTU_CVSD2024/HW4/01_RTL/IOTDF_F1.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_clock_gating"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_crc_calc"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_clock_gating"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 5852.396459 -snap {("G1" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key_r\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key_r\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text_r\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvGetSignalOpen -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 6141.675873 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key_r\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text_r\[63:0\]} \
{/test/u_IOTDF/u_key_gen/round_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key_r\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text_r\[63:0\]} \
{/test/u_IOTDF/u_key_gen/round_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 10307.666879 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 10641.707773 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key_r\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text_r\[63:0\]} \
{/test/u_IOTDF/u_key_gen/round_r\[3:0\]} \
{/test/u_IOTDF/u_ciptext_gen/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key_r\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text_r\[63:0\]} \
{/test/u_IOTDF/u_key_gen/round_r\[3:0\]} \
{/test/u_IOTDF/u_ciptext_gen/o_out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_key_gen"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF/u_ciptext_gen"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key_r\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text_r\[63:0\]} \
{/test/u_IOTDF/u_key_gen/round_r\[3:0\]} \
{/test/u_IOTDF/u_ciptext_gen/o_out_valid} \
{/test/u_IOTDF/u_ciptext_gen/cipher_text\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/u_IOTDF/u_ciptext_gen/key_in\[47:0\]} \
{/test/u_IOTDF/u_ciptext_gen/L_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/R_ready_r\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/sbox_out_w\[31:0\]} \
{/test/u_IOTDF/u_ciptext_gen/first} \
{/test/u_IOTDF/u_ciptext_gen/main_key\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/main_key_r\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text\[63:0\]} \
{/test/u_IOTDF/u_ciptext_gen/plain_text_r\[63:0\]} \
{/test/u_IOTDF/u_key_gen/round_r\[3:0\]} \
{/test/u_IOTDF/u_ciptext_gen/o_out_valid} \
{/test/u_IOTDF/u_ciptext_gen/cipher_text\[127:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
