function [ dftres] = dft(x)
%DFT Summary of this function goes here
%   Detailed explanation goes here

    N=length(x);
    temp=(0:N-1).'*(0:N-1);
    mat=exp(-1i*2*pi/N*temp);
    dftres=mat*x;
end



