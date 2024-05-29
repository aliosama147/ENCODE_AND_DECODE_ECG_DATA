function decoded_msg = Recevier(msg_binary,codebook,unique_chars)

msg_binary_length = length(msg_binary);

decoded_msg = [];

code = '';

for i = 1 : msg_binary_length
    
    code = strcat(code,msg_binary(i));
    flag1 = false;
    for k = 1 : length(codebook)
        if ismember(code,codebook(k))
            decoded_msg = [decoded_msg unique_chars(k)];
            flag1 = true ;
            break;
        end
    end
    if flag1 == true
        code = '';
    end
end
end