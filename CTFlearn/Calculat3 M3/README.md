Challenge is rated 80 points under Web Category.

This gives us a link to play around with.
http://web.ctflearn.com/web7/ 

It's a simple calculator application online, and it prints the values on the top left hand corner.
When I keyed in a bunch of random numbers, I noticed that there was no input at the top left.
Only valid calculations were processed, else there would be no result.

This looks like some sort of injection set up, like a null result and a something result when you inject something.

Googling about exploiting online applications brought me to a page about command injection.
https://portswigger.net/web-security/os-command-injection

I booted Burp and intercepted the request.
At the bottom line there's an expression variable which is equals to what we send to the website.

Time to play around with this.

I saw that command injection had to begin with certain characters depending on the operating system.
Burp had shown me that the system was powered by this: 
PHP/5.5.9-1ubuntu4.22

So I know that I'm working with linux.

Command injection began like this, enter a special character followed by the command you want. Like ; or $.

I tried doing stuff like ;cd and ;clear and it printed all of them correctly on Burp, meaning that the website 'accepted' these requests and they weren't rejected. 

I tried looking up some payloads to inject into it but all of them didn't work.

I just randomly injected ;ls and the flag was there, spent like an hour looking at payloads and understanding each of them and trying to modify them to get me what I want.

Rule is: Don't overthink.

Payload: ;ls

Flag: CTFlearn{watch_0ut_f0r_th3_m0ng00s3}
