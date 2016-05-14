%---------Magic matrix----------------
clear all;
clc;
fprintf('\n--------4.1 Magic matrices--------\n');

M = magic(5);

fprintf('\n---SUM OF ROWS---\n');
fprintf('Code : sum(M)\n');
disp(sum(M));

fprintf('\n---SUM OF COLS---\n');
fprintf('Code : sum(M")\n');
disp(sum(M'));

fprintf('\n---VALUES IN FIRST ROW---\n');
fprintf('Code : M(1,:)\n');
disp(M(1,:));

fprintf('\n---VALUES IN THIRD COL---\n');
fprintf('Code : M(:,3)\n');
disp(M(:,3));

fprintf('\n---VALUES FROM COL ONE TO THREE---\n');
fprintf('Code : M(:,1:3)\n'); 
disp(M(:,1:3));

fprintf('\n---VALUES FROM ROW TWO TO END---\n');
fprintf('Code : M(2:end,:)\n');
disp(M(2:end,:));

fprintf('\n--INDICES OF ELEMENTS WITH VALUES >10--\n');
fprintf('Code : find(M>10)\n');
disp(find(M>10));

fprintf('\n--INDICES OF ELEMENTS <4--\n');
fprintf('Code : find(M<4)\n'); 
disp(find(M<4));