clc,clear,close all
load ECG_Capetured_Data.txt
x=ECG_Capetured_Data';

x = x(1:10);

[unique_chars,num_unique_chars] = findChars(x);

[chars_prop,chars_count] = findMsgProps(x,length(x),unique_chars,num_unique_chars);

codebook=huffman_encoding(chars_prop);

msg_binary = msgInBinary(x,length(x),codebook,unique_chars);

decoded_msg = Recevier(msg_binary,codebook,unique_chars);