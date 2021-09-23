.data
	asterisco: .asciiz "*"  #uma variavel com um asterisco
	espaco: .asciiz " " #uma variavel com um espaço em branco
	barra: .asciiz "\n"
.text
main:
	li $v0, 5 #leitura de inteiro
	syscall
	
	move $t0, $v0  #$t0 recebe o valor fornecido
	
	move $t1, $zero #$t1 recebe o valor zero
	addi $t1, $t1, 1  #$t1 passa a valer 1
	
	
	
	primeirolaco:
		bgt $t1, $t0, primeirasaida 
		
		move $t2, $zero 
		addi $t2, $t2, 1  
		sub $t4, $t0, $t1 
		segundolaco: 
			bgt $t2, $t4, segundasaida 
			
			li $v0, 4 
			la $a0, espaco 
			syscall			
			addi $t2, $t2, 1 
			j segundolaco 
		segundasaida:
		
		move $t3, $zero 
		addi $t3, $t3, 1
		
		move $t5, $zero
		addi $t5, $t5, 2 	
		mul $s0, $t1, $t5 
		
		sub $t6, $s0, 1 
		
		terceirolaco:
			bgt $t3, $t6, terceirasaida 
			
			li $v0, 4 
			la $a0, asterisco 
			syscall
			
			addi $t3, $t3, 1 
			j terceirolaco 
		terceirasaida:
		
		li $v0, 4 #
		la $a0, barra
		syscall
		
		addi $t1, $t1, 1 
		j primeirolaco 
		
	primeirasaida:
		
	li $v0, 10 
	syscall
	
