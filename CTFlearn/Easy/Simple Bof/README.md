Challenge is rated 10 points under Binary Category.

Gives us a server to connect to and a bof.c
nc thekidofarcrania.com 35235

Upon inspection of the C program, we can determine that there are few bugs:
1. It is begging us to use a buffer overflow strategy when it uses gets.
2. We know that the buf has 32 bytes assigned to it. The padding has 16 bytes assigned to it. So there is 48 bytes assigned to this variable.
3. The secret needs to be equals to '0x67616c66'.

For those not aware, this is a classic example of a buffer overflow.
Using the program's bugs, we can overflow the buffer and let it return a pointer to a different place based on where the memory is stored.
This has to do with stack and pointers, a concept I (painfully) learnt.

By overflowing it, we can make the program point us to different parts of the memory to give us data that would otherwise be unaccessible from a user with least privileges. 

C is just full of pointers that reference different slots in memory with different data in there.

Looking at this, we know that we need to overflow using the next 4 bytes after the initial 48 bytes taken up by any characters, by printing some nonsense characters. In this case we're trying to get the program to let the variable secret equals to the value to get the flag.

To do so, we use a python line.
python -c 'print "A"*48 + "\x66\x6c\x61\x67"'

This line will print a string of characters, whereby the letter "a" can be literally anything, the important ones is the that last bit.
After some trial and error, 40 seems to be enough to overflow it.

The last bit will print out characters that are not necessarily readable, and they are our overflow mechanism.

The order of that last bit will depend on whether the machine is little or big endian. For this example I just tried both. 
The difference between little and big endian is just how they read memory that is stored. Little Endian machines read data from left to right and Big Endian machines read it from right to left. 

In this case it printed A 48 times followed by flag.
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAflag

Entering this into the program will give us the flag.

Flag: CTFlearn{buffer_0verflows_4re_c00l!}


