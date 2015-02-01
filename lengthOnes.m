% Problem 15. Find the longest sequence of 1's in a binary sequence.
% 
% Given a string such as
%  s = '011110010000000100010111'
% 
% find the length of the longest string of consecutive 1's. In this 
% example, the answer would be 4.k,
% 
% Example:
%  Input  x = '110100111'
%  Output y is 3

function ans = lengthOnes(x)

0;

for i = 1:length(x)
    if ~isempty(strfind(x,num2str(ones(1,i),-6)))
        i;
    end
end

end
