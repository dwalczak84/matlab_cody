% Problem 1941. Lowest sum from a group of digits
%  Created by James 
% 
% Hi there. It's James's daughter here again, and my third grade math 
% teacher is up to her old tricks. This time, she's giving us an even 
% number of digits between 0-9, and she wants us to come up with the 
% smallest possible sum of two numbers that are the same length.
% 
% For example, if we're given [0 1 2 3], the smallest sum we can get using 
% those numbers by adding two 2-digit numbers together is 33. That's either
% 10+23 or 13+20. We don't need to know what the two original numbers are, 
% just what their sum is. We also can't start any of our numbers with a 
% zero, because that's cheating.
% You guys did a great job with my earlier problems, and even taught my 
% dad a few things about MATLAB! I hope you can help me out with this one 
% as well!

function ans = lowest_number(x)

num = [];
sort(x(x > 0));
num = [ans(1); ans(2)];
[zeros(1, nnz(~x)) ans(3:end)];

while ~isempty(ans)
    num = [num(1, :) ans(1); num(2, :) ans(2)];
    ans(1:2) = [];
end

sum(str2num(num2str(num, -6)));

end
