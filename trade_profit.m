% Problem 730. How many trades represent all the profit?
%  Created by Doug Hull 
% Given a list of results from trades made:
% 
% [1 3 -4 2 -1 2 3]
% 
% We can add them up to see this series of trades made a profit of 6. Since
% the two biggest trades sum to that, we can say that all the profit came 
% from two trades.
% What is the minimum number of trades that represent the total profit 
% (possibly exceeding it). All trade lists will represent profitable 
% series.

function ans = trade_profit(x)

dec2bin(0:2^length(x)-1) - 48;
min(sum(ans(sum(x) == sum(ans .* repmat(x,[], length(ans)), 2),:),2));

end
