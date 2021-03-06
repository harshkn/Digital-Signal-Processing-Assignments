%% Computational Complexity of DFT/FFT
%% 6.1.1 Direct DFT and result comparision with FFT

x = rand(256,1);
dftXk = dft(x);
fftXk = fft(x);

figure(1)
plot(1:numel(x),abs(dftXk),'r*',1:numel(x),abs(fftXk),'b-');
title('DFT and FFT');
xlabel('Normalized Frequency in \omega'), ylabel('Magnitude');
legend('DFT','FFT');

dft_t=[];
fft_t=[];
for k = 4:8
    N=2^k;
    x=rand(N,1);
    tic
    dft(x);
    dft_t=[dft_t toc];
    tic
    fft(x);
    fft_t=[fft_t toc];
end

k=4:8;
figure(2)
plot(2.^k,dft_t,2.^k,fft_t,'r' );
legend('Using DFT function','Using FFT function');
xlabel('Number of elements N=2^k');
ylabel('Time to run');
title('Running Time of computing DFT');
