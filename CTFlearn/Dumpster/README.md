Challenge is rated 60 points under Forensics Category.

The challenge gives us a heap dump and a .java program to look through.
https://mega.nz/#!rHYGlAQT!48DlH2pSZg10Ei3f-Ivm7RoNBbV16Qw0wN4cWxANUwY

Having no idea what a heap dump is, I googled and learnt that it is a memory capture of the moment in code, so basically it should be able to find out all the inputs that were given to a program if we captured the memory processing each byte of data.

The java program shows some that we are missing some kind of password that will help decrypt the flag when it is run for us. So we have to go into the heapdump and find some sort of input that will help us decipher the flag.

Knowing this, I downloaded Memory Analyzer on Eclipse and looked through each thread of data to find the function passHash to determine the password. I referred to a writeup to find out where to look as I was hopelessly lost when I was looking for this data, because I did not know how to filter it and where specifically to look for it. Turns out that data is stored within the threads component of the heap dump and that we can find the main function and the passHash variable that was used throughout the java program. Hence, I was able to continue my effort after finding this variable. Thanks to the writeup, I was stuck on this for a long time. 

When I run the java program (after googling how to declare variables and arrays, public void scares me) I ran the program and it gave me the flag. 

Flag: CTFlearn{h34p_6dump5_r_c00l!11!!}
