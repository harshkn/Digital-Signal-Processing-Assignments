clc;
clear all;
close all;
load ar7.mat;
N=length(X);
L=5;
M=N/L;
window=hamming(M);

[C w]=spec1(X.',window.',L);
x = norminv([0.025 0.975],0,1);

N_alpha=x(2); 
delta=ones(size(C))* 10 * log10(exp(1) * N_alpha/sqrt(L)); 
logC=10*log10(C); 
plot(w,logC-delta,'g',w,logC+delta,'r',w,logC); 
title('Confidence Interval of the log spectrum'); 
xlabel('Normalized frequency \omega/rad');
ylabel('Power density');
legend('Lower bound','Upper bound','Estimated Spectrum'); xlim([0 2*pi]);