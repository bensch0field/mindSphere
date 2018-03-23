% hellooooooo
function [val] = json_decoder(fname)
if nargin < 1
    disp('Please Give a Name')
end
fid = fopen(fname); 
raw = fread(fid,inf); 
str = char(raw'); 
fclose(fid); 
val = jsondecode(str);
end