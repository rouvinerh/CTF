Challenge is rated 50 points under Forensics Category.

Challenge gives us an image, and doing a binwalk of it reveals a few files.
Amongst them is a readme file, and when opened:

Welcome to the Space Station Forensics Challenge by kcbowhunter

Hidden inside this SpaceStation jpeg there is a file flag.enc which is encrypted with
the AES-256-CBC encryption algorithm using openssl.

You need to decrypt flag.enc to find the flag.

You can decrypt this file using the command:

openssl enc -d -aes-256-cbc -in flag.enc -out flag -iv hexbytes -K hexbytes
where hex bytes are bytes expressed in hex notation, for example baadf00d

You can learn more about AES encryption and OPENSSL here:
https://wiki.openssl.org/index.php/Enc

The iv and key used to encrypt the flag.enc file using openssl are the opcodes in the
Bangalore executable provided.

The key is the first 32 bytes of the .text section _flagLoop label, skipping 00 bytes.
The iv is the first 16 bytes of the .data section _Welcome label, skipping 00 bytes.

Good luck, and remember that objdump is your friend :-)

Ok, so we need to find the key and the iv again to decrypt this file. 

From doing objdump -s to view all sections, we can easily find the key, which is following the hint given to us. 
4889cfe83de849e858e86688875c2540c6875d25400ac6875e254048b85c2540

Now we need to tackle the .data section of the file. 
48656c6c6f204354466c6561726e2042

Doing this and inputting it into the command above gives us the flag.

Flag: CTFlearn{SpaceX_Is_The_Next_Generation}



