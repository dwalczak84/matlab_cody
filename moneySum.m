% Problem 28. Counting Money (Created by Cody Team)
% Add the numbers given in the cell array of strings. The strings represent 
% amounts of money using this notation: $99,999.99.
% 
% Example:
%  Input a = {'$12,001.87','$0.04','$12,003,887.55','$0.32'};
%  Output b is 12015889.78

function ans = moneySum(a)

sum(str2double(regexprep(a,'[\$\,]','')));

end
