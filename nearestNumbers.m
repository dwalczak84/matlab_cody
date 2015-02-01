% Problem 29. Nearest Numbers (Created by Cody Team) 
% Given a row vector of numbers, find the indices 
% of the two nearest numbers.
% 
% Examples:
% 
%  [index1 index2] = nearestNumbers([2 5 3 10 0 -3.1]) index1 =
%       1
%  index2 =
%       3 
%  
%  [index1 index2] = nearestNumbers([-40 14 22 17]) 
%  index1 =
%       2
%  index2 =
%       4Notes
% 
% 1.The indices should be returned in order such that index2 > index1.
% 2.There will always be a unique solution.


function [x1, x2] = nearestNumbers(A)
    
abs(bsxfun(@minus, A, A(:)));
ans(1:size(ans)+1:end) = NaN;
[x1 x2] = find(ans == min(min(ans)));
sort(x1);
x1 = ans(1);
x2 = ans(2);
    
end
