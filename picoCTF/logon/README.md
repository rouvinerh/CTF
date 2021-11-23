Challenge is rated 100 points under Web Exploitation Category.

Challenge gives us to login as Joe, and the hint is that it does not check for anyone's password except for Joe.
https://jupiter.challenges.picoctf.org/problem/13594/

Upon trying to login as any username, we have no flag for us.

So it's clear we have to login as Joe, and Joe is the only person in the database with a password that is being checked. 
So there is a form of input validation if we have the username as Joe. But there is no input validation at all if we are not Joe!

Using Burp to intercept a few responses and analyzing it, it seems the Cookies of the website aren't even encrypted.
There is an admin portion of it, and it set to False. Setting it to True gives us the flag. 

Playing around on Burp for a while to find the exact request we send the website to login, we can find and change the cookie params.

Flag: picoCTF{th3_c0nsp1r4cy_l1v3s_d1c24fef}
