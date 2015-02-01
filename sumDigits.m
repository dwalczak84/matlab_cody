% Problem 20. Summing digits
% Given n, find the sum of the digits that make up 2^n.
% 
% Example:
%  Input  n = 7
%  Output b = 11
% 
% since 2^7 = 128, and 1 + 2 + 8 = 11.

function ans = sumDigits(n)

a = num2str(2^n);
for i = 1:length(a)
    b(i) = str2num(a(i));
end
sum(b,2);
end
