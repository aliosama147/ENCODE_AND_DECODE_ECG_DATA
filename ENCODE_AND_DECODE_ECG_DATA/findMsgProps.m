function [chars_prop, chars_count] = findMsgProps(msg,msg_length,unique_chars,num_unique_chars)

chars_count=zeros(1,num_unique_chars);
chars_prop=zeros(1,num_unique_chars);

for i=1:num_unique_chars
    
    chars_count(i)=length(strfind(msg,unique_chars(i)));
    chars_prop(i)=chars_count(i)/msg_length;

end
end
