%% 1- 
b = [0.16 0.48 0.48 0.16];
a = [1 0.13 0.52 0.3];
n = -10:20;
delta = (n==0);
h = filter(b,a,delta);
[H,w] = freqz(h);
figure(1);
subplot(2,1,1);
stem(n,h);
title('Impulse Response of the Filter');
xlabel('Time'); ylabel('Amplitude');
subplot(2,1,2);
plot(w, 20*log10(abs(H)));
title('Frequency Response of the Filter');
xlabel('Frequency'); ylabel('Magnitude/dB');

%% 2- 
n = 0:255;
K = 100;
k = 0:K;
wk = pi * k / K;
x = cos(n' * wk);
h = filter(b,a,x);
h = h(31:end,:);
H_new = max(abs(h));

figure(2)
plot(w, 20*log10(abs(H)),'g',wk, 20*log10(H_new),'r');
title('Frequency Response of the Filter');
xlabel('Frequency'); ylabel('Magnitude/dB');
legend('Using impulse as input','Using sinusoid signals as input');


