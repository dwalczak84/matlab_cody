% Problem 27. Pangrams!
% A pangram, or holoalphabetic sentence, is a sentence using every letter 
% of the alphabet at least once.
% 
% Example:
%  Input  s = 'The quick brown fox jumps over the lazy dogs'
%  Output tf is true

function ans = isPangram(s)

sum((unique(double(upper(s))) > 64)) == 26;
  
end
