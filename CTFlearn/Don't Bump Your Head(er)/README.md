Challenge is rated 40 points under Web Category.

Challenge provides us with a website to play with:
http://165.227.106.113/header.php

This challenge hints that we have to change headers to use it. 
I used Burp to play around and intercept the requests.

Intercepting the request gave me a User-Agent field, of which I noticed that the website correctly identified the user-agent field, as it copied whatever Burp had outputted.

I noticed that there was a Sup3rS3cr3tAg3nt field at the bottom.

I tried changing the User-Agent on Burp to that and sent another request.

This yielded better results, now the rebsite says that I did not come from awesomesauce.com.

I changed the Referer Header (I googled online and it means basically it tells a page who is requesting the resource from the target website) to awesomesauce.com

Flag was printed on screen!
Flag: CTFlearn{did_this_m3ss_with_y0ur_h34d}
