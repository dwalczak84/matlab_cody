% Problem 95. Given two strings, find the maximum overlap
% Created by Cody Team 
% Given two strings s1 and s2, create a new string s3 which is as short as 
% possible and contains both strings.
% 
% If
% 
%  s1 = [1 2 3 4 5] 
% and
%  s2 = [5 4 3 2] then
% and
%  s3 = [1 2 3 4 5 4 3 2]
% There is guaranteed to be one best solution.

function s3 = overlap2(s1,s2)

if ~isempty(strfind(s1,s2))
    s3 = s1;
else
    for window = length(s2):-1:1
        for i = 0:length(s2) - window
            if ~isempty(strfind(s1, s2(1+i:window+i)))
                X = strfind(s1, s2(1+i:window+i));
                if ~isempty(strfind([s1(1:X(1)-1) s2],s2)) && ~isempty(strfind([s1(1:X(1)-1) s2],s1))
                    s3 = [s1(1:X(1)-1) s2];
                elseif ~isempty(strfind([s2 s1(X(1)+1:end)],s2)) && ~isempty(strfind([s2 s1(X(1)+1:end)],s1))
                    s3 = [s2 s1(X(end)+1:end)];
                end
            end
        end
    end
end
  
end
