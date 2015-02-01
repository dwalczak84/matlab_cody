% Problem 661. Spot the outlier
% All points except for one lie on a line. Which one is the outlier?
% 
% Example:
% 
% You are given a list of x-y pairs in a column like this:
% 
%  pts = [ 0 1 
%          0 2 
%          3 2
%          0 3 
%          0 4 ]
% 
% You would return the number 3, since the third point is the only one
% that is non-collinear with the other points. All the others are on the 
% y-axis.
% 
%  outlier = 3

function ans = spot_the_outlier(pts)

X = pts;
X(X(:,1) == 0,2) = X(X(:,1) == 0,1);

if mode(pts(:,1)) == 0 && all(pts(:,2) ~= 0)
    find((X(:,2) == pts(:,2)) == 1);
elseif any(sum(pts(:,:) == 0,2) == 2)
    find((pts(:,1) == pts(:,2)) == 1);
else
    round(100*[diff(pts(:,2))./diff(pts(:,1)) pts(1:end-1,2) - (diff(pts(:,2))./diff(pts(:,1))).*pts(1:end-1,1)])/100;
    find(~(round((pts(:,1)*mode(ans(:,1)) + mode(ans(:,2)))*100)/100 == pts(:,2)) == 1);
end


end
