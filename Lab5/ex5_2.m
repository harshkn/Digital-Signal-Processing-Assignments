clear all;clc;

%% Characteristics of IIR Filter

fs = 200;
wp = 32;
ws = 38;
Rp = 1;
Rs = 25;

Wp = wp/(fs/2);
Ws = ws/(fs/2);
[n1,Wn1] = buttord(Wp,Ws,Rp,Rs); 
disp('Order of Butterworth');disp(n1);
[n2,Wn2] = cheb1ord(Wp,Ws,Rp,Rs);
disp('Order of Chebyshev Type I');disp(n2);
[n3,Wn3] = ellipord(Wp,Ws,Rp,Rs);
disp('Order of Elliptical');disp(n3);
[b1,a1] = butter(n1,Wn1);
[b2,a2] = cheby1(n2,Rp,Wp);
[b3,a3] = ellip(n3,Rp,Rs,Wp);
figure(1);
zplane(b1,a1); title('Butterworth Filter');
figure(2);
zplane(b2,a2); title('Chebyshev Filter');
figure(3);
zplane(b3,a3); title('Elliptical Filter');
[H1,w1] = freqz(b1,a1);
[H2,w2] = freqz(b2,a2);
[H3,w3] = freqz(b3,a3);

figure(4);
subplot(3,1,1);
plot(w1,abs(H1));
title('Butterworth Filter');
xlabel('\omega/rad');ylabel('Mag');
subplot(3,1,2);
plot(w2,abs(H2));
title('Chebyshev Filter');
xlabel('\omega/rad');ylabel('Mag');
subplot(3,1,3);
plot(w3,abs(H3));
title('Elliptical Filter');
xlabel('\omega/rad');ylabel('Mag');

figure(5);
subplot(3,1,1);
impz(b1,a1);xlim([0 50]);
title('Butterworth Filter');
subplot(3,1,2);
impz(b2,a2);xlim([0 50]);
title('Chebyshev Filter Type 1');
subplot(3,1,3);
impz(b3,a3);xlim([0 50]);
title('Elliptic Filter');

%% Designing a FIR Filter and comparing it to the IIR Filters
f = [wp ws];
A = [1 0];
DEV = [(10^(Rp/20)-1)/(10^(Rp/20)+1) 10^(-Rs/20)];
[n,fo,ao,w] = firpmord(f,A,DEV,fs);
disp('Order of FIR Filter');disp(n);
B = firpm(n,fo,ao,w);

figure(6);
[H,w]=freqz(B,1,1024,fs);
plot(w,abs(H));
title('FIR Optimal Filter');
xlabel('T');ylabel('Mag');