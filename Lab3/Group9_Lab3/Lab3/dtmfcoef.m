function keydecoded = dtmfcoef( Xk )
%DTMFCOEF Summary of this function goes here
%   Detailed explanation goes here
dtmf.keys = ...
    ['1','2','3','A';
     '4','5','6','B';
     '7','8','9','C';
     '*','0','#','D'];
ff_cols = [1209,1336,1477,1633];
ff_rows = [ 697; 770; 852; 941];

fs = 8000;
N = 256;

maxXk = max(abs(Xk));

ff_rows_new = ceil(N*ff_rows / fs);
ff_cols_new = ceil(N*ff_cols /fs);
row_val =abs(Xk(ff_rows_new));
col_val=abs(Xk(ff_cols_new));

row=find(row_val > maxXk/4 );
col=find(col_val > maxXk/4 );
keydecoded = dtmf.keys(row,col);
end

