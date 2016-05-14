%% Windowing method

function [ htrunc ] = firlp( N, wc )
    a=(N-1)/2;
    n=0:(N-1);
    htrunc=sinc(wc*(n-a)/pi);
    htrunc=htrunc';
end