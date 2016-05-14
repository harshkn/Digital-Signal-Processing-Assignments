function [ C w ] = spec2( x,window,L,m )
%SPEC2 Summary of this function goes here
%   Detailed explanation goes here

[C_t w]=spec1(x,window,L);
N=length(C_t);
C=zeros(size(C_t));
for (n=1:N)
    l=m;
    if (n-l-1 < 0) 
        l = (n-1);
    end
    if (n+l > N) 
        l = (N-n);
    end
    C(n)=mean(C_t(n-l:n+l));
end
end