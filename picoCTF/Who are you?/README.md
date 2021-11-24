Challenge is rated 100 points under Web Exploit Category.

Challenge gives us a link and tells us that it only trusts users that use a certain browser.

I knew this whole challenge would be about changing headers.

For browser, you change your User-Agent
For origin, you change your referer to the link of the challenge.
For date, just add a Date category in the following format:
Day, day month 2018

To change country, change the X-forwarded-for to some Swedish IP.

Lastly, change the accepted langauges, add a 'sv' to signify the Swedish language, and you get the flag.

Flag: picoCTF{http_h34d3rs_v3ry_c0Ol_much_w0w_79e451a7}
