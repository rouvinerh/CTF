Challenge is rated 60 points under Cryptography Category.

Challenge gives us a cipher and tells us to use a 5x5 square with letters to decipher.
Cipher:
1-3,4-4,2-1,{,4-4,2-3,4-5,3-2,1-2,4-3,_,4-5,3-5,}

I removed the symbols, namely the { and _ to get just the cipher.

Theres's only one cryptography practice that uses a 5x5 cipher, and it is called the polybius cipher.

The cipher is basically coordinates, to tell us which letter comes first.
So 1-3 means Row 1 Column 3.

Using an online decoder, I entered the values of the polybius square, which were the alphabet in order minus K and got the flag.
I inserted back the _ and { to create the answer I submitted. 
https://www.dcode.fr/polybius-cipher

Flag: CTflearn{THUMBS_UP}

A bit easy for a 60 point challenge. Oh well.
