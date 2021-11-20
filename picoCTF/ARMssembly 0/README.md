Challenge rated 40 points under RE category.

Assembly isn't my strongest suite, so I pushed myself to do this one.

Gives us a chall.S which is written in ARM assembly, a bit different from the x86 or MIPS I currently am learning. The challenge gives us some input and asks us to input these values into the program to get an asnwer.

Ok, I'll try my best to work this out.

So from my understanding, str is about storing stuff into memory from the registers, and there seems to be a w0 and w1 register that does not look like the rest. sp is stack pointers, so they're just putting data into different spots in memory. 

Seems like the registers with w are the variables. It calls func1 and printf, so I definitely know this is something to do with user input. atoi converts strings to integers, which is definitely the method of getting input as all suer input begins as strings unless otherwise defined.

Function 1 seems to define the function to cmp the two variables. So this is a comparison function. This is the same as a subtract value in MIPS. But a bit weird, because it does not load back the variable after the computation. 

Okay, so the function is basically useless!

We need to se what is done to the variables in main.

I can see that w0 is used to store something at the start, then that value is transffered from w19 to w0 again...I'm not sure what's going on here. 

I can see that w0 and w1 are the variables and that w0 has values stored in it from the stack, offset 44 at the start.

I just started putting stuff into 32 bit hex, like the numbers given to try. I have no idea why that was the answer. I just took the larger number and converted it to hex then submitted and solved it. From reading writeups, I can see that I correctly identified the use of the registers to store the user input, but did not understand the .L2 portion. So the function would cause logic to flow to .L2, of which the value on stack offset 8 would be loaded into w0 and cause w0 to be printed when moving to L3. 

This would print the value of w0 into hex, and hence is our flag. So the answer would be the first number of the challenge given to us. 

Flag: picoCTF{f51e846f}

