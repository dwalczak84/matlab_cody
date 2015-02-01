% Problem 69. Find the peak 3n+1 sequence value
% Created by Cody Team 
% 
% A Collatz sequence is the sequence where, for a given number n, the next 
% number in the sequence is either n/2 if the number is even or 3n+1 if the 
% number is odd. See Problem 21 for more information.
% Let c(n) be the sequence for n, and p(n) be the peak value of that 
% sequence. For a given threshold nmax, find the highest peak value 
% max(p(n)) for all Collatz sequences starting with integers between 1 and 
% nmax.

function ans = peakOfPeaks(nmax)
  
X = [];

for j = 1:nmax
    X = [X collatz(j)];
end

    function c = collatz(j)
    c = j;
    i = 2;
    while c(i-1) ~= 1
        if mod(c(i-1),2) == 0
            c(i) = c(i-1)/2;
        else
            c(i) = 3*c(i-1) + 1;
        end
        i = i+1;
    end

    end

max(X);
    
end
