%Singal Processing Example
clear all;
clc;

n = 0:100; %time vector
F = 1; %frenquency in Hz
T = 0.05; %time in seconds
f=(0:127)/128; %Normailized frequency vector

%% Ideal Signal

s = sin(2*pi*F*n*T);% signal
S=fft(s,128);% Singal in frequency domain
P=S.*conj(S);% Spectrum of the signal


%% Signal with noise

s2=s+sin(2*pi*4*n*T); 
S2=fft(s2,128); 
P2=S2.*conj(S2);

%% Plots

 figure
 
 subplot(2,2,1);
 stem(n,s);
 xlabel('time');
 ylabel('signal');
 title('Time domain');
 
 subplot(2,2,2);
 plot(f,P);
 xlabel('frequency');
 ylabel('signal');
 title('Frequency domain');
 
 subplot(2,2,3);
 stem(n,s2);
 xlabel('time');
 ylabel('signal');
 title('Time domain (with Disturbance)');
 
 subplot(2,2,4);
 plot(f,P2);
 xlabel('frequency');
 ylabel('signal');
 title('Frequency domain (with Disturbance)');
