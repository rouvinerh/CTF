Challenge is rated 70 points under Cryptography Category.

The challenge gives us a few RSA values and it's clear that the value of e is really small at 3. 

There is a flaw with this due to some mathematical exploits in the RSA algorithm.

I have explained this in the other RSA Challenge. This is called a small e attack.
Basically:

m = c ^1/3

This is the flaw here.

As such, there are many scripts online that help us to decrypt this. I used decoder.py to filter it through thanks to a video on the Internet. 

Basically there's a function to calculate the cube root of the large value as a normal math function is unable to due to memory constraints. 

Flag: picoCTF{e_sh0u1d_b3_lArg3r_7adb35b1}
