% Problem 2595. Polite numbers. Politeness.
%  Created by Jan Orwat 
% 
% A polite number is an integer that sums of two or more consecutive 
% positive integers. Politeness of a positive integer is a number of 
% nontrivial ways to write n as a sum of two or more consecutive integers.
% 
% For example 9 = 4+5 = 2+3+4 and politeness of 9 is 2.
% 
% Given N return politeness of N.
% 
% See also 2593

function P = politeness(x)

A = factor(x);
A = A(rem(A, 2) == 1 & A > 1);
dec2bin(1:pow2(numel(A))- 1) - 48;
repmat(A, size(ans, 1), 1)  .* ans;
ans(ans == 0) = 1;
P = numel(unique(prod(ans, 2)));

end
