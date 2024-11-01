#!/bin/csh -f

cd /home/MingKe/Study/NTU_CVSD2024/HW3/01_RTL

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/usr/cad/synopsys/vcs/cur/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

