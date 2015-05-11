% Problem 2513. Genome decoding
%  Created by Guillaume 
% 
% Inspired by a question on the answer forum:
% 
% You are given a matrix of 8-bit integers which encodes a genome. Each 
% integer can be converted into a sequence by converting it first to binary 
% and then converting bit pairs using the rule A = 00, C = 01, T = 10, 
% G = 11. For example, 177 -> 10110001 -> TGAC.
% 
% Convert the matrix into a cell array of sequences.
% 
% str2num and regexp not allowed.

function ans = decode_genome(genome)

Y = reshape(dec2bin(genome)', 1, []);
D = '';
E = 'ACTG';
F = dec2bin(0:3);
for i = 1:4
    strfind(Y, F(i, :));
    D(ans(rem(ans, 2) == 1)) = E(i);
end

reshape(cellstr(reshape(D(1:2:end)', 4,  numel(genome))'), size(genome, 1), size(genome, 2));

end
