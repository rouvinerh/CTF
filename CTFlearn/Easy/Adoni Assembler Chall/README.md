Challenge is rate 10 points under Programming category.

This is an assembler challenge to read assembly code and reverse engineer it.

So, I don't know much about assembly code (at the time of writing), and this challenge provides us with some good resources. 
This is a link to explain how a "Hello World!" text is printed when using assembly.
https://www.youtube.com/watch?v=BWRR3Hecjao

I have a rough understanding of how code is interpreted into language and the use of registers within the processors to compile and assemble code, but I'm still not familiar.

As such, this challenge is a good place for me to start on how to understand assembly.

This is the code:

; This is a comment
; CTFlearn Assembly Programming Challenge "Adoni" by kcbowhunter

section .data
    welcome db "Hello CTFlearn Adoni Assembler Challenge!",0x0a
    noflag db "Sorry no flag for you :-(",0x0a
    adoni db 67, 84, 70, 108, 101, 97, 114, 110, 123, 75, 117, 114, 110, 48, 48, 108, 95, 68, 105, 115, 116, 114, 105, 99, 116, 125, 0x0a
    congrats db 67, 111, 110, 103, 114, 97, 116, 115, 44, 32, 121, 111, 117, 32, 102, 111, 117, 110, 100, 32, 116, 104, 101, 32, 102, 108, 97, 103, 33, 0x0a

section .text
    global _start

_start:
    mov rax, 1      ; sys_write system call
    mov rdi, 1      ; stdout (write to screen)
    mov rsi, welcome   ; memory location of string to write
    mov rdx, 42     ; number of characters in string to write
    syscall

    mov rax, 1      ; sys_write system call
    mov rdi, 1      ; stdout
    mov rsi, noflag ; memory location of string to write
    mov rdx, 26   ; number of characters in string to write
    syscall

    mov rax, 60     ; exit system call
    mov rdi, 0
    syscall

I know from studying MIPS (thanks to a senior!) that the first word in a line is the action.
The second word inside the line is the destination and the next one for x86_64 is the source.
This is what I understand so far. 
The next thing 

I edited it a bit to print the flag, but basically rax, rdi, rsi and rdx are registers that follow a certain order.
A syscall is a system call that requests stuff from the OS when operating.
DB means defined byte, and it accounts for how much memory is used to store the data that is above.
mov is a function that moves the value from the register to 1.
sys_write is the function that is used to print the characters.

The comments serve us well in determing the type of function the program uses and executes. 
When it comes to putting the variables into the registers, there is a line below to ensure that the register is given the number of characters. I think of it as allocating space for the string that was put into the register. So one register above the integer will temporarily hold the string and the other will hold the defined bytes of the string.
This will 

We can see that the flag is in hex, but we're not gonna cheat to get it. So we can see that when we run the program using:
nasm -f elf64 adoni.asm -o adoni.o
ld adoni-o -o adoni
./adoni

These are commands that just turn .asm file into an executable.
When we run them, we can see that the program prints out the default noflag string, which is "Sorry no flag for you"

So now I understand how to use this program, let's reverse engineer it.

I started by trying to create more sys_out functions inside the _start_ so I can print out the other strings, adoni and congrats.

Now I know what command does what, it was a matter of a copy and paste because the creator wrote the commands below to print out the strings that contained the flag:
_start:
    mov rax, 1      ; sys_write system call
    mov rdi, 1      ; stdout (write to screen)
    mov rsi, welcome   ; memory location of string to write
    mov rdx, 42     ; number of characters in string to write
    syscall

    mov rax ,1 
    mov rdi, 1
    mov rsi, congrats
    mov rdx, 30
    syscall

    mov rax, 1      ; sys_write system call
    mov rdi, 1
    mov rsi, adoni
    mov rdx, 27
    syscall

    mov rax, 60     ; exit system call
    mov rdi, 0
    syscall

Running the same commands gives us the following flag:
Flag: CTFlearn{Kurn00l_District}

I felt this was a good challenge to let me learn more about assembly and reverse engineering, and I'm glad I didn't just do the shortcut. (Although I accidentally typed cat on the compiled executable and may have already saw the flag, but I still went ahead to do it the proper way.)



