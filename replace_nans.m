% Problem 73. Replace NaNs with the number that appears to its left in the 
% row.
% Replace NaNs with the number that appears to its left in the row.
% If there are more than one consecutive NaNs, they should all be replaced 
% by the first non-NaN value to the immediate left of the left-most NaN. 
% If the NaN is in the first column, default to zero.
% 
% For example, if
% x = [NaN  1   2  NaN NaN 17  3  -4 NaN]
% 
% then
% y = [ 0   1   2   2   2  17  3  -4  -4]

function x = replace_nans(x)
  
x(isnan(x(1))) = 0;

for i = 1:length(x)
    if sum(x(isnan(x))) ~= 0
        x(isnan(x)) = x(find(isnan(x))-1);
    end
end

x;

end
