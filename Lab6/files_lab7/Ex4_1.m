clc;
clear all;
close all;

[y,t] = readfile('resp_fast.txt');
title1 = 'Respiration - Fast ';
compute_periodogram(y,t,title1);

[y,t] = readfile('resp_slow.txt');
title1 = 'Respiration - Slow';
compute_periodogram(y,t,title1)


[y,t] = readfile('group9_respiration.txt');
title1 = 'Cardiac  - Group 9';
compute_periodogram(y,t,title1)