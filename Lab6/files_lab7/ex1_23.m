
clc;
clear all;
close all;
load ar7.mat;
%% Rectangle window
N=length(X);
L=1;
M=N/L;
window=rectwin(M);
[C w]=spec1(X.',window.',L);
figure(1);
title('Rectangular Window');
subplot(2,2,1); plot(w,C);
title('L=1');
xlabel('\omega/rad');
ylabel('Power density');

L=2;
M=N/L;
window=rectwin(M);
[C w]=spec1(X.',window.',L);
subplot(2,2,2); plot(w,C);
title('L=2');
xlabel('\omega/rad');
ylabel('Power density');


L=5;
M=N/L;
window=rectwin(M);
[C w]=spec1(X.',window.',L);
subplot(2,2,3); plot(w,C);
title('L=5');
xlabel('\omega/rad');
ylabel('Power density');


L=10;
M=N/L;
window=rectwin(M);
[C w]=spec1(X.',window.',L);
subplot(2,2,4); plot(w,C);
title('L=10');

xlabel('\omega/rad');
ylabel('Power density');

%% Hamming Window
L=1;
M=N/L;
window=hamming(M);
[C ,w]=spec1(X.',window.',L);
figure(2);
subplot(2,2,1); plot(w,C);
title('L=1');
xlabel('\omega/rad');
ylabel('Power density');


L=2;
M=N/L;
window=hamming(M);
[C ,w]=spec1(X.',window.',L);
subplot(2,2,2); plot(w,C);
title('L=2');
xlabel('\omega/rad');
ylabel('Power density');

L=5;
M=N/L;
window=hamming(M);
[C ,w]=spec1(X.',window.',L);
subplot(2,2,3); plot(w,C);
title('L=5');
xlabel('\omega/rad');
ylabel('Power density');

L=10;
M=N/L;
window=hamming(M);
[C ,w]=spec1(X.',window.',L);
subplot(2,2,4); plot(w,C);
title('L=10');
xlabel('\omega/rad');
ylabel('Power density');
