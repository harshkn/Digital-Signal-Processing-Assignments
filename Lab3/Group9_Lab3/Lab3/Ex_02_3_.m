%generating DTFT of common windows

clear all;
clc;
M=32;
n=-(M/2):(M/2-1);
w=0.4*pi;
x=sin(w*n).';
tmp=bartlett(M);
size(tmp);
y=x.*tmp;
[X,w0]=dtft(y);
figure(2);
plot(w0,abs(X));
title('Spectrum of x=cos(\omega_0n) windowed by Bartlett Function with \omega_0=0.4\pi');
xlabel('Normalized Freq. \omega');
ylabel('Mag.');