Challenge is rated 30 points under Forensics Category. 

This is the challenge I learnt about reading hex code to get information about a jpeg file.

Using hexdump, it outputs the file in hex editor.

When reading a file in this mode, the start of it is the file signature.
For jpeg it is:
FF D8 FF E0

When we are trying to read the header of the file, it starts with 00 11.

At the 0000A0 row, there is 00 11 followed by 08.

The next 4 hex characters are the dimensions of the photo in Y then X.

We have to read this part in decimal to understand it. 
In this case we know the dimensions of the photo is 2016 x 900 (using file)

The challenge hints that the flag is outside of the picture, so I tried to expand it to 2016 x 2016.

This involved using hexeditor to change the dimensions of the file to so. The hex code is meant to be read in decimal to give the proper dimensions.

After saving, the flag is now shown in the picture.

Flag: CTFlearn{urban_exploration}


