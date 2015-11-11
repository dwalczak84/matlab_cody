% Problem 42672. longest sequence of nans
%  Created by Mehmet OZC 
% 
% In an array return the length of longest sequence of nans for each 
% column.
%  x = 
%  [ 2   3   1   2   5   6;
%   nan nan  5  nan  6  -9;
%    5  nan  8  nan  6   5;
%    8  nan  7   -5 5.8  5;
%   nan  0   0  nan  5   7;
%   nan  5   9  nan  7  nan;
%   nan nan 10   0  nan  6;
%   nan nan  0   1  nan  9];
%  y_correct = 
%  [ 4   3   0   2   2   1];

function y = longnan(x)

num2str(isnan(x), -6').';
for i = 1:size(ans, 1)
    y(i) = max(cell2mat(cellfun(@numel, regexp(ans(i, :), '0', 'split'), 'uni', 0)));
end

end
