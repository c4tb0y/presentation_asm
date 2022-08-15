BITS 64

section .data
	me db "I'm C4tb0y a Cyber Security Enthusiast and a simple Dev", 10
	me_len equ $-me

section .text
	global _start:

	_start:
		mov rax, 1
		mov rdi, 1
		mov rsi, me
		mov rdx, me_len
		syscall
		jmp _exit

	_exit:
		mov rax, 60
		mov rdi, 1
		syscall