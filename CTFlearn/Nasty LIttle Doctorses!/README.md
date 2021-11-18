Challenge is rated 100 points under Cryptography Category.

This challenge gives us a cipher:
bafa3de6dac066cebe8c0e5670d98935

Then tells us some story about 5 Doctors. There's a part of the challenge that tells us there were 5 M.Ds. This looks like a hint to use MD5, which is a crytographic hash algorithm that is used to verify the integrity of files or for stuff like SSH or whatever.

So a bit about hashing:

Encryption is a method whichby we can get back our message using the key given, this means that it is like a 2-way operation, of which we can always get back the message we sent should we know the key.

Hashing is a one way encryption technique, whereby it is impossible to reverse engineer the hash value to get the text back. https://md5hashing.net/hash/md5/bafa3de6dac066cebe8c0e5670d98935

They can only be decrypted if we know the input data. OR we do a collision attack.

A collision attack is an atack that tries to find two inputs that generate the same hash value. From the hash, we can only know if our input is wrong or right, because the hash value won't match. Hashes are one way encryptions, meaning that the same type of algorithm is used. So we try to guess the input until we get the exact same hash. It's a bit like brute forcing but it definitely not the same as a one time pad, that uses XOR. 

I googled online to try and find a website or tool that can reverse a MD5 hash, because the only way to decrypt this thing is to use a word and password database and compare it against other pre-calculated hashes. That's the easiest way.

Anyways,
https://md5hashing.net/hash/md5/bafa3de6dac066cebe8c0e5670d98935
This did the trick.

Flag:CTF{MD5_is_Nasty}

Cool little challenge to teach me about hashes and encryption, and what is needed to break a hash. 
