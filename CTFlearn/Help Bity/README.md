Challenge is rated 60 points under Misc Category.

This challenge gives us a misspelt cipher, it should be:
BUGMd`sozc0osx^0r^`vdr1ld|

But even then decoded the flag is spelt wrong, it needs an additional 'a'

Anyways, the challenge gives us this and I'm not quite sure what to do.

I know it isn't a form of encryption I know of, so I tried to change it to ASCII numbers and also changed it to hex to compare.

When I looked at the ASCII numbers, I noticed that some of the letters were just 1 number off, meaning that each letter inside the cipher was just one letter off from spelling CTF.

So I opened up an ASCII table and looked at the letters there.

I compared each letter and noticed that some ASCII numbers had to have 1 added and some 1 minused. 

This sort of worked, but I was only able to spell CTFLearn and that's all.

But that's okay, I know a part of the flag! Means I can try other methods. 
I tried XOR'ing the rest of the chracters.

Didn't work, then I tried the Brute Force XOR on CyberChef. Which worked! Using CTFLearn as the crib word.


Take note flag is missing an 'a', this is the correct flag.
Flag:CTFLearn{b1nary_1s_awes0me}
