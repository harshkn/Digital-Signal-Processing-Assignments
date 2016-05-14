wp = 0.12*pi;
ws = 0.18*pi;
A=30;

wc = (wp+ws)/2;
dw = ws-wp;


[N ,w]=kwin(dw,A); 
hfir=firlp(N,wc);
alpha = floor((N-1)/2);
hfir=hfir.*(w.');
n=0:N-1;
hfir=(n==alpha).'-hfir;
figure(1);
stem(hfir);ylim([-0.2 1]);
xlabel('Time');ylabel('Amplitude');
figure(2);
[H W]=dtft(hfir, 20 * N);
plot(W, 20*log10(abs(H)/max(abs(H))));
xlabel('\omega/rad');ylabel('Magnitude/dB');
grid;
%%

wpb1=0.36*pi;
wsb1=0.44*pi;

wpb2=0.06*pi;
wsb2=0.14*pi;

wc1=(wpb1+wsb1)/2;
dw1=wsb1-wpb1;

wc2=(wpb2+wsb2)/2;
dw2=wsb2-wpb2;

A=30;

[N w]=kwin(dw,A);
h1fir=firlp(N,wc1);
h2fir=firlp(N,wc2);
hbp=(h1fir-h2fir).*(w.');
[H w]=dtft(hbp, 20 * N);
figure(3);
stem(hbp);
xlabel('Time');ylabel('Amplitude');
figure(4);
plot(w,20*log10(abs(H)));
xlabel('\omega/rad');ylabel('Magnitude/dB');
grid;