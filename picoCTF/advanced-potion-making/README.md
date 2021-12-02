Challenge is rated 100 points under Forensics Category.

Challenge gives us a file to work with uploaded here.

When I did hexdump on it, the first part had a 'IHDR' portion, which basically means it is supposed to be a PNG file.

I noticed the header was corrupted, hence the file was not opening.

After fixing the header to be the proper header of a .png file, the image could open but it only revealed a full red image. 
The fact that the picture can be opened means that the file is no longer corrupted, so there's some sort of stenography going on here.

I randomized the colour palette and that reveaed the flag!

Flag: picoCTF{w1z4rdry}
