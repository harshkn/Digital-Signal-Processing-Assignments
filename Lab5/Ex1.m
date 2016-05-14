clc;
clear all;
close all;
N=4;
wc=0.3*pi;
Td=2;fd=1/Td;
k=0:(N - 1); 

Omega_ii=wc/Td;

s= Omega_ii*exp(1i*pi/2/N*(2*k+N+1)); 
num_c= Omega_ii .^ N ; 
denom_c=abs(poly(s));
resp=tf(num_c,denom_c);
figure(1);
impulse(resp)
title('Using Analog Filtering Co-efficients');
figure(2);
freqs(num_c,denom_c)
title('Using Analog Filtering Co-efficients');
%% Design using impulse invariance method
[b_ii, a_ii]=impinvar(num_c,denom_c,fd);
figure(3);
impz(b_ii,a_ii);
title('Impulse Invariance method');
figure(4);
freqz(b_ii,a_ii);
title('Impulse Invariance method');


%% Design using bilinear transform
Omegac_bl = (2./Td) * tan(wc./2); % cut-off freq for bi-linear
s= Omegac_bl*exp(1i*pi/2/N*(2*k+N+1)); 
num_c= Omegac_bl^N ; 
denom_c=abs(poly(s));
resp=tf(num_c,denom_c);
figure(5);
impulse(resp)
title('Using Analog Filtering Co-efficients');
figure(6);
freqs(num_c,denom_c)
title('Using Analog Filtering Co-efficients');


[b_bi, a_bi]=bilinear(num_c,denom_c,fd);
figure(7);
impz(b_bi,a_bi);
title('Bi linear Transform');
figure(8);
freqz(b_bi,a_bi);
title('Bi linear Transform');



