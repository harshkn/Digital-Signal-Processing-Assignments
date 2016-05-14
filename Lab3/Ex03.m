%% DTMF Signal Decoding 
%% 6.3 Generation
x = dtmfdial('7',8000);

Xk = fft(x);
N = length(x);
wk = 2*pi*(0:1/N:1-1/N);
fk = (wk * 8000) / (2 * pi);
figure(1)
plot(fk,abs(Xk));

title('Spectrum of Digit 7');
xlabel('Frequency in Hz');
ylabel('Magnitude');
 

%% 6.3.3 Decode
mynum =  load('mynumber.mat');
mynum = mynum.xx;

figure(2);
plot(mynum);
title('Original DTMF Signal');
xlabel('Time');
ylabel('Amplitude');
l = floor(length(mynum)/320);
comp_digit = [];
for num = 0:l-1
    digit = mynum(num*320+1:(num*320+256));
    X = fft(digit);
    comp_digit = [comp_digit dtmfcoef(X)];
end

disp(comp_digit);
