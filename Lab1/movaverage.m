clear all;
load('glob_warm.mat');
m = 7;
N = numel(year);
mavgTa = zeros(numel(N));
for curyear = 1:N
    if(curyear < (m+1))
        mavgTa(curyear) = (sum(Ta(1:curyear))/curyear);
    elseif(curyear > (N-m))
        mavgTa(curyear) = (sum(Ta(curyear - m:N))/numel((curyear - m):N));
    else
        mavgTa(curyear) = (sum(Ta(curyear - m: curyear + m))/((2*m) + 1));
    end
end
plot(year,Ta,'b');
hold on
plot(year, mavgTa,'r');
title('Moving Average'); xlabel('Years'); ylabel('Yearly Anomaly');
legend('original val','averaged val')
