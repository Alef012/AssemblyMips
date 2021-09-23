.data	
	over: .asciiz "overflow\n"
.text
main:
	li $v0, 5	#lendo se é com sinal ou não
	syscall 
	beq $v0, $zero, semSinal
	j comSinal
comSinal:
	li $v0, 5	
	syscall 
	move $s1, $v0
	
	li $v0, 5	
	syscall
	move $s2, $v0
	
	
	xor $s3,$s1,$s2	
	slt $s3,$s3,$zero	
	bne $s3, $zero, semOverflow

	addu $s0, $s1, $s2
	xor $s3,$s0,$s1
	slt $s3, $s3, $zero
	bne $s3, $zero, overflow
	j semOverflow
	
	
semOverflow:
	addu $s0, $s1, $s2
	move $a0,$s0
	li $v0, 1
	syscall	
	li $v0, 10
	syscall
	


overflow:
	li $v0, 4
	la $a0, over
	syscall 	
	li $v0, 10
	syscall

semSinal:
	
	li $v0, 5	
	syscall 
	move $s1, $v0
	
	li $v0, 5	
	syscall
	move $s2, $v0
	
	nor $s3, $s1, $zero
	sltu $s3 , $s3,$s2
	bne $s3, $zero, overflow
	j semOverflow 
	
		
			
				
						
