Challenge is rated 100 points under Cryptography Category.

Challenge gives us a zip file with some data in it, with a script called encrypt.py, flag.txt and studyguide.txt.

Studyguide is full of random strings, which I assume need to be used one by one to decrypt the cipher in flag.txt in somehow.

The challenge gives us the script used to scramble the letters and we have to somehow reverse engineer that to get our flag. 

The encryption program is used to encrypt text files, presumably their titles or something, and there is a study quiz guide, which I'm not too sure of what to do with it.

The random bunch of strings indicate that this is some sort of substitution cipher, and having the quiz inside doesn't indicate much to me. Googling online told me to determine the most frequent letters, as they are normally the ones that are the letter 'e'. I just checked the most common letter in the study guide, and went to many different websites until I found 
www.quipiup.com

This one solved the problem for me, with r=e being the supposed clue.

Flag: picoCTF{perhaps_the_dog_jumped_over_was_just_tired}
