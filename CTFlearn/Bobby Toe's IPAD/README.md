Challenge is rated 70 points under Forenics Category.

Challenge gives us a picture to play around with.

Doing the usual forensics tricks didn't provide any hidden files within this.

When I used strings, there was a portion of the strings that had an IEND and a JFIF, separated by a 'congrats you found me!'
This would mean the headers of the file was edited and that there was actually a hidden file within this image. 

JFIF is the start of a header for a JPG file, and IEND is the footer of a png file. 

I used hexeditor to get rid of it, as well as fix the jpg file header.

It did give me a string though:

bbbabydonthurtmewhatislove

This brought me a much smaller picture, which I'll call edited.jpg. It depicts an Ipad and a string, both of which were unremarkable. 
I quickly did more forensics on this thing.

Doing strings didn't reveal much more, and there was nothing embedded in this thing. Then I tried some stenography tools to try and offset it or try to edit it in a way to get my flag.

Randomizing colour palette didn't give me anything. 
Stegsolver didn't really help out a lot as well. 

I was stuck here for an hour. Until I tried the same methods on the original picture and got a cipher!

I randomized the colour palette of the original image to reveal a hidden message:

zpv_tigqylhbafmeoesllpms

So now I have two strings, this and the other one from the hidden image from fixing the header. 

I tried XOR, a whole bunch of ciphers and didn't get them to work.

I resorted to reading the comments, of which it told me that the pad was a clue.

I guessed one time pad! And using an online tool with the babyloveme key works!

Flag: CTFlearn{you_thinkyougotskillshuh}
