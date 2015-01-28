% Problem 90. Connect Four Win Checker
% Created by Cody Team 
% Connect Four is a game where you try to get four pieces in a row. For 
% this problem, you are given a grid of numbers that represents a game 
% between Mr. One and Mr. Two. Your job is to return 1 if Mr. One wins, 2 
% if Mr. Two wins, and 0 if there is no winner yet. There will never be a 
% two-winner state.
% 
% Note that this is a generalized game of Connect Four in which the board 
% might vary in dimension (it is guaranteed to be 4 or greater in each 
% dimension). Also in Connect Four the pieces fall to the bottom of the 
% grid, but in this problem the pieces can appear in any position.
% 
% Example
% 
% In the board below, the pieces are 1s and 2s. Empty spots are zeros. Mr. 
% Two wins because the third column has four consecutive twos. So the 
% output of your function should be 2.
% 
% b = [0 1 1 0 2;
%      0 1 2 2 1;
%      1 0 2 2 2;
%      1 1 2 2 1;
%      1 1 2 1 0];
 
function ans = c4winner(b)

X = b == 1;
Y = b == 2;
0;

for i = 0:size(b,1) - 4
    for j = 0:size(b,2) - 4
        Z = Y(1+i:4+i,1+j:4+j);
        ZZ = X(1+i:4+i,1+j:4+j);
        if any(all(Z,1)) || any(all(Z,2)) || all(diag(Z)) || all(diag(fliplr(Z)))
            2;
        elseif any(all(ZZ,1)) || any(all(ZZ,2)) || all(diag(ZZ)) || all(diag(fliplr(ZZ)))
            1;
        end
    end
end


end
