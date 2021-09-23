.data 
	zero: .float 0.0
.text 
	li $v0, 6
	syscall
	
	lwc1 $f1, zero
	add.s $f2, $f1, $f0
	
	li $v0, 6
	syscall
	
	div.s $f12, $f2, $f0
	
	li $v0, 2
	syscall
	
	