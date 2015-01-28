% Problem 79. DNA N-Gram Distribution
% Created by Cody Team 
% Given a string s and a number n, find the most 
% frequently occurring n-gram in the string, where the n-grams can begin at 
% any point in the string. This comes up in DNA analysis, where the 3-base 
% reading frame for a codon can begin at any point in the sequence.
% 
% So for
% 
%  s = 'AACTGAACG' and
% 
%  n = 3 we get the following n-grams (trigrams):
% 
%  AAC, ACT, CTG, TGA, GAA, AAC, ACG
% Since AAC appears twice, then the answer, hifreq, is AAC. There will 
% always be exactly one highest frequency n-gram.
% 
% This problem was originally inspired by a MATLAB Newsgroup discussion.

function ans = nGramFrequency(s, n)

y = [];
for i = 0:length(s)-n
    y =[y; {s(1+i:n+i)}];
end

x = unique(y);
z = [];
for i = 1:length(x)
    z = [z; sum(cell2mat(strfind(y, x{i})))];
end
    
[~, ans] = max(z);
cell2mat(x(ans));

end
