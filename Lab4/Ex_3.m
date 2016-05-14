N=51;

alpha=(N-1)/2;
Hmagval=[ones(1,4),zeros(1,22)];
wk=2*pi/N*(0:alpha);

Hphi = exp(-1i*wk*alpha);
H=Hmagval.*Hphi;

H = [H, conj(H(end:-1:2))];
h=ifft(H);

figure(1);
stem(h);
xlabel('Time');ylabel('Amplitude');

figure(2);
H=fft(h,512);
plot(2*pi/length(H)*(0:length(H)-1),20*log10(abs(H)));

xlim([0 pi]);
xlabel('\omega/rad');ylabel('Magnitude/dB');
