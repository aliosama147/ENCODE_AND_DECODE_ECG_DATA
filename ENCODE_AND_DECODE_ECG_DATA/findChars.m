function [unique_chars,num_unique_chars] = findChars(msg)

unique_chars = unique(msg);
num_unique_chars = numel(unique_chars); 

end