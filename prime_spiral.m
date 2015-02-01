% Problem 659. How long is the longest prime diagonal?
%  Created by Ned Gulley 
% Stanislaw Ulam once observed that if the counting numbers are arranged in 
% a spiral, the prime numbers contained in it form a surprising pattern. 
% They appear to cluster along diagonals of the spiral matrix.
% 
% Given n, find the longest diagonal arrangement of primes in spiral(n).
% 
% Example:
%  Input  n = 7
%  Output d = 4
% 
% Since isprime(spiral(n)) is
%      1     0     0     0     1     0     0
%      0     0     0     1     0     0     0
%      1     0     1     0     0     0     0
%      0     1     0     0     1     1     0
%      0     0     1     0     1     0     1
%      0     1     0     0     0     1     0
%      1     0     0     0     0     0     1


function ans = prime_spiral(n)

X = isprime(spiral(n));
[];
for i = -n+1:1:n-1
    ans = [ans size(char(regexp(num2str(diag(X,i)',-6),'0','split')),2) size(char(regexp(num2str(diag(fliplr(X),i)',-6),'0','split')),2)];
end

max(ans);
    
end
