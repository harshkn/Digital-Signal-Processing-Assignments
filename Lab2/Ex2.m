clear all
%Musical Tone Synthesis 6.2 - 1
f1 = 392; %in Hz
fs = 8192; %in Hz
t1 = 1/f1; 
T = 1/fs;
starttime = 0;
endtime = 1 - T;
t = starttime:T:endtime;
s1s = sin(2 * pi * f1 * t);
% stsf = fft(s1s);
% figure(1)
% subplot(2,1,1) , stem(s1s);
% % stem(s1s);
% subplot(2,1,2) , plot(1:numel(stsf),stsf);
soundsc(s1s, fs);
disp('Press any key to continue..');
pause
% Harmonics - 2

snew = s1s;
for k = 2:8
    fk = f1 * k;
    pk(k) = 0.25.^(k-1);
    sh = pk(k) * (sin(2 * pi * fk * t)); %harmonic
    snew = snew + sh; %adding harmonic signal
end
stsf = fft(snew);
% figure(2)
% subplot(2,1,1) , stem(snew);
% subplot(2,1,2) , plot(1:numel(stsf),stsf);
soundsc(snew, fs);

disp('Press any key to continue..');
pause


%envelope - 3
A = envelope(numel(snew), 0.25, [240 7200]);
esnew = A .* snew;
ESNEW = fft(esnew);
figure(3)
subplot(2,1,1), 
plot(esnew); 
xlabel('t'); ylabel('x(t)');
title('Envelope of Harmonics and its FFT')
subplot(2,1,2), plot(1:numel(ESNEW),abs(ESNEW));
xlabel('f'); ylabel('x(f)');


% piano - 4
piano = load('pianoG3.mat');
fftpiano = fft(piano.g);
soundsc(piano.g, piano.fs);
figure(4)
subplot(2,1,1), 
plot(piano.g); 
xlabel('t'); ylabel('x(t)');
title('Envelope of real piano data and its FFT');
subplot(2,1,2),
plot(1:numel(fftpiano),abs(fftpiano));
xlabel('f'); ylabel('x(f)');


