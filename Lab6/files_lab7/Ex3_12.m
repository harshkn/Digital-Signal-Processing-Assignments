clc;
clear all;
close all;
N=256;
n=0:(N-1);
z=sqrt(0.5)*randn([1 N]); 
X=sin(0.2*pi*n)+2*sin(0.4*pi*n)+sin(0.45*pi*n)+z;


%4.3 - 1
X1=[X(1:64) zeros(1 ,192)];
X2=X;
figure(1);
subplot(2,1,1);

N=length(X1);
L=1;
M=N/L;


window = rectwin(M);
[C1 w1]=spec1(X1,window.',L);
plot(w1/pi,10*log10(C1));
grid;
title('N=64 with zero paddling');
xlabel('Normalized Frequency \omega/ \pi rad');
ylabel('Power density');

N=length(X2);
L=1;
M=N/L;
window=rectwin(M);
[C2, w2]=spec1(X2,window.',L);
subplot(2,1,2);
plot(w2/pi,10*log10(C2));
xlim([0 1]);grid;
title('N=256');
xlabel('Normalized Frequency \omega/ \pi rad');
ylabel('Power density');
%4.3 - 2
X3=X;
figure(2)

N=length(X3);
L=2;
M=N/L;
window=rectwin(M);
[C3, w3]=spec1(X3,window.',L);
subplot(2,1,1);
plot(w3/pi,10*log10(C3));
grid;
title('N=256, L=2');
xlabel('Normalized Frequency \omega/ \pi rad');
ylabel('Power density');

N=length(X3);
L=4;
M=N/L;
window=rectwin(M);
[C3, w3]=spec1(X3,window.',L);
subplot(2,1,2);
plot(w3/pi,10*log10(C3));
xlim([0 1]);grid;
title('N=256, L=4');
xlabel('Normalized Frequency \omega/ \pi rad');
ylabel('Power density');