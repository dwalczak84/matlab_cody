% Problem 2469. Cat, Meowcat and Concatenation
%  Created by rifat ahmed 
% 
% Input is a cell array containing several strings. Find the largest 
% continuous sub-string common to all strings. All strings are in lower 
% case and unique answer exists.
% 
% Example:
% in = {'cat','meowcat','concatenation'};
% out = 'cat';

function ans = commonS(x)

X = x{1};
{};
for window = 1:length(X)
    for i = 0:length(X) - window
        [ans {X(1+i:window+i)}];
    end
end
fliplr(ans);

i = 1;
try
    while ~(numel(x) == sum(~cell2mat(cellfun(@isempty, strfind(x, ans{i}), 'Uni', 0))))
        i = i + 1;
    end
    ans{i};
catch
    '';
end

end
