Challenge is rated 100 points under Cryptography Category.

Challenge gives us a cipher:
\t\x1b\x11\x00\x16\x0b\x1d\x19\x17\x0b\x05\x1d(\x05\x005\x1b\x1f\t,\r\x00\x18\x1c\x0e

Instantly, this cipher looks like a bunch of non-printable characters. There are no hex characters in it that represent any letters or whatever.

Seeing the title and giving us a part of the flag, I guessed that we would have to XOR it.

Used decoder.py to solve this one.

Basically taking the message and converting it to intergers then XOR'ing it with the key to determine the next part of the flag.

XOR'ing this one with ctflearn{ gave me: jowlsjowl.

I sort of guessed and just did jowlsjowlsjowlsjowls.
This printed a lot more of the flag.

Eventually, the key was found to be jowlsjowlsjowlsjowlsjowls

Flag: CTFlearn{xor_is_the_goop}
