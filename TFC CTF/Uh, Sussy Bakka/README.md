Challenge was under Forensics Category.

Gave us a .pcapng file, which means Wireshark. However, going into wireshark to analyze kinda threw me off. Everything inside the file was about USB protocol.

I googled about USB protocol and how to analyze it, and there were other CTFs that had a similar challenge. It involved analyzing some of the packets that had 'Leftover Capture Data', which was basically a keylogger. 

So simple, we just have to get all the leftover capture data into a text file and decrypt it.

I used usb.py to decode all of it, and hex.txt was my extracted data.

I first set a few filters inside Wireshark and extracted the data as a text file, of which I just removed all of the other aspects that were not important. 

usb.py had a keymap that I took from another script and just used it. Basically, each byte of leftover data that was not null represented a character, and usb.py printed it out for me.

The admin hinted to me that we had to consider the SHIFT key, which basically means there are capital letters and characters that we have to press shift for.
For example, there were a lot of - keys in it, and Shift + '-' would get us '_'.

I noticed that in my program, the characters that had shift applied to them were sandwiched between two CAPS variables. 

Slowly but surely with a bit of trial and error, I got the flag.
