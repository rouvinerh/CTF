40 Points Cryptography Challenge

Challenge gives us a one-time pad description. 
There's a downloadable otp.py file.
The hint is 'Maybe there's a way to make this a 2x pad'

The code gives us the encrypted flag too.

Looking at the source code, we can see that there's a limit to the length of the key.
It's 50000 characters.

We know that to XOR stuff or encrypt stuff with a key, it has to be longer than the actual message.

We just key in a command to print 50000 As...
This will gives us the key
python -c 'print "A"x50000'

Alternatively, we can just XOR the same flag a ton of times until it gives us the key.

After we get the key, just XOR the key with the cipher and we can get our flag.


