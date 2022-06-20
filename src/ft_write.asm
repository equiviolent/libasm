; ft_write by 0xdeadabed
; 19.06.2022 10:12 AM
; nasm -f elf64 ft_strlen.asm

; function prototype -> write(int fd, const char *buf, size_t nbyte)
; writes nbyte from buf on the specified fd.

segment	.text

global	ft_write

ft_write:
	mov		rax, 0x01		; Call the write system-call
	syscall
	ret
	
