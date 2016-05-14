v = -1:0.1:1;
s = [];
for i = 1:numel(v)
    if(v(i) >= 0)
        s = [s '+'];
    else
        s = [s '-'];
    end
end
disp(s);