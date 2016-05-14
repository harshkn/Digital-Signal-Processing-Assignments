x = load('group9_stationary.mat');
x = x.x;
d=0.17; fs=16E3; v=343;
x1=x(:,1); x2=x(:,2);


L=512;
pos1=180000; 
s1=x1(pos1:pos1+L-1);
s2=x2(pos1:pos1+L-1); 
nmax=floor(d/v*fs);
[rval ,lags]=genxcorr(s1,s2,nmax); 
% figure(1);
% plot(lags,rval);
[~, pos]=max(rval);
lag=lags(pos); 
theta1=asin(-lag*v/fs/d);
x1=x(:,3);x2=x(:,4);

L=512;
s1=x1(pos1:pos1+L-1); s2=x2(pos1:pos1+L-1);
[rval ,lags]=genxcorr(s1,s2,nmax); 
% figure(2);
% plot(lags,rval);
[~, pos]=max(rval);
lag=lags(pos); 
theta2=asin(-lag*v/fs/d);


x1=x(:,5);x2=x(:,6);

L=512; 
s1=x1(pos1:pos1+L-1);
s2=x2(pos1:pos1+L-1);
[rval, lags]=genxcorr(s1,s2,nmax);
% figure(3);
% plot(lags,rval);
[~, pos]=max(rval);
lag=lags(pos); 
theta3=asin(-lag*v/fs/d);
x1=x(:,7);x2=x(:,8);

L=512; s1=x1(pos1:pos1+L-1);
s2=x2(pos1:pos1+L-1);
[rval, lags]=genxcorr(s1,s2,nmax);
% figure(4);
% plot(lags,rval);
[m, pos]=max(rval);
lag=lags(pos);
theta4=asin(-lag*v/fs/d);

aest1=tan(pi/2+theta1); 
aest2=-tan(theta2); 
aest3=tan(pi/2+theta3); 

% aest4=-tan(theta4);
x=0:0.01:5.19;
best1=0.19;
best2=3.21;
best3=5.27;
% best4=3.54;
y1=aest1*(x-2.69)+best1;
y2=aest2*(x-5.19)+best2;
y3=aest3*(x-2.70)+best3;
% y4=aest4*(x-0.37)+best4;
figure(5);
plot(x,y1,x,y2,x,y3);
legend('Pair 1','Pair 2','Pair 3','Pair 4'); 
title('Room setup with estimated AOA'); 
xlim([0 5.19]);
ylim([0 5.27]);
