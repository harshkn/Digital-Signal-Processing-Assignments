%----------Fibonacci Numbers-----------
clear all;
clc;

fprintf('\n--------4.2 Fibonacci Numbers--------\n');

N = 12;
fprintf('\nThe fibonacci series for first 12 numbers are \n');
fib = fibonacci(N)';
disp(fib);

ratio_sequence = zeros(N-1,1);

for i = 1 : length(ratio_sequence)
    ratio_sequence(i) = fib(i+1)/fib(i);
end

goldenratio = (sqrt(5) + 1)/2;
plot(fib(1,2:end),ratio_sequence,'b',240:270, goldenratio,'r-'); 
title('Fibonacci Golden Curve');
xlabel('Fibonacci Series');
ylabel('Ratio Sequence');
legend('Ratio Curve','Golden Ratio Value');
