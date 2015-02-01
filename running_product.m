% Problem 54. Maximum running product for a string of numbers
% Created by Cody Team Given a string s representing a list of numbers, find 
% the five consecutive numbers that multiply to form the largest number. 
% Specifically, given s return the index i to the first of those five 
% numbers. You can assume the maximum product is unique.
% 
% Example:
% 
%  Input  s = '123454321'
%  Output i = 3since the product of [3 4 5 4 3] is larger than any of the 
%  alternatives.
% 
% Inspired by Problem 8 from Project Euler

function ans = running_product(s)
  
    i = s-48;
    [];
    
    for j = 0:numel(i)-5
        ans = [ans; prod(i(1+j:5+j))];
    end
    
    [~, ans] = max(ans);
end
