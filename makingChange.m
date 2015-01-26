% Problem 48. Making change
% Created by Cody Team 
%
% Given an amount of currency, return a vector of this form:
% [100 50 20 10 5 2 1 0.5 0.25 0.1 0.05 0.01]
%
% Example:
% Input a = 257.68
% Output b is [2 1 0 0 1 1 0 1 0 1 1 3]
%
% Always use bigger bills/coins if possible.

function y = makingChange(a)

x = 100*[100 50 20 10 5 2 1 0.5 0.25 0.1 0.05 0.01];
y = [];
a = a*100;
i = 1;
j = 0;

while i <= length(x) && a > 0
    while a - j*x(i) >= x(i)         
        j = j+1;
    end
    y(i) = j;
    a = a - j*x(i);
    i = i + 1;
    j = 0;
end

end
