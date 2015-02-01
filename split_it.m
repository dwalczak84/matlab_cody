% Problem 660. Find a subset that divides the vector into equal halves
% Created by Ned Gulley Given a vector x, return the indices to elements 
% that will sum to exactly half of the sum of all elements.
% 
% Example:
% 
%  Input  x  = [1 2 3 4 5 6 7]
%  Output xi = [1 6 7] 
% 
% because
% 
%  sum(x) = 28
%  sum(x([1 6 7])) = 14
% The answer is not necessarily unique and the order is 
%  unimportant. We will just test to make sure that sum(x)/2 is sum(x(xi))

function ans = split_it(x)

x;
while dot(x,~ans-ans)
   rand(size(x))>.5;
end

end

