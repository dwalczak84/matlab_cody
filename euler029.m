% Problem 1106. I've got the power! (Inspired by Project Euler problem 29)
%  Created by James 
% 
% Consider all integer combinations of a^b and b^a for the integer values 
% 2 ≤ a ≤ 4 and 2 ≤ b ≤ 5:
%     2^2=4,  2^3=8,   2^4=16,  2^5=32
%     3^2=9,  3^3=27,  3^4=81,  3^5=243
%     4^2=16, 4^3=64,  4^4=256, 4^5=1024
%     5^2=25, 5^3=125, 5^4=625
% 
% If they are then placed in numerical order, with any repeats removed, we 
% get the following sequence of 14 distinct terms:
% 
% 4, 8, 9, 16, 25, 27, 32, 64, 81, 125, 243, 256, 625, 1024
% 
% Given two values for x and y, find the unique, sorted sequence given by 
% the values a^b and b^a for 2≤a≤x and 2≤b≤y.

function z = euler029(x, y)

[M, N] = meshgrid(2:x, 2:y);
z = unique([M.^N; N.^M])';

end
