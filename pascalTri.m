% Problem 37. Pascal's Triangle
% Given an integer n >= 0, generate the length n+1 row vector representing 
% the n-th row of Pascal's Triangle.
% 
% Examples:
%  pascalTri(0)
%  ans =
%      1
%  pascalTri(1)
%  ans =
%      1     1
%  pascalTri(2)
%  ans =
%      1     2     1

function y = pascalTri(n)

if n == 0
    y = 1;
else
    A = [];
    for i = 1:n+1
        for j = 1:i
            if i == j || i == 1
                A(i+1,j+1) = 1;
            else
                A(i+1,j+1) = A(i,j) + A(i,j+1);
            end
        end
    end
    y = A(end,2:end);
end

end
