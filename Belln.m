% Problem 2248. Bell Number calculator
% Created by robin
% Calculate a vector of Bell numbers for sets up to length n. Bell numbers 
% are the maximum number of partitions of a set. See the Wikipedia entry 
% for Bell Number.
% 
% Example
% 
%  Belln(8) = [1 1 2 5 15 52 203 877 4140]

function y = Belln(n)

B = 1;
if n == 0
    y = B;
else
    for i = 2:n
        B(i, 1) = B(i - 1, i - 1);
        for j = 2:i
            B(i, j) = sum(B(i - 1:i, j - 1));
        end
    end
    y = [1 diag(B)'];
end

end
