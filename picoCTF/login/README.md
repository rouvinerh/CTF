Challenge is rated 100 points under Web Exploit Category.

Challenge gives us a website to play with.
https://login.mars.picoctf.net/

Shows a simple login page, and doing any SQL injection yields nothing. Yet, when I load up Burpsuite, it does not show me anything because nothing is intercepted. This straightaway indicates that the code to check credentials are within the browser itself, and is accessible by me.

Reloaded the page to see what scripts get loaded and saw a .js form.

Inside it was clear that it was doing some stuff with the user input and we needed to break that script, and there was a cipher here:
cGljb0NURns1M3J2M3JfNTNydjNyXzUzcnYzcl81M3J2M3JfNTNydjNyfQ

Originally, I thought that this was an encrypted XOR of the password and username and I was prepared to break it.

I decoded it using base64 to check and actually got the flag...a bit anti-climatic.

Flag: picoCTF{53rv3r_53rv3r_53rv3r_53rv3r_53rv3r}
