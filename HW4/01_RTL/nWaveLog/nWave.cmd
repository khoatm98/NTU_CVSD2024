verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2k41036/NTU_CVSD2024/HW4/01_RTL/IOTDF_F1.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/u_IOTDF"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 824982.300885
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
