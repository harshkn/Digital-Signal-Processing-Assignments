load ('noise_5insx.mat');
load ('speech.mat');

y0db = x_speech+x_5insx;
y3db = x_speech+ sqrt(0.5)*x_5insx;

% soundsc(y0db);
% soundsc(y3db);

H1=fft(x_speech, 20 * numel(x_speech));
H2=fft(x_5insx, 20 * numel(x_5insx));

w = 0:2/numel(H1):(2 ) - (2/numel(H1));
figure(1);
plot(w',abs(H1).^2,w',abs(H2).^2,'g');
legend('Signal','Noise');
xlabel('\omega/\pirad');ylabel('Power');
title('Signal with Noise');

wp = 0.03*pi;
ws = 0.5*pi;
N = 65;

lp1fir=firlp(N,wp);
lp2fir=firlp(N,ws);
window=hamming(N);
bp=(lp2fir-lp1fir).*window;

s_restored=filter(bp,1,y3db);
soundsc(s_restored);
figure(2);
[H]=fft(s_restored, 20 * N);
plot(1:numel(H),abs(H).^2);
xlabel('\omega/\pirad');ylabel('Power');
title('Filtered Signal');