clear all;
clc;
%% Generate room Impulse response
fs=44100;
mic=[3 3 3];
rm=[10 10 10];
src=[5 4 3];
n=4;
r=1;
hR=rir(fs, mic, n, r, rm, src);
% figure(1);
% stem(hR);
% title('Room Impulse response');
% xlabel('Time');
% ylabel('Mag');
ssig = wavread('speech.wav');%audioread depreteates

% soundsc(ssig);
%% Convolute with impulse response
nsig = conv(hR,ssig);
% soundsc(hanger);
M=length(hR)+length(nsig)-1;
%% Restore distorted signal
restoredSignal=ifft(fft(nsig,M)./fft(hR,M));
% soundsc(restoredSignal);
%% Signal plots
figure(3);
subplot(3,1,1);
plot((0:1/fs:(length(ssig)-1)/fs),ssig);
title('Original signal');
subplot(3,1,2);
%in next release
plot((0:1/fs:(length(nsig)-1)/fs),nsig);
title('Distorted signal');
subplot(3,1,3);
plot((0:1/fs:(length(restoredSignal)-1)/fs),restoredSignal);
title('Restored signal');