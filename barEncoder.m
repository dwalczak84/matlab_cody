% Problem 602. Make a simplified barcode
% 
% Given an integer to encode, make a barcode using the following encoding 
% scheme:
% The bar code is made from the binary version of the integer
% The bar code is a matrix 30x?
% A '1' becomes a thick bar
% A '0' becomes a thin bar
% Bars are represented by 0's in the output
% A '1' becomes '0 0 0'
% A '0' becomes '0'
% White space between bars is a single 1
% There will be no left hand zeros in the binary representation
% There are three columns of white space at beginning and end of bar code 
% For example:
% 
% Input 5 yields
% 
% [1 1 1 0 0 0 1 0 1 0 0 0 1 1 1] (only repeated for 30 rows);

function out = barEncoder(x)

out = repmat(['111' strrep(strrep(num2str(dec2bin(x) - 48, -5), '1', '000'), ' ', '1') '111'] - 48, 30, []);

end
