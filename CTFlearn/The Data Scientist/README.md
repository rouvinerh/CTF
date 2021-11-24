Challenge is rated 70 points under Forensics Category.

Challenge gives us a .csv file, which is meant to be uploaded to a spreadsheet or Excel.

I did so, and I tried figuring out what the numbers mean and how they are correlated.

I tried regression, graphing, sum etc. But none returned any remarkable value.

Only when I read the challenge again, I thought of using the MEAN value. The hint was that a hint would be given if we find what the columns mean.

When I used the mean formula, I got a set of numbers and changed it from ASCII to string to reveal:
SET ALL VALUES BETWEEN 64 AND 65 TO BLACK AND SCAN IT

Alright, easy enough. I used conditional formatting and zoomed out, to reveal that there is a QR Code within the spreadsheet!

Scanning it after resizing the image gives us the flag.

Flag: CTFlearn{m4ch1n3_l34rn1n9_rul35}
