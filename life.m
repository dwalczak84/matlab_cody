% Problem 52. What is the next step in Conway's Life?
% Created by Cody Team 
% Given a matrix A that represents the state of % Conway's game of Life at 
% one instant (time t=n), return the matrix B that represents the state of 
% the game at the next instant (time t=n+1).
% 
% Assume a toroidal game board, so the edges of the matrix wrap left to 
% right and top to bottom.
% 
% Examples:
% 
%  Input  A = [ 1   1   0   0
%               0   1   0   0
%               1   1   0   0
%               0   0   0   0 ]
% 
%  Output B = [ 1   1   0   0
%               0   0   1   0
%               1   1   0   0
%               0   0   0   0 ] 
%               
%  Input  A = [ 0   1   1   0
%               1   1   1   0
%               0   0   1   0
%               0   0   0   0 ] 
%               
%  Output B = [ 1   0   1   1
%               1   0   0   0
%               0   0   1   1
%               0   1   1   0 ]

function ans = life(A)

C = horzcat([A(16); A(:,end); A(13)], [A(end,:); A; A(1,:)], [A(4); A(:,1); A(1)]);

B = [];
for i = 0:size(C,1) - 3
    for j = 0:size(C,2) - 3
        C(1+i:3+i,1+j:3+j);
        if ans(2,2) == 0 && sum(sum(ans,2)) == 3
            B = [B 1];
        elseif ans(2,2) == 1 && sum(sum(ans,2)) == 3 
            B = [B 1];
        elseif ans(2,2) == 1 && sum(sum(ans,2)) == 4
            B = [B 1];
        elseif ans(2,2) == 1 && sum(sum(ans,2)) > 4
            B = [B 0];
        elseif ans(2,2) == 1 && sum(sum(ans,2)) < 3
            B = [B 0];
        else
            B = [B 0];
        end
    end
end

[B(1:4); B(5:8); B(9:12); B(13:16)];

end
