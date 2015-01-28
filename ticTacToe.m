% Problem 58. Tic Tac Toe FTW
% Created by Cody Team Given a tic tac toe board:
% 
% 1 represents X
% 0 represents empty.
% -1 represents O
% It is X's move. If there is an immediate win possibility, 
% choose a square for an immediate win. Otherwise return 0.
% 
% Return absolute index of the square of choice. If multiple 
% square are valid, return them in order.
% 
% Example:
% 
%  Input  a = [ 1  0  1
%              -1  1  0
%               0 -1 -1]
%  Output wins is [4 8]

function ans = ticTacToe(a)

c = a;
a(a == 0) = 1;
A = str2num('1 0 0 1 0 0 1 0; 0 1 0 1 0 0 0 0; 0 0 1 1 0 0 0 1; 1 0 0 0 1 0 0 0; 0 1 0 0 1 0 1 1; 0 0 1 0 1 0 0 0; 1 0 0 0 0 1 0 1; 0 1 0 0 0 1 0 0; 0 0 1 0 0 1 1 0');
Y = A(:,all(bsxfun(@eq,bsxfun(@eq,a(:),A),A)));
Y1 = size(Y);
Z = [];

for i = 1:Y1(2)
    Z = [Z all(bsxfun(@eq,[0 1], [c(:) Y(:,i)]),2)];
end

find(sum(Z(:,sum(Z,1) == 1),2));
if isempty(ans)
    ans = 0;
end
    
end
