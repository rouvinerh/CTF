40 Points Web Exploit Challenge.

This challenge includes this link: http://mercury.picoctf.net:64944/

It's about cookies as the name suggests, so I opened up burpsuite to intercept responses.

Noticed that every other cookie name I put in would result in the cookie being set to -1
When I entered 'snickerdoodle', the cookie value was 0.

I used burp to send different values of each cookie, and when cookie = 18, the flag was there. 

picoCTF{3v3ry1_l0v3s_c00k135_cc9110ba}
