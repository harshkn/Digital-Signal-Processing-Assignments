function [ y ] = manualConv( x,h )

lenx=length(x);
lenh=length(h);
N=lenx+lenh-1;
H=[];

for (count=1:lenx)
    temp=[zeros(count-1,1); h; zeros(N-count-lenh+1,1)];
    H=[H temp];  
end
y=H*x;
end

