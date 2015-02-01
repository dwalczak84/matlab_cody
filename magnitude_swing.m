% Problem 729. Flag largest magnitude swings as they occur
% Created by Doug Hull 
% You have a phenomenon that produces strictly positive or negative results.
% 
% delta = [1 -3 4 2 -1 6 -2 -7];
% Marching through this list from beginning to end, mark a value with -1 if 
% it is the greatest magnitude negative yet seen (strictly greater, not 
% equal). Mark it with a one if it has the greatest magnitude in the 
% positive direction (strictly greater, not equal). Just use a 0 if neither 
% of these conditions have been met.
% 
% The result for the above example would be:
% 
% result = [1 -1 1 0 0 1 0 -1]

function ans = magnitude_swing(delta)

[~, a] = unique(delta,'stable');
delta(setdiff(1:length(delta),a)) = 0;
tril(repmat(delta,[],length(delta)));
(bsxfun(@eq, diag(ans), max(ans,[],2)) - bsxfun(@eq, diag(ans), min(ans,[],2)))';
  
end
