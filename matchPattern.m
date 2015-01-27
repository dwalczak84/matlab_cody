% Problem 59. Pattern matching (Created by Cody Team)
% Given a matrix, m-by-n, find all the rows that have the same "increase, 
% decrease, or stay same" pattern going across the columns as the first row 
% does. Do not list the row as a match to itself.
% 
% Example:
%  Input  a = [1 2 3 0
%              5 6 7 9
%              2 7 8 7]
%  Output b is 3
% 
% since the third column follows the increase-increase-decrease pattern 
% used in vector a.

function ans = matchPattern(a)

Z = (diff(a,[],2) < 0).*(-1) + (diff(a,[],2) > 0).*1;
size(Z);
all(bsxfun(@eq,Z(1,:),Z(2:end,:)),2).*(2:ans(1))';
ans(ans > 0);

end
