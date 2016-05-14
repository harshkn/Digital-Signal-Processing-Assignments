%Filtering Example
clear all;
clc;
%% Signal definition

n = 0:100; %time vector
F = 1; %frenquency in Hz
T = 0.05; %time in seconds
s = sin(2*pi*F*n*T);% signal

S=fft(s,128);
P=S.*conj(S);
f=(0:127)/128;

s2=s+sin(2*pi*4*n*T);
S2=fft(s2,128);
P2=S2.*conj(S2);

%% Filter

b=[1 1 1 1]/4;
a=1;
[H,w]=freqz(b,a);%Frequency response of the filter
sf=filter(b,a,s2);%Filtered signal

%% Plot

figure
subplot(2,1,1);
plot(w/pi/2/T,abs(H));%magnitude vs Frequency in Hz
title('Frequency response of Filter');
subplot(2,1,2);
stem(n,sf);
title('Time domain (filtered singal)');

 

