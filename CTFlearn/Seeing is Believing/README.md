Challenge is rated 70 points under Forensics Category.

The challenge gives us a zip file to download.
Unzipping it gives us help.me.

A google search reveals that a .me file is text file actually, so I googled it quickly and tried to open it.
Inside the .me file was just : Oggs

I thought Oggs meant something, so I kept it in mind and googling it brought me to some security system, which I doubt was used.

I checked the strings of the file and found this:
Xiph.org libVorbix I 20120203 (omnipresent)

I didn't know what this meant, so a bit of research reveals that Vorbix is some kind of audio analyzer.

I downloaded vorbistools and played around with Ogg to get me more details about the file.

Turns out the file was an audio file, so I opened in audacity straightaway.

Found out that the file was a QR code when looking at the spectrometer.

A quick change to the vertical scale and I managed to get the flag through scanning the QR code.

Flag: CTFlearn{A_sP3c7r0grAm?!}
