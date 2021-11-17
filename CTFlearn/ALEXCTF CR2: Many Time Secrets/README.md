Challenge is rated 60 points under Cryptography Category.

This challenge was honestly luck for me...

Here's the cipher:
0529242a631234122d2b36697f13272c207f2021283a6b0c7908
2f28202a302029142c653f3c7f2a2636273e3f2d653e25217908
322921780c3a235b3c2c3f207f372e21733a3a2b37263b313012
2f6c363b2b312b1e64651b6537222e37377f2020242b6b2c2d5d
283f652c2b31661426292b653a292c372a2f20212a316b283c09
29232178373c270f682c216532263b2d3632353c2c3c2a293504
613c37373531285b3c2a72273a67212a277f373a243c20203d5d
243a202a633d205b3c2d3765342236653a2c7423202f3f652a18
2239373d6f740a1e3c651f207f2c212a247f3d2e65262430791c
263e203d63232f0f20653f207f332065262c3168313722367918
2f2f372133202f142665212637222220733e383f2426386b

So the challenge hints that a one time pad was used, more than once and hence making it insecure.

Created a small XOR script that would take each line of the cipher and decode against some key.
It's called Decoder.py and it isn't the most efficient but works I guess.

The first key we try with is ALEXCTF{ as it's given in the challenge.

After that I got a 'Dear Friend' looking text, so that was the next key.

After that my method was just take random parts of the decoded text and try to get a bit more of the flag.

I got till ALEXCTF{HERE_GOES_ and I was kinda lost.

I just randomly chose a bunch of text and entered and it gave me the next word LOL. 
ALEXCTF{HERE_GOES_THE_

I was stuck at this point, nothing I did worked.

I just tried every letter after the last word in the flag...
Not the most efficnet or knowledgeable but I guessed K and noticed that the cipher decoded a bit more.
ALEXCTF{HERE_GOES_THE_K
Then I just randomly guess the last word was KEY or something.

Surprisingly, worked, why idk but whatever.
Flag: CTFlearn{HERE_GOES_THE_KEY}

