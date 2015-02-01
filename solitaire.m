% Problem 753. Solitaire Cipher
%  Created by Doug Hull 
% 
% Implement the solitaire cipher.
% 
% Since this is from Wikipedia, I am capturing the algorithm now in case 
% there are edits.
% 
% Keystream Algorithm
% This algorithm assumes that the user has a deck of cards and two jokers 
% which are distinguishable from each other. For simplicity's sake, only 
% two suits will be used in this example. Each card will be assigned a 
% numerical value: the first suit of cards will be numbered from 1 to 13 
% (Ace through King) and the second suit will be numbered 14 through 26 in 
% the same manner. The jokers will be assigned the values of 27 and 28. 
% Thus, a 5 from the first suit would have the value 5 in our combined 
% deck, the value 1 in the second suit would have the value 14 in the 
% combined deck.
% 
% The deck will be assumed to be a circular array, meaning that should a 
% card ever need to advance below the bottom card in the deck, it will 
% simply rotate back to the top (in other words, the first card follows the 
% last card).
% 
% Arrange the deck of cards face-up according to a specific key. This is 
% the most important part as anyone who knows the deck's starting value can 
% easily generate the same values from it. How the deck is initialized is 
% up to the recipients, shuffling the deck perfectly randomly is 
% preferable, although there are many other methods. For this example, the 
% deck will simply start at 1 and count up by 3's, modulo 28. Thus the 
% starting deck will look like this:
% 1 4 7 10 13 16 19 22 25 28 3 6 9 12 15 18 21 24 27 2 5 8 11 14 17 20 23 26
% 
% Locate the first joker (value 27) and move it down the deck by one place, 
% basically just exchanging with the card below it. Notice that if it is 
% the last card, it becomes the second card. There is no way to become the 
% first card. The deck now looks like this:
% 1 4 7 10 13 16 19 22 25 28 3 6 9 12 15 18 21 24 2 *27* 5 8 11 14 17 20 23 26
% 
% Locate the second joker (value 28) and move it down the deck by two 
% places. Notice that if it is the second to last card, it becomes the 
% second card by wrapping around. If it is the last card, it becomes the 
% third card. There is no way to become the first card.
% 1 4 7 10 13 16 19 22 25 3 6 *28* 9 12 15 18 21 24 2 27 5 8 11 14 17 20 23 26
% 
% Perform a triple-cut on the deck. That is, split the deck into three 
% sections. Everything above the top joker (which, after several 
% repetitions, may not necessarily be the first joker) and everything below 
% the bottom joker will be exchanged. The jokers themselves, and the cards 
% between them, are left untouched.
% *5 8 11 14 17 20 23 26* 28 9 12 15 18 21 24 2 27 *1 4 7 10 13 16 19 22 25 3 6*
% 
% Observe the value of the card at the bottom of the deck, if the card is 
% either joker let the value just be 27. Take that number of cards from the 
% top of the deck and insert them back to the bottom of the deck just above 
% the last card.
% 23 26 28 9 12 15 18 21 24 2 27 1 4 7 10 13 16 19 22 25 3 *5 8 11 14 17 20* 6
% 
% Note the value of the top card. Count this many places into the deck and 
% take the value of the card there. This value is the next value in the 
% keystream, in this example it would be 8. (Note that no cards are 
% changing places in this step, this step simply determines the value).
% 
% Repeat steps 2 through 6 for as many keystream values as required.
% 
% It is worth noting that because steps 2 and 3 have the wrap around 
% feature, there are two configurations that can lead the same 
% configuration on a step. For instance when the little joker is on the 
% bottom or top of the deck it will become the second card. This means the 
% algorithm is not always reversible.
% 
% Given a starting set of numbers, deck, generate N values for the 
% keystream.

function out = solitaire(deck, n)

i = 0;
out = [];

while i < n

% step 1&2
if deck(end) == 27
    deck = [deck(1) 27 deck(2:end-1)];
else
    [~,b] = find(deck == 27);
    deck(b) = deck(b+1);
    deck(b+1) = 27;
end

if deck(end-1) == 28
    deck = [deck(1) 28 deck(2:end-2) deck(end)];
elseif deck(end) == 28
    deck = [deck(1:2) 28 deck(3:end-1)];
else
    [~,b] = find(deck == 28);
    deck = [deck(1:b-1) deck(b+1:b+2) 28 deck(b+3:end)];
end

%step 3
[~,b] = find(deck == 27 | deck == 28);
deck = [deck(b(2)+1:end) deck(b(1):b(2)) deck(1:b(1)-1)];

%step 4
deck(end);
if ans >= 27
    ans = 27;
end
deck = [deck(ans+1:end-1) deck(1:ans) ans];

% step 5
deck(1);
out = [out deck(ans)];

i = i+1;
end


end
