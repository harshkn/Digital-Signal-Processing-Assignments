clc;clear all;

%% 5.3 IIR Filtering of Sinusoids

fs=1000;
Ts=1/fs;
n=0:300;
x=5*sin(200*pi*n*Ts)+2*cos(300*pi*n*Ts);
wp=150;Wp=wp/(fs/2);
ws=100;Ws=ws/(fs/2);
Rp=1;Rs=40;
[n,Ws]=cheb2ord(Wp,Ws,Rp,Rs);
[b,a]=cheby2(n,Rs,Ws,'high');

figure(1);
freqz(b,a);
title('Chebyshev High pass Filter Type 2 ');
out=filter(b,a,x);

figure(2);
subplot(2,1,1);
stem(x);
title('Input signal');
xlabel('Samples');ylabel('Amplitude');
subplot(2,1,2);
stem(out);
title('Filtered signal');
xlabel('Samples');ylabel('Amplitude');

N = 10;
n=0:200;
Td = 2;
x = sin(0.44*n);
w1 = 0.44*pi;
w2 = 0.48*pi;
W1=w1/Td;
W2=w2/Td;
Wp = [W1 W2];
[b,a] = ellip(N,Rp,Rs,Wp,'stop');

figure(3);
freqz(b,a);
out = filter(b,a,x); 
figure(4);
subplot(2,1,1);
stem(x);
title('Input signal');
xlabel('Samples');ylabel('Amplitude');
subplot(2,1,2);
stem(out);
title('Filtered signal');
xlabel('Samples');ylabel('Amplitude');