
        .data
msg:   .asciiz "Ola Mundo\n"
	.extern foobar 4

        .text
main: 

	li $v0, 4       # syscall 4 (print_str)
        la $a0, msg     # argument: string
        syscall         # print the string

	li $v0, 10
	syscall

