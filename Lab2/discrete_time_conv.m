clear all;
clc;

u = ones(1,5);
h = u.*(2/10);

x1 = ones(1,9);
n = 0:35;
x2 = sin(((2/10)*pi).*n);
x3 = sin(((4/10)*pi).*n);
y1 = convmat(x1,h);
y2 = convmat(x2,h);
y3 = convmat(x3,h);

figure (1);
subplot(3,1,1);
stem(y1);
subplot(3,1,2);
stem(y2);
subplot(3,1,3);
stem(y3);

