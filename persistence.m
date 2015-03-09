% Problem 2008. Number Persistence
%  Created by Ziko 
% 
% A number's persistence is the number of steps required to reduce it to a 
% single digit by multiplying all its digits to obtain a second number, 
% then multiplying all the digits of that number to obtain a third number, 
% and so on until a one-digit number is obtained.
% 
% For example, 66 has a persistence of three because it requires three 
% steps to reduce it to one digit: 66-36-18-8.

function y = persistence(x)

y = 0;
num2str(x) - 48;
while length(ans) ~= 1
    prod(ans);
    num2str(ans) - 48;
    y = y + 1;
end
y;

end
