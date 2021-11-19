Challenge is rated 140 points under Forensics Category.

Challenge gives us a hash:
e82a4b4a0386d5232d52337f36d2ab73

And a jpg file to analyze. It also hints that Brute Forcing is the way to go...

A binwalk of the JPG file reveals that there are whole lot of zip folders within it.
There are hundreds...which is great...

Within the files, there are a whole lot of empty ones. I filtered them out and found the clues as shown below:

Hmmm... almost!
The password is: "ctflag*****" where * is a number.
Encrypt the password using MD5 and compare it to the given hash!
As I said, you're gonna have to brute force the password!
Good luck! :)

So we know how to reverse a hash easily, and the creator gave us this ctflag password.
There's a zip file that is hidden within the files that has a password encrypted file.

Taking it to a hash decryptor:
http://www.md5hashing.net

We managed to brute force the password.

The password of the file was :
ctflag48625

And this allows us to access the flag.txt file.

This gave us a base64 cipher.
RkxBR3ttYXlfdGhlX2JydXRlX2ZvcmNlX2JlX3dpdGhfeW91fQ==

Flag: CTFlearn{may_the_brute_force_be_with_you}
