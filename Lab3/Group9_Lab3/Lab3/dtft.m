function [ X,w ] = dtft( x )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
M=length(x);
X=fft(x,100*M);
n=0:(100*M-1);
w=2*pi*n/(100*M);
end

