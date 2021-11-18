Challenge is rated 90 points under Cryptography Category.

Gives us a RSA Cipher to do. 
n = 14783703403657671882600600446061886156235531325852194800287001788765221084107631153330658325830443132164971084137462046607458019775851952933254941568056899

e = 65537

c = 684151956678815994103733261966890872908254340972007896833477109225858676207046453897176861126186570268646592844185948487733725335274498844684380516667587

These are the numbers, and seeing e = 65537 makes me wonder if the challenge is meant to be harder.
I noticed that the title was about twin primes.

Twin primes are prime numbers that are next to each other, for example 3 and 5 are twin primes as they are considered next to each other. There are mathematical theorems out there like the Twin Prime Conjecture that aim to find out how often do these twin primes occur. I believe that Dr Terence Tao is on it now, thanks Numberphile.

Seeing that it was rated 90, I decided to take on this a more unconventional way.

So the conventional route is in rsa.py, of which I used rsa.py to get out a hex code that I deciphered to find the flag.
Hex code from rsa.py:
666c61677b695f6c3076335f7477314e5f7072316d33737

Go decode that, because it's missing a character to make it work in python, of which I was lazy to append.

The more unconventional method I used was called twinprime.py, which has a small algorithm to determine the values of p and q accordingly.
Both scripts were not hard to make.

Flag: CTFlearn{i_l0v3_tw1N_pr1m3s}
(yes the last character is that)
