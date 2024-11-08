#!/bin/csh -f

cd /home/raid7_2/user12/r2k41036/NTU_CVSD2024/HW4/03_GATE

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/usr/cad/synopsys/vcs/2022.06/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

