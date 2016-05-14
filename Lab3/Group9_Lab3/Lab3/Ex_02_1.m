% 6.2 (1)
clc;
clear all;

%Varying the window Lengths
windowLen1=12;
windowLen2=36;

% Different windows

recWindow1=rectwin(windowLen1);
recWindow2=rectwin(windowLen2);

bartlettWin1=bartlett(windowLen1);
bartlettWin2=bartlett(windowLen2);

hammingWin1=hamming(windowLen1);
hammingWin2=hamming(windowLen2);

figure(1);

%Rectangular Window N=12
[X1,w1]=dtft(recWindow1);
subplot(3,2,1);
plot(w1,20*log10(abs(X1)/max(abs(X1))));
title('Rectangular Window N=12');
xlim([0 pi]);ylim([-50 0]);
xlabel('Normalized Frequency \omega');
ylabel('Magnitude in dB');

%Rectangular Window N=36
[X2,w2]=dtft(recWindow2);
subplot(3,2,2);
plot(w2,20*log10(abs(X2)/max(abs(X2))));
title('Rectanguar Window N=36');
xlim([0 pi]);ylim([-50 0]);
xlabel('Normalized Frequency \omega');
ylabel('Magnitude in dB');

%bartlett Window N=12
[X3,w3]=dtft(bartlettWin1);
subplot(3,2,3);
plot(w3,20*log10(abs(X3)/max(abs(X3))));
title('Bartlett Window N=12');
xlim([0 pi]);ylim([-50 0]);
xlabel('Normalized Frequency \omega');
ylabel('Magnitude in dB');

%bartlett Window N=36
[X4,w4]=dtft(bartlettWin2);
subplot(3,2,4);
plot(w4,20*log10(abs(X4)/max(abs(X4))));
title('Bartlett Window N=36');
xlim([0 pi]);ylim([-50 0]);
xlabel('Normalized Frequency \omega');
ylabel('Magnitude in dB');

%Hamming Window N=12
[X5,w5]=dtft(hammingWin1);
subplot(3,2,5);
plot(w5,20*log10(abs(X5)/max(abs(X5))));
title('Hamming Window N=12');
xlim([0 pi]);ylim([-50 0]);
xlabel('Normalized Frequency \omega');
ylabel('Magnitude in dB');

%Hamming Window N=36
[X6,w6]=dtft(hammingWin2);
subplot(3,2,6);
plot(w6,20*log10(abs(X6)/max(abs(X6))));
title('Hamming Window N=36');
xlim([0 pi]);ylim([-50 0]);
xlabel('Normalized Frequency \omega');
ylabel('Magnitude in dB');