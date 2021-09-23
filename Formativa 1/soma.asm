	.data
	.text
main:
	li $v0, 5 #leitura do 1 num
	syscall

	move $t0, $v0 #movendo o numero do registrador v0 para o t0
	li $v0, 5 #lendo o segundo num
	syscall

	move $t1, $v0 #movendo o numero do registrador v0 para o t1
	add $t2, $t1,$t0

	move $a0, $t2	#movendo o resultado para o a0 para poder printar
	li $v0, 1	#printando um inteiro
	syscall

	li $v0, 10	#encerrando o cod
	syscall
