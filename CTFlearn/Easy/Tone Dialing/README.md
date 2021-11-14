Challenge is rated 30 points under Crytography.

Challenge gives us a .wav file to work with.

A .wav file is like a sound file. We can use an audio analyzer to view the file and its audio.
Most of the time it'll reveal something cool.

Using audacity in linux to view this file, it shows us the wave form of the file automatically. Let's use the spectogram.

This shows us something much cooler. We can sort of see how the file is created with some kind of message. 

Unfortunately, it doesn't mean anything...So that was a waste of time.

After some googling, I learnt that Python can open up this file to see what's inside and analyze the data. 

After some more googling, I realized that all phones have a standard sound based on key pressed.

I searched online for dialing tone decoder and stumbled across DMTF tones, which pointed me in the right direction for the answer.
I used this website to decode it for me.
http://dialabc.com/sound/detect/index.html
The result is this string of numbers: 
67 84 70 108 101 97 110 123 67 82 89 80 84 79 71 82 65 80 72 89 125

Using some python, it's easy to decrypt this.
It's missing an 'r'.

Flag: CTFlearn{CRYPTOGRAPHY}
