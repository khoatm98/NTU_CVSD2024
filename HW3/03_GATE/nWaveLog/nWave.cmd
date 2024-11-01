verdiSetActWin -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/MingKe/Study/NTU_CVSD2023/HW3/01_RTL/core.vcd.fsdb}
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvExit
