% x1 < x2
% x1 - x2 < 0
% 
% as x1 and x2 = integers
% (x1 - x2) = integer
% 
% so: 
% x1 - x2 <= -1
% x1 - x2 + 1 <= 0
function [c, ceq] = constraint(x)
c = x(:,1) - x(:,2) + 1;
ceq = [];