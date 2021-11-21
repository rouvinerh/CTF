.arch armv8-a
	.file	"chall_2.c"
	.text
	.align	2
	.global	func1
	.type	func1, %function
func1:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L2
.L3:
	ldr	w0, [sp, 24]
	add	w0, w0, 3
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bcc	.L3
	ldr	w0, [sp, 24]
	add	sp, sp, 32
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
	str	w0, [x29, 28]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	add	x0, x0, 8
	ldr	x0, [x0]
	bl	atoi
	bl	func1
	str	w0, [x29, 44]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	ldr	w1, [x29, 44]
	bl	printf
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits


The total breakdown is here.

In the separate function, which is called func1, we will start from there to analyze.

It starts from the first line, of which w0 is stored with the memory + 12 offset. Googling has told me wzr is the 0 register, equivalent to $zero.
Let's keep track.
Stack + 12 = input
Stack + 24 = 0
Stack + 28 = 0

Then it jumps to .L2, skipping 3!

In L2, 

It starts by loading the value at stack + 12 back into 20 and loading 0 into w1
w1 =0 
w0 = input

It then compares w1 and w0, which we know is the same as a subtract formula. It doesn't store the value and jumps back to L3.
This is the condition for the loop, something like while (i <= j), as cmp does not store the answer but checks it anyways.

In L3, 

Stack + 24 is then loaded back into w0, which is 0.
w0 = 0
Then 3 is added to w0. 
w0 = 3

Then load back w0 into stack + 24.
Stack + 24 = 3
w0 =0

Load stack + 28 back into w0 
w0 = 0

Add 1 to w0 and then store that back into memory
w0 = 1
Stack + 28 = 1

Back to L2!

Load back Stack + 28 into w1, and load input into w0
w0 = input
w1 = 1
Checks again whether they are equal!

Simple, this is just a formula of which it keeps checking whether the input is the same as a variable, and if not it increments the variable by 1 and another value by 3.

Let's continue.

After it increments the value at stack + 24 by input number of times, it loads the value of stack + 24 back into w0.
w0 = stack + 24

Then after that it returns back to the main function.

Back in main,
It stores the value of w0 back memory, of which it stores at stack + 44.
Now we can guess that the value of stack + 44 is equals to input * 3. 

The rest of the program is just printing the value of stack + 44.

So the flag is stack + 44 value!

This value would be 7830494730, which is the initial number times 3. 

Converting it to 32 bit hex would give me the flag.

Flag: picoCTF{d2bbde0a}

