% Problem 795. Joining Ranges
%  Created by Dirk Engel 
% 
% You are given a n-by-2 matrix. Each row represents a numeric range, e.g.
% x = [0 5; 10 3; 20 15; 16 19; 25 25]
% 
% contains ranges [0 5], [10 3], [20 15], [16 19], and [25 25]. Note that 
% the first column does not always contain the smaller number. Join all 
% overlapping ranges and return the sorted (both columns and all rows must 
% be sorted) matrix of joined ranges
% y = [0 10; 15 20; 25 25]
% 
% i.e. ranges [0 5] and [10 3] are combined to [0 10], range [16 19] is 
% completely overlapped by [15 20] and [25 25] is kept because it is a 
% separate range.

function y = joinRanges(x)

if numel(x) == 2
    y = x;
else
    x = sortrows(sort(x, 2));
    x(any([1 1; diff(x)] < 0, 2), :) = [];
    i = 1;
    y = x(1, :);
    while y(end) ~= x(end)
        if x(i, 2) >= x(i + 1, 1)
            y(1, 2) = x(i + 1, 2);
        else
            y(i + 1, :) = x(i + 1 , :);
        end
        i = i + 1;
    end
end
y(all(bsxfun(@eq, y, str2num('0 0')), 2), :) = [];

end
