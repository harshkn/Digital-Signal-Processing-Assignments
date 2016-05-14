%% AR Process
N = 1024;
z = randn(N,1); 

a = [1 0.5 0.7 0.2];
x = filter(1, a, z);
ar_est = aryule(x,3);
disp('True Parameters')
disp(a)
disp('Estimated Parameters')
disp(ar_est)

[h_est, w1] = freqz(1, ar_est, 1024);
[h_true, w2] = freqz(1, a, 1024);
[h_estp, w3] = pyulear(x, 3, 1024);

plot(w1, abs(h_est),'y', w2, abs(h_true),'g', w3, h_estp,'b');
title('Spectrum using Parameters')
legend('Estimate using aryule', 'True Parameters', 'Estimate using Pyulear');

%% Result 
%True Parameters
 %   1.0000    0.5000    0.7000    0.2000

%Estimated Parameters
 %   1.0000    0.4775    0.7036    0.2020

