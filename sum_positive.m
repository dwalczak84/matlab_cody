% Problem 731. Given a window, how many subsets of a vector sum positive
% Created by Doug Hull Given a vector:
% 
% [1 0 -1 3 2 -3 1]
% and a window of 2,
% 
% A sliding window would find:
% 
%    1 + 0 =  1
%    0 - 1 = -1
%   -1 + 3 =  2
%    3 + 2 =  5
%    2 - 3 = -1
%   -3 + 1 = -2
% Meaning that three of the windows were positive.
% 
% Given a vector and a window, how many of the windows sum to be positive, not zero or negative?

function ans = sum_positive(x, window)
   
y = [];
for i = 0:length(x)-window
    y =[y; sum(x(1+i:window+i))];
end

sum(y > 0);

end
