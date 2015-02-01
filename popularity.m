% Problem 38. Return a list sorted by number of occurrences
% (Created by Cody Team)
% Given a vector x, return a vector y of the unique values in x sorted by 
% the number of occurrences in x.
% Ties are resolved by a sort from lowest to highest.
% 
% So if
%  x = [1 2 2 2 3 3 7 7 93]
% 
% then
%  y = [2 3 7 1 93]

function ans = popularity(x)

sortrows([unique(x); sum(bsxfun(@eq,unique(x),x'))]',-2);
ans(:,1)';
  
end
