% Problem 42671. unique with nan
%  Created by Mehmet OZC 
% 
% input
%  x = [2 NaN 3 5 NaN;
%       1 NaN 4 9 NaN;
%       8 -2  7 6  -2;
%       7  4  8 5  4];
% 
% output
%  y_correct = 
%  [2 NaN 3 5;
%   1 NaN 4 9;
%   8 -2  7 6;
%   7  4  8 5];

function y = unique_with_nan(x)

any(isnan(x));
x(:, setdiff(find(ans), find(ans, 1, 'first'))) = [];
y = x;
  
end
