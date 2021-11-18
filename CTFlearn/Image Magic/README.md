Challenge is rated 70 points under Programming Category.

Challenge hints that we need to use Python Imaging Library to help us to alter this picture to fit the dimensions also given to us.

This was a cool challenge, used imager.py to solve it accordingly.

So the challenge tells us to change the dimensions of the picture.

When using PIL to view the image, we can see it's a whole long line of pixels.

Basically the image has been edited such that all the pixels form one straight line.

So I took the number of pixels (27968) divided that by 304 so I would know what is the height of the original picture.

I used Python to take each pixel and rearrange it accordingly. Then I opened the new image and it showed the flag.

Flag: CTFlearn{cool_right?}

