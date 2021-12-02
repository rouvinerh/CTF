	.arch armv8-a
	.file	"chall_3.c"
	.text
	.align	2
	.global	func1
	.type	func1, %function
func1:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	w0, [x29, 28]
	str	wzr, [x29, 44]
	b	.L2
.L4:
	ldr	w0, [x29, 28]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L3
	ldr	w0, [x29, 44]
	bl	func2
	str	w0, [x29, 44]
.L3:
	ldr	w0, [x29, 28]
	lsr	w0, w0, 1
	str	w0, [x29, 28]
.L2:
	ldr	w0, [x29, 28]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [x29, 44]
	ldp	x29, x30, [sp], 48
	ret
	.size	func1, .-func1
	.align	2
	.global	func2
	.type	func2, %function
func2:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	w0, w0, 3
	add	sp, sp, 16
	ret
	.size	func2, .-func2
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

User input = 469937816 from the challenge

Starting from func1:
stp x29, x30, [sp, -48]! means means that the pointers are being stored into the memory
add x29, sp, 0 is a pseudoinstruction for mov x29 (I THINK)
stack + 28 = user input
stack + 44 = wzr = 0
.b L2

L2:
w0 = stack + 28
cmp w0, 0  (checks if equals 0, if not go to L4, if yes continue in .L2)
bne .L4
if equals to 0, then
ret

L4:
w0 = stack + 28
and w0, w0, 1 = comparing the bits inside w0 with 1, new value of it will be w0. 
cmp w0,0
if equals to 0, go to .L3, if not stay in .L4
w0 = stack + 44
go to func2

L3:
w0 = stack + 28
w0 /=2
stack + 28 = w0
go to L2

func2:
stack  +12 = w0
stack + 12 = w0
w0 = stack + 12
w0 = w0 + 3

Basically, the whole thing has a few conditions:
1. In L2, it checks whether the user input is 0, if yes it retires, if no then it continues in the program
2. In L4, it checks whether the value of the AND bitwise operator with w0 and 1 is equals to 0, if yes, then it will go to L3, if no then it will to go to L4
3. If it goes to L3, user input is divided into 2 and put back into L2 again. If if stays in L4, it will go to func2.
4. At func2, 3 is added to it. Stack + 12 at this point will be equals to 3.
5. This repeats all the way until user input reaches 0.

Basically, everytime the user input & 1 does not equals to 0, add 3 to a counter and divide the input by 2 and repeat all the way.


So the answer is a simple script from python, called ARM.py that I used. 

Flag: picoCTF{00000024}
