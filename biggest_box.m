% Problem 658. Find the biggest empty box
%  Created by Ned Gulley 
% You are given a matrix that contains only ones and zeros. Think of the 
% ones as columns in an otherwise empty floor plan. You want to fit a big 
% square into the empty space (denoted by zeros). What is the largest empty 
% square sub-matrix you can find in the given matrix? You will return the 
% row and column extent of the sub-matrix. The answer may not be unique. 
% We will test that your sub-matrix is square, that it is empty, and that 
% it contains the correct number of elements.
% 
% Example:
%  Input a = [1 0 0; 0 0 0; 0 0 0]
%  Output si = [2 3 2 3]
% 
% That is, the square indices are a(2:3,2:3). We verify that 
% sum(sum(a(2:3,2:3))) is zero, and that it has four elements.

function [r1,r2,c1,c2] = biggest_box(a)

X = [];
for window = 1:length(a)
    for i = 0:length(a)-window
        for j = 0:length(a)-window
            if sum(sum(a(1+i:window+i,1+j:window+j))) == 0
                X = [X; 1 + i window + i 1 + j window + j];
            end
        end
    end
end

[~, b] = max(X(:,2) - X(:,1));
num2cell(X(b,:));
[r1, r2, c1, c2] = ans{:};
  
end
