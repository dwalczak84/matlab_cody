% Problem 96. Knight's Tour Checker
% Created by Cody Team 
% Given a matrix a, determine whether or not a legal knight's tour is 
% present. The knight's tour always follows the pattern 1, 2, 3, ... but it 
% need not fill the entire matrix. Any unused squares contain zeros. 
% Your function should return true if the counting sequence from 1 to n 
% represents a knight's tour, and false if not.
% 
% Example
% 
% The matrix a as given below is a legal knight's tour. The middle square 
% is unreachable, but since it contains a zero, it satisfies the condition. 
% The function should return TRUE.
% 
% 7     2     5
% 4     0     8
% 1     6     3
% Here is another legal (if short) knight's tour. The test suite will 
% always contain at least one move (i.e. the counting sequence [1 2]). Note 
% the matrix is not required to be square.
% 
% 1     0     0
% 0     0     2
% Here is an illegal knight's tour. Everything is fine up until the jump 
% from 14 to 15, which is illegal because it jumps from row 4 to row 1.
% 
%  15     5    12     3
%   0     2     9     6
%   8    11     4    13
%   1    14     7    10

function ans = knights_tour(a)

[r c v] = find(a);
sortrows([v r c], 1);

Z = [];
for i = 2:nnz(a)
    Z = [Z; any(all(bsxfun(@eq, bsxfun(@plus, reshape(str2num('-2 1 -2 -1 -1 2 -1 -2 1 2 1 -2 2 1 2 -1'),2,[])', ans(i-1,2:end)), ans(i,2:end)),2))];
end

all(Z);

end
