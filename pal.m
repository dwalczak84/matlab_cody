% Problem 75. Find the palindrome
%  Created by Cody Team 
% 
% Given the string a, find the longest palindromic sub-string b.
% 
% So when
%  a = 'xkayakyy';
% 
% you should return
%  b = 'kayak';

function ans = pal(a)

b = [];
for i = 1:length(a)
    for j = i:length(a)
        b = [b {a(i:j)}];
    end
end

c = cellfun(@eq, b, cellfun(@fliplr, b,'UniformOutput',false),'UniformOutput',false);
d = cellfun(@all, c,'UniformOutput',false);
z = zeros(1,length(b));

for i = 1:length(d)
    if cell2mat(d(i)) == 1
        z(i) = sum(c{i});
    end
end

[~, ans] = max(z);
b{ans};

end
