Challenge rated 30 points under Forensics Category.

Gives us a Minions1.jpeg file to download.

Strings command gives us this:
myadmin
Suspected it could be a password somewhere.

The challenge hinted that Steghide needs to be used.
Doing this command:
steghide extract Minions1.jpeg

It required us to enter a password, which I entered myadmin.

This gave us a cipher in the form of a text file.
AEMAVABGAGwAZQBhAHIAbgB7AHQAaABpAHMAXwBpAHMAXwBmAHUAbgB9

Looks to be base64. 

Decoding it gives us the flag

Flag: CTFlearn{this_is_fun}
