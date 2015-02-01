% Problem 43. Subset Sum
% Given a vector v of integers and an integer n, return the the indices of 
% v (as a row vector in ascending order) that sum to n. If there is no 
% subset in v that sums to n, return an empty matrix []. You can assume 
% that the answer will always be unique.
% 
% Example:
%  >> v = [2, 3, 5];
%  >> n = 8;
%  >> subset_sum(v, n)
%  ans =
%       2     3

function ans = subset_sum(v,n)

dec2bin(1:2^length(v)-1) - 48;
ans(n == sum(ans .* repmat(v,[], length(ans)), 2),:);

if isempty(ans)
    [];
else
    find(ans .* v);
end


end
