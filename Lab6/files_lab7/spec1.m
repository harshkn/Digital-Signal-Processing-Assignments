
function [ C w ] = spec1(x,window,L)
%SPEC1 Summary of this function goes here
%   Detailed explanation goes here
% x, window must be row vectors
N=length(x);
M=N/L;
C_temp=[];
for (l=1:L)
    x_truncated=x(M*(l-1)+1:M*l); fft_temp=fft(x_truncated.*window); temp=1/sum(window.^2)*abs(fft_temp).^2;
    C_temp=[C_temp; temp];
end
if (L==1) C=C_temp;
else C=mean(C_temp);
end
w=(0:(M-1))*2*pi/M; 
end



