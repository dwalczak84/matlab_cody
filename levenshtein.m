% Problem 93. Calculate the Levenshtein distance between two strings
% Created by Cody Team 
% 
% This problem description is lifted from 
% http://en.wikipedia.org/wiki/Levenshtein_distance.
% 
% The Levenshtein distance between two strings is defined as the minimum 
% number of edits needed to transform one string into the other, with the 
% allowable edit operations being insertion, deletion, or substitution of a 
% single character.
% 
% For example, the Levenshtein distance between "kitten" and "sitting" is 
% 3, since the following three edits change one into the other, and there 
% is no way to do it with fewer than three edits:
% 
%  kitten => sitten  (substitution of 's' for 'k')
%  sitten => sittin  (substitution of 'e' for 'i')
%  sittin => sitting (insert 'g' at the end).So when
% 
%  s1 = 'kitten'and
% 
%  s2 = 'sitting'then the distance d is equal to 3.
 
function ans = levenshtein(s1,s2)

A = [1:length(s2); zeros(length(s1),length(s2))];
A = [(0:length(s1))' A];
    
for j = 1:length(s2)
    for i = 1:length(s1)
        if s1(i) == s2(j)
            A(i+1, j+1) = A(i, j);
        else
            A(i+1, j+1) = min([A(i,j+1) + 1 A(i+1,j) + 1 A(i,j) + 1]);
        end
    end
end
    
A(end,end);

end
