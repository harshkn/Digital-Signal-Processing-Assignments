clear all
load('s5.mat');

SH = s5(15600:16300);
% sound(SH);
AA = s5(16800:17500);
% sound(AA);
figure(1)
plot(SH);
title('Phoneme SH')
figure(2)
plot(AA);
title('Phoneme AA')

N=length(SH);
L=8;
M=N/L;
hammw = hamming(M);
[Pxx,w] = pwelch(SH,hammw);
figure(3)
[h_est,w1] = pyulear(SH, 10, N);
plot(w,Pxx,'b',w1, abs(h_est),'r')
title('Periodogram estimate of phoneme SH');
legend('Using Periodogram', 'Using AR estimation')



N=length(AA);
L=8;
M=N/L;
hammw = hamming(M);
[Pxx, w] = pwelch(AA,hammw);
figure(4)
[h_est,w1] = pyulear(AA, 10, N);
plot(w,Pxx,'b',w1, abs(h_est),'r')
title('Periodogram estimate of phoneme AA');
legend('Using Periodogram', 'Using AR estimation')

