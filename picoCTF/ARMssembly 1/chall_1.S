	.arch armv8-a
	.file	"chall_1.c"
	.text
	.align	2
	.global	func
	.type	func, %function
func:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	mov	w0, 81
	str	w0, [sp, 16]
	str	wzr, [sp, 20]
	mov	w0, 3
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 16]
	lsl	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	sdiv	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
	.size	func, .-func
	.section	.rodata
	.align	3
.LC0:
	.string	"You win!"
	.align	3
.LC1:
	.string	"You Lose :("
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
	str	w0, [x29, 44]
	ldr	w0, [x29, 44]
	bl	func
	cmp	w0, 0
	bne	.L4
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	b	.L6
.L4:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L6:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits

In function, we will start from there at a faster pace:

stack + 12 = input
w0 = 81
stack + 16 = 81
stack + 20 = 0
w0 = 3
stack + 24 = 3
w0 = stack + 20 = 0
w1 = stack + 16 = 81
w0 = Lsl 81,0 = 81
stack + 28 = 81
w1 = 81
w0 = 3
w0 = sdiv 81 , 3 = 27
stack + 28 = 27
w1 = 27
w0 = stack + 12 (input)
w0 = w1 - w0 = 27 - user input
stack + 28 = 27 - userinput
ret

In main,
There is a cmp w0, 0 function right after the function ends.

This means that we need w0 to be equals to 0, as we can see a bne instruction after and that it goes to different logic statements should it NOT be equals to 0.

So, our user input needs to be 27!

Convert 27 to 32-bit hex and pwned!

Flag: picoCTF{0000001b}


