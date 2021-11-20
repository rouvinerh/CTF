Challenge is rated 40 points under Forensics Category.

Hint given is that the file is not openable...which is weird.

This gives us a file with no extension and we need to decipher it.

Going about the usual methods allowed me to extract a .sit file using binwalk, unsure if this will be useful.

Anyways when using hexeditor, I realized that this is a .bmp file and I changed the extension but was still unable to open it.

I tried doing more research on bmp files and their properties, and also accidentally used ImageMagick to view the file, which reveals that it can be opened.

However, I was unable to find anything of use and referred to a writeup..Which turns out the hexeditor method was there but I had to change the height value of the picture as the orignal value was really small for a picture that takes up 2mb. This is the resource I read.
http://www.ece.ualberta.ca/~elliott/ee552/studentAppNotes/2003_w/misc/bmp_file_format/bmp_file_format.htm

Flag: picoCTF{qu1t3_a_v13w_2020}
