Challenge is rated 150 points under Crypto Category.

Challange gives us an ouput.txt which contains the output from an encryption.py script, which we need to break to figure it out slowly.

Encryption script imports a secret flag and secret key from the user, of which case the string 'ctxt' is encrypted first. Later on, the same ctxt is passed through the same encryption function to produce the output.

I wrote decode.py with comments to break this down slowly.

First thing is to figure out how to decrypt the cipher from where it is. From there we can get the encrypted version of the first ctxt. I ran a quick script to first XOR all of the random_strs with the cipher to see what I'll get.

But before that, we should remove all the excess strings and loops that won't make a difference to the result if we use it. Removing all the b'Ever' won't make a difference to the result becuase after all, it's the same bytes. Next, we should use some form of cribdragging to draw out the thing. Crib dragging would involve XOR with the result (of the same length as my crib word) to draw out bits and pieces of the key. 

We know that the flag should start with picoCTF{, so let's use that as our crib first. Then after that we need to ensure that the key is printable, because if it's a bunch of nonsense characters then it doesn't matter to us. Leaving this to run for a while returned a key that is in very nice letters and symbols.

With this key, we can continue on to decode the rest of it. Now that we know the Key, we can XOR the original string with our key, 'Africa!'

Now, we just have to XOR the cipher with the key and we get our answer. 

Flag:picoCTF{w41t_s0_1_d1dnt_1nv3nt_x0r???}





