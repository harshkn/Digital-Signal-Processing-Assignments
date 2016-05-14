function [ fib ] = fibonacci( N )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
fib = zeros(N,1);
fib(1) = 1;
fib(2) = 2;

seq_nbr =3;
for seq_nbr = 3:N
    fib(seq_nbr)=fib(seq_nbr-1)+fib(seq_nbr-2);
    seq_nbr=seq_nbr+1;
end

end

