Challenge is rated 160 points under Web Category.

Gives us a website to exploit. 
http://web.ctflearn.com/audioedit/

The website is one where we can upload .mp3 files to it for analyzing.
If we upload the wrong kind of file, it will tell us it is an invalid file format or no file is uploaded, so there's some sort of user input validation there.

Let's try uploading a MP3 file to see what happens. Ok uploading anything above 1MB tells us that the file is too big and needs to be smaller.

Searching on the web for some sample file to upload was easy, I don't have any ready mp3 files.

Uploading a file (it'll be uploaded here) brought me to this edit audio page. I can play around with this audio and see what happens.

I played around with it (regret downloading such an annoying mp3 file).

So I know the website tries to analyse and uses the .mp3 file.

From testing with Burp, I can see that it only accepts .mp3 files and it reads the file inside pretty well.

I thought about it for a while, how do I fake an mp3 file? I wanted to see what would happen. Then I remembered that I can try changing headers of a file to see if it still accepts it. Maybe this website only checks the headers of a file

Hexeditor on some text file seems to work well, and when I tried to upload it something interesting happened. Didn't really work though, so that kinda sucks.

I was stuck for a really long time again, I didn't know how to find the vulnerability in this website. 

I tried changing around the title of the file, through examining the properties of the file. To my surprise, the program read it as a new file. The website normally prints that the File already Exists should I try to upload the same file, but after changing the Title through properties, it was printed properly and accepted it.

I used Groove Music to continue editing the author and title of file, as well as mute the damn website because I downloaded the most annoying mp3 file ever.

With this, I tried the usual injections and stuff, because that's all I can think of. The website accepts whatever title and author we input. As of now I have yet to solve this, I don't know how to change the title and the author such that it would extact data.

