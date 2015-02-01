% Problem 47. Extract leading non-zero digit
% Benford's Law states that the distribution of leading digits is not random. 
% This is probably because many things grow logarithmically. Extract the 
% leading digit from these vectors.
% 
% 10 --> 1
% 13 --> 1
% 0.3 --> 3
% -4 --> 4
% -5 --> 5
% -0.006 --> 6
% Input will be a vector
% 
%  x = [1 0.3 -2 0.001 -0.0006, 582398, 3020];
% 
% Output should be
% 
%  y = [1 3 2 1 6 5 3]

function ans = leadingDigit(x)

regexp(cellstr(num2str(abs(x'))),'[1-9]','match');
str2double(cellfun(@(v) v(1), ans(:,:))');

end
