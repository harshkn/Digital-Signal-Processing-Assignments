wp = 0.12*pi;
ws = 0.18*pi;
A=30;

wc = (wp+ws)/2;
dw = ws-wp;


[N, w]=kwin(dw,A);
hfir=firlp(N,wc);
hfir=hfir.*(w.');

figure(1);
stem(hfir);
xlabel('Time ');ylabel('Amplitude ');

figure(2);
[Hfir, W]=dtft(hfir, 20 * N);
plot(W, 20*log10(abs(Hfir)/max(abs(Hfir))));
xlabel('\omega rad');ylabel('Magnitude/dB');