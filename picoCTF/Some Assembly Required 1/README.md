Challenge is rated 70 points under Web Exploitation Category.

Challenge gives us a link.
http://mercury.picoctf.net:40226/index.html

So the way I did it was first realize that there is no network packets being loaded when I load this website.
This means using Burp to analyze is worthless. 

I went into the Dev Tools and the sources of the website to try to get the script of which it runs on, to see how it checks input.
Looking into it a bit helped me find the exact flag.

Flag: picoCTF{cb688c00b5a2ede7eaedcae883735759}
