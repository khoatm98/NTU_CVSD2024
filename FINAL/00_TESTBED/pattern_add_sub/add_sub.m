% For I0~I3
clear
close all
clc

Pattern_number = 1000;
inst_his = randi([0,1],Pattern_number,1);
Z_doub   = zeros(Pattern_number,1);
A_his    = fi(Z_doub,1,255,0,'RoundingMethod','Nearest');
B_his    = fi(Z_doub,1,255,0,'RoundingMethod','Nearest');
Ans_his  = fi(Z_doub,1,255,0,'RoundingMethod','Nearest');
j = 0;
q = (2^255) - 19;
num_bits = 255;
for i = 1:Pattern_number
    inst = inst_his(i,1);
    a = (2^255)*rand(1);
    b = (2^255)*rand(1);
    A = fi(a,1,255,0,'RoundingMethod','Nearest');
    B = fi(b,1,255,0,'RoundingMethod','Nearest');
    A_his(i,1) = A;
    B_his(i,1) = B;

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
    Ans_his(i,1) = opera_ans;
    j = j + 1;
end

%Write pattern file
fid = fopen('add_sub_I.dat','wt');
for w = 1:Pattern_number
    inst_print = dec2bin(inst_his(w,1));
    fprintf(fid ,'%01s' ,inst_print);
    fprintf(fid ,'%s' ,dec2bin(A_his(w,1)));
    fprintf(fid ,'%s' ,dec2bin(B_his(w,1)));
    fprintf(fid ,'\n');
end
fclose(fid);
fid = fopen('add_sub_O.dat','wt');
for w = 1:Pattern_number
    fprintf(fid ,'%255s' ,dec2bin(Ans_his(w,1)));
    fprintf(fid ,'\n');
end
fclose(fid);