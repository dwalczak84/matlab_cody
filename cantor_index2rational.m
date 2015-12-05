% Problem 1472. nth Rational Number
%  Created by G K 
% 
% Return the nth rational number.
% This is the inverse to Problem 1471. Index of a Rational number
% The first ten positive rational numbers under the enumeration using 
% cantors diagonalization argument are 1/1, 2/1, 1/2, 3/1, 2/2, 1/3, 4/1, 
% 3/2, 2/3, 1/4. Find the index of a positive rational number enumerated in 
% this manner, i.e. the 6th rational number is 1/3.
% 
% Problem 2) Prev: 1471 Next: 1477

function out = cantor_index2rational(x)

1:1e6;
ans(cumsum(ans) < x);
q = x - sum(ans);
numel(ans) + 2 - q;
out = [ans q];

end
