Challenge is rated 50 points under Forensics Category.

Challenge gives us a picture, and we have to analyze the raw data inside it, meaning hexdump definitely.

Upon inspection of all headers inside this .jpg file, there's a portion that's kinda weird:

DSHjh^vj!G6]
ram]mVP#<&
CS[\uZ$Yqg
|l          

First of all, it's too evenly spaced out to look like it's supposed to be a part of the image. This bit comes right after the APP3 header when inspecting hexdump. The hint given was that the flag started with CTFlearn{, but crib dragging doesn't do anything for us.

Then I thought about it and thought it was some sort of Caesar Cipher or shift cipher, but didn't really work the way I intended either.

Then I thought of it like, DSH = CTF, the letters are a set distance apart from each other when comparing ASCII values. It hit me, all the letters were scrambled by adding or subtracting their ASCII values in the following pattern:

+1, -1, +2, -2, +3, -3 etc.

Simple enough, made a quick script to decode this using the above pattern, and got the flag! Although two characters were wrong in my script, it doesn't matter LOL.

Flag: CTFlearn{L0ckheed_F-117_Nighthawk}
