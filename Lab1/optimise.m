clear all
r = 0.5:0.1:10; % in cm
V = 330; % in cm3 
aofr = (2 * pi * (r .* r)) + ( (2 * V)./r);
[minaofr,indminaofr] = min(aofr);
optr = r(indminaofr);
plot(r,aofr);
hold on
plot(optr, minaofr,'*r');
title('Optimisation problem');
xlabel('radius'); ylabel('surface area');
legend('surface area','optimum r')
fprintf('Minimum Surface area is %f and optimal r is %f \n',minaofr,optr);

