function msg_binary = msgInBinary(msg,msg_length,codebook,unique_chars)

msg_binary = '';

for i = 1 : msg_length
    msg_binary = msg_binary + string(codebook(strfind(unique_chars,msg(i))));
end
msg_binary = char(msg_binary);

end