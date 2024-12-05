% For I0~I3
clear
close all
clc

Pattern_number = 10;
inst_his = randi([0,1],Pattern_number,1);
Z_doub   = zeros(Pattern_number,1);
A_his    = fi(Z_doub,1,256,0,'RoundingMethod','Nearest');
B_his    = fi(Z_doub,1,256,0,'RoundingMethod','Nearest');
Ans_his  = fi(Z_doub,1,256,0,'RoundingMethod','Nearest');
j = 0;
q = (2^255) - 19;
num_bits = 255;
%Write pattern file
fid = fopen('add_sub_I.dat','wt');
fod = fopen('add_sub_O.dat','wt');
for i = 1:Pattern_number
    inst = inst_his(i,1);
    a = (sym(2)^255)*rand(1);
    b = (sym(2)^255)*rand(1);
    A = a;
    B = b;
    if inst == 0
        if(A >= B)
            opera_ans = A-B;
        else

            opera_ans = (A+q)-B;
        end
    elseif inst == 1
        if(A + B < q)
            opera_ans = A+B;
        else

            opera_ans = (A+B)-q;
        end
    end
    fprintf(fid ,'%01s' ,dec2bin(inst,1));
    fprintf(fid ,'\n');

    fprintf(fid ,'%s' ,dec2bin(a,255));
    fprintf(fid ,'\n');
    fprintf(fid ,'%s' ,dec2bin(b,255));
    fprintf(fid ,'\n');
    fprintf(fod ,'%s' ,dec2bin(opera_ans,255));
    fprintf(fod ,'\n');

    j = j + 1;
end

fclose(fid);
fclose(fod);

