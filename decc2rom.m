% Problem 63. Encode Roman Numerals
%  Created by Cody Team 
% 
% Create a function taking a non-negative integer as its parameter and 
% returning a string containing the Roman Numeral representation of that 
% integer.
% By convention, "modern" Roman numerals are written by expressing each 
% digit separately starting with the leftmost digit and skipping any digit 
% with a value of zero.
% 
% Examples
% If n is 1990 then romStr = 'MCMXC' since 1000=M, 900=CM, 90=XC.
% If n is 2008 then romStr = 'MMVIII' since 2000=MM, 8=VIII.
% If n is 1666 then romStr = 'MDCLXVI'.
% If n is 0 then romStr is empty ([] and '' are both acceptable)
% 
% n will always be an integer between 0 and 3999 (inclusive).
% This problem is adapted from Rosetta Code.

function romStr = dec2rom(n)
  
X = str2num('1000 900 500 400 100 90 50 40 10 9 5 4 1');
Y = {'M' 'CM' 'D' 'CD' 'C' 'XC' 'L' 'XL' 'X' 'IX' 'V' 'IV' 'I'};
y = zeros(1,13);
i = 1;
j = 0;

while i <= 13 && n > 0
    while n - j*X(i) >= X(i) 
        j = j+1;
    end
    y(i) = j;
    n = n - j*X(i);
    i = i + 1;
    j = 0;
end

romStr = [];
for i = 1:13
    romStr = [romStr repmat(Y{i},1,y(i))];
end


end
