function [rval ,lags] = genxcorr(x1,x2,lagindex)
%GENXCORR Summary of this function goes here
%   Detailed explanation goes here
N=length(x1);
X1=fft(x1);
X2=fft(x2);
I=1/N*X1.*conj(X2);
eps=1E-7;
lags=-lagindex:lagindex;
out=real(ifft(I./(abs(I)+eps)));
rval=ifftshift(out);
L=length(rval);
t=-L/2:L/2+1;
rval=rval(abs(t)<=lagindex);

end