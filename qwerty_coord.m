% Problem 50. QWERTY coordinates (Created by Cody Team)
% Given a lowercase letter or a digit as input, return the row where that 
% letter appears on a standard U.S. QWERTY keyboard and its position 
% starting from the leftmost digit or letter on that row.
% 
% Examples:
%  Input  key = 'a'
%  Output r = 3
%         c = 1
%  Input  key = '0'
%  Output r = 1
%         c = 10
%  Input  key = 'y'
%  Output r = 2
%         c = 6
        
function [r,c] = qwerty_coord(key)

[r, c] = find(['1234567890';'qwertyuiop';'asdfghjkl;';'zxcvbnm,./'] == key);

end
