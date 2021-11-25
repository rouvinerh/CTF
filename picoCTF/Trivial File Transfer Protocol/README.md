This challenge was 90 points and under forensics.
Download the file here .
https://mercury.picoctf.net/static/ed308d382ae6bcc37a5ebc701a1cc4f4/tftp.pcapng

The download gave us a .pcapng file, which instantly I knew that we had to use WireShark to get some form of data.

Upon opening the file, we can see that the whole file is full of TFTP packets.
I know these aren't secure as they are just a smaller version of FTP packets, which themselves are encrypted or secure.
The only secure method of FTP is SFTP. 

As such, since it was such a large file, there must've been a lot of files.
Using extract objects from wireshark, I managed to get the folders, of which are uploaded here.

They were two text files, three pictures and 1 .deb file

Instructions.txt content was
'GSGCQBRFAGRAPELCGBHEGENSSVPFBJRZHFGQVFTHVFRBHESYNTGENAFSRE.SVTHERBHGNJNLGBUVQRGURSYNTNAQVJVYYPURPXONPXSBEGURCYNA'
It isn't any form of base64, but looks a lot like ROT13!
Using ROT13, we get this:
'TFTPDOESNTENCRYPTOURTRAFFICSOWEMUSTDISGUISEOURFLAGTRANSFER.FIGUREOUTAWAYTOHIDETHEFLAGANDIWILLCHECKBACKFORTHEPLAN'

The other folder was plan.txt, of which it contained: 
'VHFRQGURCEBTENZNAQUVQVGJVGU-QHRQVYVTRAPR.PURPXBHGGURCUBGBF'
Translated using ROT13 gives:
'IUSEDTHEPROGRAMANDHIDITWITH-DUEDILIGENCE.CHECKOUTTHEPHOTOS'

The other file program.deb just gave me a lot of hints that the problem maker used steghide to encrypt his data.

Seeing the plan.txt file, DUEDILIGENCE is a method of which companies use to ensure that the client's they handle or whatever firmware they install is secure.
That '-' is suspicious.

When I used steghide to analyze the pictures, there was a passphrase needed.
First instinct was to use 'DUEDILIGENCE' as the password.

Alas, it worked.
I began extracting all files using:

steghide extract -sf picture.bmp

Picture3.bmp yielded flag.txt, which was the flag in text form. Nice challenge, learn to use steghide a bit and also to analyze wireshark packets.
I'm glad I knew what TFTP was beforehand thanks to Network+ and CCNA. 





