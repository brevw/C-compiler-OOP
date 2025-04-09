.data
a11:
.space 1
.align 2
a12:
.space 1
.align 2
a13:
.space 1
.align 2
a21:
.space 1
.align 2
a22:
.space 1
.align 2
a23:
.space 1
.align 2
a31:
.space 1
.align 2
a32:
.space 1
.align 2
a33:
.space 1
.align 2
empty:
.space 1
.align 2
label_10_str:
.asciiz "\n"
.align 2
label_11_str:
.asciiz "     1   2   3\n"
.align 2
label_12_str:
.asciiz "   +---+---+---+\n"
.align 2
label_13_str:
.asciiz "a  | "
.align 2
label_14_str:
.asciiz " | "
.align 2
label_15_str:
.asciiz " |\n"
.align 2
label_16_str:
.asciiz "b  | "
.align 2
label_17_str:
.asciiz "c  | "
.align 2
label_18_str:
.asciiz "Player "
.align 2
label_19_str:
.asciiz " has won!\n"
.align 2
label_20_str:
.asciiz " select move (e.g. a2)>"
.align 2
label_21_str:
.asciiz "That is not a valid move!\n"
.align 2
label_22_str:
.asciiz "That move is not possible!\n"
.align 2
label_23_str:
.asciiz "It\'s a draw!\n"
.align 2
label_24_str:
.asciiz "Play again? (y/n)> "
.align 2

