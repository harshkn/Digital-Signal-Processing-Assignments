clear all;
clc;
%Sample with hidden pulses loaded
 load('..\Lab_2\files_lab2\b3pulses.mat');
%Sampling frenquency (in Hz)
fs = 80000;
%Stopband and Passband Frequency ranges (in Hz)
fp1 = 5000;    fs1 = 8000;
fp2 = 10500;   fs2 = 15500;
fp3 = 18000;   fs3 = 20000;
f01 = (fp1+fs1)/2; f02 = (fp2+fs2)/2;  f03 = (fp3+fs3)/2;
%Digital frequency bands
w01 = f01/fs*2*pi;
w02 = f02/fs*2*pi;
w03 = f03/fs*2*pi;
%Range (Digital domain)
delW = [(fs1-fp1)/fs*2*pi; (fs2-fp2)/fs*2*pi; (fs3-fp3)/fs*2*pi;];
 
r=[];
for i=1:3
    tmp=roots([4 -(8+delW(i)^2) 4]);
    r=[r tmp(2)];
end

b=[1 0 -1];
a1=[1 -2*r(1)*cos(w01) r(1)^2];
a2=[1 -2*r(2)*cos(w02) r(2)^2];
a3=[1 -2*r(3)*cos(w03) r(3)^2];

figure(1);
plot(x);
title('Noisy Signal');
xlabel('Time');
ylabel('Amplitude');

figure(2);
subplot(3,1,1);
[H1,w1]=freqz(b,a1);
plot(w1/2/pi*fs/1000,abs(H1).^2);
title('Filter One');
xlabel('Frequency(kHz)');ylabel('|H(e^{ j\omega})|^2');

subplot(3,1,2);
[H2,w2]=freqz(b,a2);
plot(w2/2/pi*fs/1000,abs(H2).^2);
title('Filter Two');
xlabel('Frequency(kHz)');ylabel('|H(e^{ j\omega})|^2');


subplot(3,1,3);
[H3,w3]=freqz(b,a3);
plot(w3/2/pi*fs/1000,abs(H3).^2);
title('Filter Three');
xlabel('Frequency(kHz)');ylabel('|H(e^{ j\omega})|^2');

y1=filter(b,a1,x);
y2=filter(b,a2,x);
y3=filter(b,a3,x);

figure(3);
subplot(3,1,1);
plot(y1);
title('Output of the Filter One');
xlabel('Time');ylabel('Amplitude');
subplot(3,1,2);
plot(y2);
title('Output of the Filter Two');
xlabel('Time');ylabel('Amplitude');
subplot(3,1,3);
plot(y3);
title('Output of the Filter Three');
xlabel('Time');ylabel('Amplitude');

