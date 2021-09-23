.data 
	zero: .float 0.0
.text 
	move $t0, $zero
	li $v0, 5
	syscall
	move $t1, $v0
	lwc1 $f1, zero
	lwc1 $f12, zero	
	Loop:
		beq $t0, $t1, SaiDoLoop
		li $v0, 6
		syscall
		add.s $f3, $f1, $f0
	
		li $v0, 6
		syscall
		add.s $f4, $f1, $f0
		
		mul.s $f5, $f3, $f4
		add.s $f12, $f12, $f5
		addi $t0, $t0, 1
		j Loop
	
	SaiDoLoop:	
		li $v0, 2
		syscall
	
	
