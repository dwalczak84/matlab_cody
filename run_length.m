% Problem 722. Make a run-length companion vector
%  Created by Ned Gulley 
% 
% Given a vector x, return a vector r that indicates the run length of any 
% value in x. Each element in r shows how many times the corresponding 
% element in x has appeared 
% consecutively.
% 
% Example:
%  Input  x = [5 3 3 1 0 9 9 4 4 4 4 5 1 2 2]
%  Output r = [1 1 2 1 1 1 2 1 2 3 4 1 1 1 2]

function r = run_length(x)
r = x;

for i = 1:length(x)
    r(i) = 1;
    if i > 1 && x(i) == x(i-1)
        r(i) = r(i) + r(i-1);
    end
end

end
