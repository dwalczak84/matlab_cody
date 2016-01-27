% Problem 2661. Change Vector Value
% Created by Abdullah Caliskan
% Change the element of the vector with respect to the element of the 
% direction vector
% If the element of the direction vector is 2, then the new element of the 
% vector is two times the corresponding element in the vector.
% 
% If the element of the direction vector is 1, then the new element of the 
% vector is two times the corresponding element in the vector minus one.
% 
% Attention: 'if' can not be used
% 
% Example
% 
%  direction vector d = [1  2  2  2  1  2  1  2]
%  vector =             [1  2  3  4  5  6  7  8]
%  new_vector =         [1  4  6  8  9 12 13 16]

function new_vec = change_direction(vector, d)
  
new_vec = - (d == 1) + vector * 2;

end
