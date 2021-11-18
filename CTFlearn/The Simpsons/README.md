Challenge is rated 80 points under Cryptography Category.

Challenge gives us an image, called ItsKrumpingTime.jpg.

I used strings on the image and got the following message:
Ahh! Realistically the Simpsons would use octal instead of decimal!
encoded = 152 162 152 145 162 167 150 172 153 162 145 170 141 162
key = chr(SolutionToDis(110 157 167 040 155 165 143 150 040 144 151 144 040 115 141 147 147 151 145 040 157 162 151 147 151 156 141 154 154 171 040 143 157 163 164 077 040 050 104 151 166 151 144 145 144 040 142 171 040 070 054 040 164 157 040 164 150 145 040 156 145 141 162 145 163 164 040 151 156 164 145 147 145 162 054 040 141 156 144 040 164 150 145 156 040 160 154 165 163 040 146 157 165 162 051))
key = key + key + chr(ord(key)-4)
print(DecodeDat(key=key,text=encoded))

This is quite funny, but decrypting the key from octal to string gives me:
How much did Maggie originally cost? (Divided by 8, to the nearest integer, and then plus four)

A quick google search reveals that Maggie Simpson costs $847.63.

Doing the math, the key would be chr(110), which is the letter 'n'

The next line tells us to alter the key, of which we end up with 'nnj' as the key. 

The encoded text was (from octal to string):
jrjerwhzkrexar

I was stuck here because I didn't know what to do with nnj and this cipher. 
I googled ciphers and key in small letters.

I tried Caesar Cipher, ROT13, and lastly Vigenere Cipher.

Vigener Cipher was the one, and it's the one that accepts a key in letters. It adds the alphabet numbers to the message from the key one by one until it is all encrypted.

Flag: CTFlearn{wearenumberone}
