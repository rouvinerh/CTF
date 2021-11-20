Challenge rated 40 points under RE category.

Assembly isn't my strongest suite, so I pushed myself to do this one.

Gives us a chall.S which is written in ARM assembly, a bit different from the x86 or MIPS I currently am learning. The challenge gives us some input and asks us to input these values into the program to get an asnwer.

Here's the source code:

func1:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bls	.L2
	ldr	w0, [sp, 12]
	b	.L3
.L2:
	ldr	w0, [sp, 8]
.L3:
	add	sp, sp, 16
	ret
	.size	func1, .-func1
	.section	.rodata
	.align	3
.LC0:
	.string	"Result: %ld\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	w0, [x29, 44]
	str	x1, [x29, 32]
	ldr	x0, [x29, 32]
	add	x0, x0, 8
	ldr	x0, [x0]
	bl	atoi
	mov	w19, w0
	ldr	x0, [x29, 32]
	add	x0, x0, 16
	ldr	x0, [x0]
	bl	atoi
	mov	w1, w0
	mov	w0, w19
	bl	func1
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret

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

