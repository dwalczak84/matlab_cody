% Problem 57. Summing Digits within Text
% Given a string with text and digits, add all the numbers together.
% 
% Examples:
%  Input str = '4 and 20 blackbirds baked in a pie'
%  Output total is 24
%  Input str = '2 4 6 8 who do we appreciate?'
%  Output total is 20
 
function ans = number_sum(str)

str(~isstrprop(str,'digit')) = ' ';
sum(str2num(deblank(str)),2)

end
