Challenge is rated 70 points under Cryptography Category.

Challenge gives us a cipher in the form of a polynomial, which is in field.txt

It then gives us a Wiki page on Finite Field Arithmetic, which basically teaches us how to convert a polynomial to binary. 

That's pretty easy, just take the value of x to be 10 and continue from there. I used polynomial.py to do that.

After converting the polynomial into binary, I thought it would translate back to string easily but I was wrong. 
I experimented changing it to hex first then string, which worked and got me the flag.

Flag: CTFlearn{p0lynom1als_4r3_k00l}
