

N_OPT = [17 51]
wc=0.5*pi;

N = N_OPT(1);
y=firlp(N,wc);

wrect=rectwin(N);
wbart=bartlett(N);
whamm=hamming(N);

yrect=y.*wrect;
ybart=y.*wbart;
yhamm=y.*whamm;

[Hrect1 ,wrect1]=dtft(yrect,  20 * N);
[Hbart1 ,wbart1]=dtft(ybart , 20 * N);
[Hhamm1,whamm1]=dtft(yhamm , 20 * N);

figure(1);
subplot(3,2,1);
plot(wrect1,20*log10(abs(Hrect1)));xlim([0 pi]);
xlabel('\omega rad');ylabel('Magnitude/dB');
title('Rectangle Window, N=17');

subplot(3,2,3);
plot(wbart1,20*log10(abs(Hbart1)));xlim([0 pi]);
xlabel('\omega rad');ylabel('Magnitude/dB');
title('Bartlett Window, N=17');

subplot(3,2,5);
plot(whamm1,20*log10(abs(Hhamm1)));xlim([0 pi]);
xlabel('\omega rad');ylabel('Magnitude/dB');
title('Hamming Window, N=17');

N = N_OPT(2);
y=firlp(N,wc);
wrect=rectwin(N);
wbart=bartlett(N);
whamm=hamming(N);
yrect=y.*wrect;
ybart=y.*wbart;
yhamm=y.*whamm;
[Hrect2, wrect2]=dtft(yrect, 20 * N);
[Hbart2, wbart2]=dtft(ybart, 20 *N);
[Hhamm2, whamm2]=dtft(yhamm, 20 *N);

subplot(3,2,2);
plot(wrect2,20*log10(abs(Hrect2)));xlim([0 pi]);
xlabel('\omega rad');ylabel('Magnitude/dB');
title('Rectangle Window, N=51');

subplot(3,2,4);
plot(wbart2,20*log10(abs(Hbart2)));xlim([0 pi]);
xlabel('\omega rad');ylabel('Magnitude/dB');
title('Bartlett Window, N=51');

subplot(3,2,6);
plot(whamm2,20*log10(abs(Hhamm2)));xlim([0 pi]);
xlabel('\omega rad');ylabel('Magnitude/dB');
title('Hamming Window, N=51');
