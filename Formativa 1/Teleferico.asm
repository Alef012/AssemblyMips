.data 
	barra: .asciiz "\n"
.text 
main:	
	li $v0, 5	#lendo a capacidade
	syscall 
	move $t1, $v0 #movendo a capacidade pro registrador t1
	sub $t2, $t1, 1	#subtraindo a capacidade por um por conta do monitor
	li $v0, 5	#lendo a quantidade de aluno
	syscall 
	move $t3, $v0 #movendo a quantidade de aluno para t3
	div $t3,$t2
	mfhi $t4 #possui o resto da divisão 
	mflo $t5 #possui o resultado da divisão
	bne $t4, $zero, maisUm #se o resto não for zero vá para maisUm
	move $a0, $t5 
	li $v0, 1 #printando o resultado da divisão
	syscall
	li $v0, 4
	la $a0, barra	#printando o \n
	syscall 
	j Exit
maisUm:
	add $t6, $t5, 1 #adicionando mais uma ida por conta do resto
	move $a0, $t6 #printando o resultado
	li $v0, 1 
	syscall
	li $v0, 4
	la $a0, barra
	syscall 
	j Exit
Exit: 
	li $v0, 10
	syscall
	