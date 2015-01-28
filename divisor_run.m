% Problem 84. Longest Divisor Run
% Created by Cody Team 
% Given the vector a, find the longest run of consecutive numbers that 
% can be evenly divided by the same number d where d > 1.
% 
% Example:
% 
% Input  a = [5 4 2 8 3 7 14]
% 
% Output len is 3, d is 2 The last two numbers, 7 and 14, are divisible by 
% 7, but the run of numbers [4 2 8] are all divisible by 2. So the longest 
% run is 3. You can assume that d is unique.

function [len,ans] = divisor_run(a)

X = [];
Y = [];
for i = 2:max(a)
    X = [X; ~rem(a,i)];
end
for i = 1:size(X,1) 
    Y = [Y; size(char(regexp(num2str(X(i,:),-6),'0','split')),2)];
end

[len, ans] = max(Y);
ans+1;

end
