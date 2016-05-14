clear all;
x = rand(1000,1);
subplot(1,2,1),plot(hist(x))
title('With rand');
minx = min(x);
maxx = max(x);
meanx = mean(x);
stdx = std(x);

y = (4 * x) - 2;
miny = min(y);
maxy = max(y);
meany = mean(y);
stdy = std(y);

fprintf('With rand(x) \n');
fprintf('Mean of x  = %f \n',meanx);
fprintf('Standard Deviation of x = %f \n',stdx);
fprintf('Minimum value of x = %f \n',minx);
fprintf('Maximum value of x  = %f\n',maxx);

fprintf('Mean of y  = %f \n',meany);
fprintf('Standard Deviation of y  = %f \n',stdy);
fprintf('------------------------------\n',maxy);


x = randn(1000,1);
subplot(1,2,2),plot(hist(x))
title('With randn');
minx = min(x);
maxx = max(x);
meanx = mean(x);
stdx = std(x);

y = (4 .* x) - 2;
miny = min(y);
maxy = max(y);
meany = mean(y);
stdy = std(y);

fprintf('With randn(x) \n');
fprintf('Mean of x  = %f \n',meanx);
fprintf('Standard Deviation of x = %f \n',stdx);
fprintf('Minimum value of x = %f \n',minx);
fprintf('Maximum value of x  = %f\n',maxx);
fprintf('Mean of y  = %f \n',meany);
fprintf('Standard Deviation of y  = %f \n',stdy);


