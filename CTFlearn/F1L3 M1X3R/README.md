Challenge is rated 80 points under Misc Category.

Challenge gives us a fl4g.jpeg file to work with, and hints towards looking at file signatures.
https://mega.nz/#!Ds0mWaCJ!4uKfJeJwhupG7Tvx8ReTBP1reFgdzR

Upon inspection, it seems that every single byte of data was reversed. Every 4 bytes was reversed and hence the file couldn't be open.

I couldn't solve it using Python, so I looked and understood a script from another person and used it as my own.

Fixing the jpeg using hexedit.py reveals the flag when opened. 

Flag: CTFlearn{byt3_sw4p}
