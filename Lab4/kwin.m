function [ N, beta ] = kwin( delw, A )
%KWIN Summary of this function goes here
%   Detailed explanation goes here

N=ceil((A-8)/(2.285*delw)+1);
if (A<21)
    b=0;
elseif  (21<=A && A<50)
   b= 0.5842*(A-21)^0.4+0.07866*(A-21); 
else
    b=0.01102*(A-8.7);
end

n=0:N-1;
beta=besseli(0,b*sqrt(1-( (2*n) / (N-1)-1 ).^2 ))/besseli(0,b);

end

