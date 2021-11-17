Challenge rated 70 points under Forensics Category.

Challenge gives us a .gif file to download from the link and hints that the header is wrong.

Googling about the header of a gif file gives us that it is this string of hex:
47 49 46 38 39 61

Using hexeditor on the file, we can see that the header has been edited and hence cannot be opened.

Using strings on the file also revealed that there was a hint embedded:
ImageMagick gamme = 0.45455

I wasn't sure if this was a decoy, but I used:
display unopenable.gif

After changing the header, the gif revealed the cipher in a way a gif would operate, it flashed parts of it.

Using my phone, I got the full cipher:
Cipher: ZmxhZ3tnMWZfb3JfajFmfQ==

Base64 decoding does the trick.
Flag: CTFlearn{g1f_or_j1f}

Challenge awards too many points for a quite simple concept in my opinion.
