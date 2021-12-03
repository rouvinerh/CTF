Challenge is rated 110 points under Cryptography Category.

Challenge gives us a nc command and a .py script that we have to decipher.

Using the nc command gives us an alphabet strign and an encrypted message. Looking through the .py file gives us the script for this particular challenge that we can analyze. Looking at it, it hints that this is a playfair cipher.

A playfair cipher is one that uses a square matrix to encrypt a text. The difference with this and other ciphers are that they support symbols and are generally more complex than other ciphers that have forms of grids as the key.

How this one works is that it takes one letter and swaps it with another letter according to the position it is in for the row. So if the letter is in the first column of a row, then it will be swapped with the letter in the last column of the row and this continues.

Clearly, it's much harder to break and we would require some scripting to solve this one. 

Looking at the python script reveals that the flag is imported as a package in python from the web server, and then the alphabet is generated. 
The alphabet for me is : irlgektq8ayfp5zu037nov1m9xbc64shwjd2

The cipher for me is: h5a1sqeusdi38obzy0j5h3ift7s2r2

When trying to crack this, first thing to do is to analyze the script that was given to me. The square is based on the length of the key that is imported through python on the web server. We know that the length of the key is 36, hence we are dealing with a 6x6 square. 

I used an online dcoder to solve it. Way easier haha.

Once I got my decrypted string, which was xqyvhtg02jkplzo8eyhu25ktip2dkh

I got a string, 25a0ea7ff711f17bddefe26a6354b2f3, which was the flag in 'non-standard' form.

I just copied and pasted it into the answer and somehow that was it...

Flag: 25a0ea7ff711f17bddefe26a6354b2f3
