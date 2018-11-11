addi $a0, $zero, 6
sw	$a0, 0($zero)
lw $a2, 0($zero)
addi $t1, $zero, 12
addi $t2, $zero, 12
bne 	$t2, $t1, END
j TARGET
SUBTRACT:
sub $t3, $t1, $a0
beq $t2, $t1, END


TARGET:
add $a2, $t1, $a0
j SUBTRACT

END:
