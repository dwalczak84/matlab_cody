% Problem 88. It dseon't mettar waht oedrr the lrettes in a wrod are.
%  Created by Cody Team 
% An internet meme from 2003 (read more here) asserted that readers are 
% relatively insensitive to letter order in words, so long as the first 
% and last letters are unchanged.
% Given a string of words s, take each word in turn and reverse the order 
% of letters 2 through n-1, where n is the length of the words. 
% Non-alphabetic characters should remain in place.

% So if
%  sIn = 'hello'
% 
% then
%  sOut = 'hlleo'
% 
% And if
%  sIn = 'This is the first time I have used MATLAB.'
% 
% then
%  sOut = 'Tihs is the fsrit tmie I hvae uesd MALTAB.'

function ans = scrambleText(sIn)

regexp(sIn,'\w+','match');
Y = cellfun(@(ans) ans(2:end-1), ans,'UniformOutput',false);
strrep(ans, Y, cellfun(@(Y) fliplr(Y),Y, 'UniformOutput',false));

if sIn(end) == '.'
    [sprintf('%s ',ans{1:end-1}), ans{end} '.'];
else
    [sprintf('%s ',ans{1:end-1}), ans{end}];
end


end
