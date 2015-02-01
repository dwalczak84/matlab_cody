% Problem 61. Find state names that end with the letter A
% Created by Cody Team 
% Given a list of US states, remove all the states that end with the 
% letter A.
% 
% Example:
%  Input  s1 = 'Alabama Montana Nebraska Vermont Nevada'; 
%  Output s2 is '   Vermont '; 

function ans = refcn4(s1)

regexprep([s1 ' '],'(North )?(West )?[A-Za-z]+a ',' ');
ans(end) = '';

end
