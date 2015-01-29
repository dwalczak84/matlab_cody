% Problem 21. Return the 3n+1 sequence for n
% % A Collatz sequence is the sequence where, for a given number n, the 
% next number in the sequence is either n/2 if the number is even or 3n+1 
% if the number is odd. The sequence always terminates with 1.
% 
% So if
%  n = 13
% 
% then
%  c = [13    40    20    10     5    16     8     4     2     1]

function c = collatz(n)

c = n;
i = 2;
while c(i-1) ~= 1
    if mod(c(i-1),2) == 0
        c(i) = c(i-1)/2;
    else
        c(i) = 3*c(i-1) + 1;
    end
    i = i+1;
end
