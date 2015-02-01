% Problem 78. Implement a ROT13 cipher
% Replace each character in string s1 with the character that is shifted 
% 13 positions from it (wrap back to the beginning if necessary). 
% So A ? N, B ? O, and so on until Y ? L and Z ? M. Case of the output 
% should match the case of the input, so a ? n. Non-alphabetic characters 
% are left in place and untouched.
% 
% If
%  s1 = 'I love MATLAB'
% 
% then
%  s2 = 'V ybir ZNGYNO'

function s1 = rot13(s1)

for i = 1:length(s1)
    if double(s1(i)) < 90 && double(s1(i)) + 13 > 90
        s1(i) = char(64 + 13 - (90 - double(s1(i))));
    elseif  double(s1(i)) > 96 &&  double(s1(i)) + 13 > 122
        s1(i) = char(96 + 13 - (122 - double(s1(i))));
    elseif double(s1(i)) < 65
        s1(i) = s1(i);
    else
        s1(i) = char(double(s1(i)) + 13);
    end
end

end
