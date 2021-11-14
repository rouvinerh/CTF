Rated 30 points under Binary Category.

Challenge gives us a command to run:
nc thekidofarcrania.com 4902

And a zip file containing a program written in C.

The program has a function vuln and win, of which we need to make win happen so we can get a shell.

The space assigned to padding and buff character variables are 16 and 32 respectively, which means there is a total of 48 bytes being allcoated to user input. 
Trying to overflow it would cause a seg fault (duh).

Looking at the visualisation of the stack (very nice btw), we can see that the return address is sort of read backwards. This tells me that this is a Little Endian machine as the least significant byte is stored first. 

We need to input 61 bytes before overflowing to the return address and being able to edit it accordingly to fit our needs. This was deducted when looking at the visualisation the program gives us. 

The challenge gave us a hint to redirect the IP somehow. So we solved the first part which was to overflow it using 60 characters.

The next part involvse using an assembler, in this case GDB, to try and locate the last 4 bytes of data. The last 4 bytes is the one that helps us change the return pointer to make it point to the win() function. 

Load GDB and load the server file then run it. 

After a LOT of googling about GDB, I have a good understanding of it's use and it is very useful indeed.

Finding the address of the win() function using GDB was not easy for me. I ended up using the objdump command instead because I remembered it could do that...But I did learn more about GDB and it's uses and it is a good tool. Need to do more studying (at the time of writing) on it to understand it's full purpose and what else I can do using it.

Memory address of the win function is at 0x08048586. Remember to reverse it!

Payload should be 60 * any letter + '\x86\x85\x04\x08'.

Flag: CTFlearn{c0ntr0ling_r1p_1s_n0t_t00_h4rd_abjkdlfa}

