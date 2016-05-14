%% Discrete time Signals and Systems
clear all;
clc;

%% Signal definitions

n = -10:20;
h = [1 1 1 1 ];

x1 = sin((12/100*pi).*n);

u1=(n>=0);
u2=(n>=6);
x2 = u1 -u2;

x3 = ((9/10).^n).*u1;

delta1 = (n==1);
delta2 = (n==2);
delta3 = (n==3);
x4 = ((5/10).*delta1)+ delta2+((5/10).*delta3);

x5 = ((9/10).^n).*(cos(((2/10)*pi).*n));

%x6 = sin(((2/10)*pi).*n)./(((2/10)*pi).*n);
x6 = sinc(((2/10)*pi).*n);

%% Plots

figure

subplot(2,4,1);
stem(n,x1);
xlabel('n');
ylabel('x1');
title('x1(n)');

subplot(2,4,2);
stem(n,x2);
title('x2(n)');
xlabel('n');
ylabel('x2');

subplot(2,4,3);
stem(n,x3);
title('x3(n)');
xlabel('n');
ylabel('x3');

subplot(2,4,4);
stem(n,x4);
title('x4(n)');
xlabel('n');
ylabel('x4');

subplot(2,4,5);
stem(n,x5);
title('x5(n)');
xlabel('n');
ylabel('x5');

subplot(2,4,6);
stem(n,x6);
title('x6(n)');
xlabel('n');
ylabel('x6');

%% Convolution

y = convmat(x6,h);
subplot(2,4,7);
plot(n,x6);
hold on;
stem(h);
title('Functions to be convolved');
subplot(2,4,8);
plot(y);
title('Convolution');



