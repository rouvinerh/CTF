Challenge is rated 50 points under Forensics Category.

Gives us an image with these comments:

 CTFlearn{Gimli.Is.A.Dwarf}
Who is Gimli? You can learn more about Gimli here:
https://lotr.fandom.com/wiki/Gimli
https://en.wikipedia.org/wiki/Gimli_(Middle-earth)
This challenge is based on hash algorithms and encryption.
I am using OPENSSL v1.1.1 to create this challenge.
Here is a reference for using hash calculations with OPENSSL:
https://www.openssl.org/docs/man1.1.1/man1/openssl-dgst.html
If you are a Python coder, Python provides a hashing library you might find useful:
https://docs.python.org/3/library/hashlib.html
If this challenge has you wondering what to do next, please try my other challenges that are worth fewer points. The more points, the more difficult the challenge.
If you are new to CTF and/or not quite sure how to solve this challenge, you should probably try these other challenges first in this order:
RubberDuck
Snowboard
PikesPeak
GandalfTheWise
After solving this ShahOfGimli challenge, then try:
HailCaesar
MountainMan
KeyMaker
VargasIsland
My Twitter DM’s are open @kcbowhunter.

The third comment block is encrypted with AES CBC encryption using the following key:
sha256 hash of the string “CTFlearn”
Note that the comment block is also base64 encoded
There is no iv but you need to determine how to express this mathematically
If you are new to encryption and hash algorithms here is a good place to start:
openssl enc -help
openssl dgst -help
sha256sum
Of course Google is your friend (if you don’t mind them recording all your online activity)
https://wiki.openssl.org/index.php/Enc is a good reference for openssl encryption algorithms
https://docs.python.org/3/library/hashlib.html “

Ok, so we have the key of the third comment block, which is just a hash of CTFlearn using SHA256. 
b18ef1351fc0df641abbe56dcd4928a8bb98452b1b43d8c1c13f1874c8b35056

There is no iv, meaning that it's set to 0 but we still need to express it mathematically. 
An IV for aes256 is 16 bit, and since the iv has to be in hex, it will be 32 0s.

Doing a binwalk on this file reveals a flag.enc inside a .tar file.
Armed with the key and IV, we can use openssl to decrypt it and get the flag.

Flag: CTFlearn{Gimli.Is.A.Warrior}


