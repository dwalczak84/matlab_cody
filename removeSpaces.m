% Problem 44. Trimming Spaces (Created by Cody Team)
% Given a string, remove all leading and trailing spaces (where space is 
% defined as ASCII 32).
%  Input  a = ' singular value decomposition  '
%  Output b is 'singular value decomposition'

function ans = removeSpaces(a)

regexprep(a,'\s\s+','');

end
