% Problem 583. Implement a counter
%  Created by David Hruska 
% 
% Write a function that returns a function that counts the number of times it is invoked. Example:
% >> h = counter;
% >> h()
% ans =
%      1
% >> h()
% ans =
%      2
% >> h()
% ans =
%      3
% 
% Note: your solution cannot use persistent variables.

function h = counter

x = 0;
h = @addOne;

    function y = addOne
        x = x + 1;
        y = x;
    end
end
