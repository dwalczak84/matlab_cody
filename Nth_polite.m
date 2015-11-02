% Problem 2593. Polite numbers. N-th polite number.
%  Created by Jan Orwat 
% 
% A polite number is an integer that sums of at least two consecutive 
% positive integers.
% 
% For example 7 = 3+4 so 7 is a polite number.
% 
% Given N return N-th polite number.
% 
% See also 2595

function polite = Nth_polite(n)

2.^(0:35);
if n < 1e7
    setdiff(1:1e7, ans);
    polite = ans(n);
else
    polite = n +  nnz(n > ans);
end

end
