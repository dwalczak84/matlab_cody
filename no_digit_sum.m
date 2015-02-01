% Problem 49. Sums with Excluded Digits
% Add all the integers from 1 to n in which the digit m does not appear. 
% m will always be a single digit integer from 0 to 9.
%  no_digit_sum(10,1) = 44
% 
% because 1 and 10 are excluded from the sum and
%  sum(2:9) = 44

function ans = no_digit_sum(n,m)

sum(strread(regexprep(num2str(1:n),[ '\d*' num2str(m) '\d*'],'')));
 
end