.text
reset:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
la $t1,a11
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
la $t1,a12
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
la $t1,a13
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
la $t1,a21
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
la $t0,a22
la $t1,empty
lb $t1,0($t1)
sb $t1,0($t0)
la $t1,a23
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
la $t1,a31
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
la $t0,a32
la $t1,empty
lb $t1,0($t1)
sb $t1,0($t0)
la $t1,a33
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
reset_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
full:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
li $t0,0
addi $t0,$t0,0
la $t1,a11
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltu $t1,$zero,$t1
beqz $t1,label_28_END
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_28_END:
la $t1,a21
lb $t1,0($t1)
la $t2,empty
lb $t2,0($t2)
xor $t1,$t1,$t2
sltu $t1,$zero,$t1
beqz $t1,label_29_END
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_29_END:
la $t1,a31
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltu $t1,$zero,$t1
beqz $t1,label_30_END
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_30_END:
la $t1,a12
lb $t1,0($t1)
la $t2,empty
lb $t2,0($t2)
xor $t1,$t1,$t2
sltu $t1,$zero,$t1
beqz $t1,label_31_END
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_31_END:
la $t1,a22
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltu $t1,$zero,$t1
beqz $t1,label_32_END
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_32_END:
la $t1,a32
lb $t1,0($t1)
la $t2,empty
lb $t2,0($t2)
xor $t1,$t1,$t2
sltu $t1,$zero,$t1
beqz $t1,label_33_END
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_33_END:
la $t1,a13
lb $t1,0($t1)
la $t2,empty
lb $t2,0($t2)
xor $t1,$t1,$t2
sltu $t1,$zero,$t1
beqz $t1,label_34_END
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_34_END:
la $t1,a23
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltu $t1,$zero,$t1
beqz $t1,label_35_END
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_35_END:
la $t1,a33
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltu $t1,$zero,$t1
beqz $t1,label_36_END
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_36_END:
li $t1,9
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_37_ELSE
li $t1,1
addi $t0,$fp,4
sw $t1,0($t0)
j label_38_END
j label_38_END
label_37_ELSE:
li $t1,0
addi $t0,$fp,4
sw $t1,0($t0)
j label_38_END
label_38_END:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
set:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
li $t0,1
addi $t0,$t0,0
addiu $t1,$fp,8
lb $t2,0($t1)
li $t1,97
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_41_ELSE
addiu $t1,$fp,12
lw $t2,0($t1)
li $t1,1
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_43_ELSE
la $t1,a11
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_45_ELSE
la $t2,a11
addiu $t1,$fp,16
lb $t1,0($t1)
sb $t1,0($t2)
j label_46_END
label_45_ELSE:
li $t0,0
li $t1,1
sub $t0,$t0,$t1
addi $t0,$t0,0
label_46_END:
j label_52_END
label_43_ELSE:
addiu $t1,$fp,12
lw $t2,0($t1)
li $t1,2
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_47_ELSE
la $t1,a12
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_49_ELSE
la $t1,a12
addiu $t2,$fp,16
lb $t2,0($t2)
sb $t2,0($t1)
j label_50_END
label_49_ELSE:
li $t1,0
li $t0,1
sub $t0,$t1,$t0
addi $t0,$t0,0
label_50_END:
j label_52_END
label_47_ELSE:
addiu $t1,$fp,12
lw $t1,0($t1)
li $t2,3
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_51_ELSE
la $t1,a13
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_53_ELSE
la $t2,a13
addiu $t1,$fp,16
lb $t1,0($t1)
sb $t1,0($t2)
j label_54_END
label_53_ELSE:
li $t0,0
li $t1,1
sub $t0,$t0,$t1
addi $t0,$t0,0
label_54_END:
j label_52_END
label_51_ELSE:
li $t0,0
addi $t0,$t0,0
label_52_END:
j label_70_END
label_41_ELSE:
addiu $t1,$fp,8
lb $t1,0($t1)
li $t2,98
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_55_ELSE
addiu $t1,$fp,12
lw $t1,0($t1)
li $t2,1
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_57_ELSE
la $t1,a21
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_59_ELSE
la $t1,a21
addiu $t2,$fp,16
lb $t2,0($t2)
sb $t2,0($t1)
j label_60_END
label_59_ELSE:
li $t1,0
li $t0,1
sub $t0,$t1,$t0
addi $t0,$t0,0
label_60_END:
j label_66_END
label_57_ELSE:
addiu $t1,$fp,12
lw $t2,0($t1)
li $t1,2
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_61_ELSE
la $t1,a22
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_63_ELSE
la $t2,a22
addiu $t1,$fp,16
lb $t1,0($t1)
sb $t1,0($t2)
j label_64_END
label_63_ELSE:
li $t1,0
li $t0,1
sub $t0,$t1,$t0
addi $t0,$t0,0
label_64_END:
j label_66_END
label_61_ELSE:
addiu $t1,$fp,12
lw $t2,0($t1)
li $t1,3
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_65_ELSE
la $t1,a23
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_67_ELSE
la $t2,a23
addiu $t1,$fp,16
lb $t1,0($t1)
sb $t1,0($t2)
j label_68_END
label_67_ELSE:
li $t0,0
li $t1,1
sub $t0,$t0,$t1
addi $t0,$t0,0
label_68_END:
j label_66_END
label_65_ELSE:
li $t0,0
addi $t0,$t0,0
label_66_END:
j label_70_END
label_55_ELSE:
addiu $t1,$fp,8
lb $t2,0($t1)
li $t1,99
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_69_ELSE
addiu $t1,$fp,12
lw $t1,0($t1)
li $t2,1
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_71_ELSE
la $t1,a31
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_73_ELSE
la $t1,a31
addiu $t2,$fp,16
lb $t2,0($t2)
sb $t2,0($t1)
j label_74_END
label_73_ELSE:
li $t1,0
li $t0,1
sub $t0,$t1,$t0
addi $t0,$t0,0
label_74_END:
j label_80_END
label_71_ELSE:
addiu $t1,$fp,12
lw $t2,0($t1)
li $t1,2
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_75_ELSE
la $t1,a32
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_77_ELSE
la $t2,a32
addiu $t1,$fp,16
lb $t1,0($t1)
sb $t1,0($t2)
j label_78_END
label_77_ELSE:
li $t0,0
li $t1,1
sub $t0,$t0,$t1
addi $t0,$t0,0
label_78_END:
j label_80_END
label_75_ELSE:
addiu $t1,$fp,12
lw $t1,0($t1)
li $t2,3
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_79_ELSE
la $t1,a33
lb $t2,0($t1)
la $t1,empty
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_81_ELSE
la $t2,a33
addiu $t1,$fp,16
lb $t1,0($t1)
sb $t1,0($t2)
j label_82_END
label_81_ELSE:
li $t0,0
li $t1,1
sub $t0,$t0,$t1
addi $t0,$t0,0
label_82_END:
j label_80_END
label_79_ELSE:
li $t0,0
addi $t0,$t0,0
label_80_END:
j label_70_END
label_69_ELSE:
li $t0,0
addi $t0,$t0,0
label_70_END:
addi $t1,$fp,4
sw $t0,0($t1)
j set_epilogue
set_epilogue:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
printGame:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
la $t0,label_10_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,label_11_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t1,label_12_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,label_13_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,a11
lb $t1,0($t0)
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t1,label_14_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,a12
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t0,label_14_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,a13
lb $t1,0($t0)
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t1,label_15_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t1,label_12_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,label_16_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,a21
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t1,label_14_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,a22
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t0,label_14_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,a23
lb $t1,0($t0)
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t1,label_15_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t1,label_12_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t1,label_17_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,a31
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t1,label_14_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,a32
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t1,label_14_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,a33
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t0,label_15_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t1,label_12_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,label_10_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
printGame_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
printWinner:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
la $t1,label_18_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_19_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
printWinner_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
switchPlayer:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $t0,$fp,8
lw $t1,0($t0)
li $t0,1
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_92_ELSE
li $t0,2
addi $t1,$fp,4
sw $t0,0($t1)
j label_93_END
j label_93_END
label_92_ELSE:
li $t1,1
addi $t0,$fp,4
sw $t1,0($t0)
j label_93_END
label_93_END:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
get_mark:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $t0,$fp,8
lw $t1,0($t0)
li $t0,1
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_96_ELSE
li $t1,88
addi $t0,$fp,4
sb $t1,0($t0)
j label_97_END
j label_97_END
label_96_ELSE:
li $t0,79
addi $t1,$fp,4
sb $t0,0($t1)
j label_97_END
label_97_END:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
selectmove:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t4,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t3,0($sp)
li $t0,1
addi $t0,$t0,0
beqz $t0,label_100_next
label_102_body:
la $t2,label_18_str
addiu $t1,$sp,-4
sw $t2,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t1,$fp,4
lw $t2,0($t1)
addiu $t1,$sp,-4
sw $t2,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t2,label_20_str
addiu $t1,$sp,-4
sw $t2,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $sp,$sp,-4
jal read_c
addi $t1,$sp,0
lb $t1,0($t1)
addiu $sp,$sp,4
addi $t3,$t1,0
addiu $sp,$sp,-4
jal read_i
addi $t1,$sp,0
lw $t1,0($t1)
addiu $sp,$sp,4
addi $t1,$t1,0
addiu $t2,$fp,4
lw $t2,0($t2)
addiu $t4,$sp,-4
sw $t2,0($t4)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal get_mark
addi $t2,$sp,0
lb $t2,0($t2)
addiu $sp,$sp,8
addi $t4,$t2,0
addiu $t2,$sp,-4
sb $t4,0($t2)
addiu $t2,$sp,-8
sw $t1,0($t2)
addiu $t1,$sp,-12
sb $t3,0($t1)
addiu $sp,$sp,-12
addiu $sp,$sp,-4
jal set
addi $t1,$sp,0
lw $t1,0($t1)
addiu $sp,$sp,16
addi $t2,$t1,0
li $t1,0
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_105_ELSE
la $t1,label_21_str
addiu $t3,$sp,-4
sw $t1,0($t3)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
j label_108_END
label_105_ELSE:
li $t3,0
li $t1,1
sub $t1,$t3,$t1
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_107_ELSE
la $t2,label_22_str
addiu $t1,$sp,-4
sw $t2,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
j label_108_END
label_107_ELSE:
li $t0,0
addi $t0,$t0,0
label_108_END:
bnez $t0,label_102_body
label_100_next:
# Original instruction: popRegisters
lw $t3,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t4,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
won:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
li $t0,0
addi $t0,$t0,0
la $t1,a11
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_119_END
la $t1,a21
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_112_ELSE
la $t1,a31
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_114_END
li $t0,1
addi $t0,$t0,0
label_114_END:
j label_119_END
label_112_ELSE:
la $t1,a22
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_115_ELSE
la $t1,a33
lb $t2,0($t1)
addiu $t1,$fp,8
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_117_END
li $t0,1
addi $t0,$t0,0
label_117_END:
j label_119_END
label_115_ELSE:
la $t1,a12
lb $t2,0($t1)
addiu $t1,$fp,8
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_119_END
la $t1,a13
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_119_END
li $t0,1
addi $t0,$t0,0
label_119_END:
la $t1,a12
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_122_END
la $t1,a22
lb $t2,0($t1)
addiu $t1,$fp,8
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_122_END
la $t1,a32
lb $t2,0($t1)
addiu $t1,$fp,8
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_122_END
li $t0,1
addi $t0,$t0,0
label_122_END:
la $t1,a13
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_128_END
la $t1,a23
lb $t2,0($t1)
addiu $t1,$fp,8
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_124_ELSE
la $t1,a33
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_126_END
li $t0,1
addi $t0,$t0,0
label_126_END:
j label_128_END
label_124_ELSE:
la $t1,a22
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_128_END
la $t1,a31
lb $t2,0($t1)
addiu $t1,$fp,8
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_128_END
li $t0,1
addi $t0,$t0,0
label_128_END:
la $t1,a21
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_131_END
la $t1,a22
lb $t2,0($t1)
addiu $t1,$fp,8
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_131_END
la $t1,a23
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_131_END
li $t0,1
addi $t0,$t0,0
label_131_END:
la $t1,a31
lb $t2,0($t1)
addiu $t1,$fp,8
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_134_END
la $t1,a32
lb $t1,0($t1)
addiu $t2,$fp,8
lb $t2,0($t2)
xor $t1,$t1,$t2
sltiu $t1,$t1,1
beqz $t1,label_134_END
la $t1,a33
lb $t2,0($t1)
addiu $t1,$fp,8
lb $t1,0($t1)
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_134_END
li $t0,1
addi $t0,$t0,0
label_134_END:
addi $t1,$fp,4
sw $t0,0($t1)
j won_epilogue
won_epilogue:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,0
la $t0,empty
li $t1,32
sb $t1,0($t0)
li $t0,1
addi $t1,$t0,0
jal reset
addiu $sp,$sp,0
jal printGame
addiu $sp,$sp,0
li $t0,1
addi $t0,$t0,0
beqz $t1,label_137_next
label_139_body:
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal selectmove
addiu $sp,$sp,4
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal get_mark
addi $t2,$sp,0
lb $t2,0($t2)
addiu $sp,$sp,8
addi $t3,$t2,0
jal printGame
addiu $sp,$sp,0
addiu $t2,$sp,-4
sb $t3,0($t2)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal won
addi $t2,$sp,0
lw $t2,0($t2)
addiu $sp,$sp,8
beqz $t2,label_140_ELSE
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal printWinner
addiu $sp,$sp,4
li $t1,0
addi $t1,$t1,0
j label_143_END
label_140_ELSE:
addiu $sp,$sp,-4
jal full
addi $t2,$sp,0
lw $t2,0($t2)
addiu $sp,$sp,4
li $t3,1
xor $t2,$t2,$t3
sltiu $t2,$t2,1
beqz $t2,label_142_ELSE
la $t1,label_23_str
addiu $t2,$sp,-4
sw $t1,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t1,0
addi $t1,$t1,0
j label_143_END
label_142_ELSE:
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal switchPlayer
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,8
addi $t0,$t0,0
label_143_END:
li $t2,0
xor $t2,$t1,$t2
sltiu $t2,$t2,1
beqz $t2,label_147_END
la $t2,label_24_str
addiu $t3,$sp,-4
sw $t2,0($t3)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $sp,$sp,-4
jal read_c
addi $t2,$sp,0
lb $t2,0($t2)
addiu $sp,$sp,4
addi $t3,$t2,0
li $t2,121
xor $t2,$t3,$t2
sltiu $t2,$t2,1
beqz $t2,label_145_ELSE
li $t1,1
addi $t1,$t1,0
jal reset
addiu $sp,$sp,0
j label_147_END
label_145_ELSE:
li $t2,89
xor $t2,$t3,$t2
sltiu $t2,$t2,1
beqz $t2,label_147_END
li $t1,1
addi $t1,$t1,0
jal reset
addiu $sp,$sp,0
label_147_END:
bnez $t1,label_139_body
label_137_next:
li $v0,10
syscall

.text
print_s:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
lw $a0,4($fp)
li $v0,4
syscall
print_s_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
print_i:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
lw $a0,4($fp)
li $v0,1
syscall
print_i_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
print_c:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
lw $a0,4($fp)
li $v0,11
syscall
print_c_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
read_c:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
li $v0,12
syscall
sw $v0,4($fp)
read_c_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
read_i:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
li $v0,5
syscall
sw $v0,4($fp)
read_i_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
mcmalloc:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
lw $a0,8($fp)
li $v0,9
syscall
sw $v0,4($fp)
mcmalloc_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

