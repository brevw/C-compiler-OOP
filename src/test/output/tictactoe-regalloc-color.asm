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
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
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
la $t1,a22
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
la $t1,a23
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
la $t1,a31
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
la $t1,a32
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
la $t1,a33
la $t0,empty
lb $t0,0($t0)
sb $t0,0($t1)
reset_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
full:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $t1,$fp,-4
li $t0,0
sw $t0,0($t1)
la $t0,a11
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_28_END
addiu $t2,$fp,-4
addiu $t0,$fp,-4
lw $t0,0($t0)
li $t1,1
add $t0,$t0,$t1
sw $t0,0($t2)
label_28_END:
la $t0,a21
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_29_END
addiu $t2,$fp,-4
addiu $t0,$fp,-4
lw $t0,0($t0)
li $t1,1
add $t0,$t0,$t1
sw $t0,0($t2)
label_29_END:
la $t0,a31
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_30_END
addiu $t2,$fp,-4
addiu $t0,$fp,-4
lw $t1,0($t0)
li $t0,1
add $t0,$t1,$t0
sw $t0,0($t2)
label_30_END:
la $t0,a12
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_31_END
addiu $t2,$fp,-4
addiu $t0,$fp,-4
lw $t0,0($t0)
li $t1,1
add $t0,$t0,$t1
sw $t0,0($t2)
label_31_END:
la $t0,a22
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_32_END
addiu $t2,$fp,-4
addiu $t0,$fp,-4
lw $t0,0($t0)
li $t1,1
add $t0,$t0,$t1
sw $t0,0($t2)
label_32_END:
la $t0,a32
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_33_END
addiu $t2,$fp,-4
addiu $t0,$fp,-4
lw $t1,0($t0)
li $t0,1
add $t0,$t1,$t0
sw $t0,0($t2)
label_33_END:
la $t0,a13
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_34_END
addiu $t2,$fp,-4
addiu $t0,$fp,-4
lw $t0,0($t0)
li $t1,1
add $t0,$t0,$t1
sw $t0,0($t2)
label_34_END:
la $t0,a23
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_35_END
addiu $t2,$fp,-4
addiu $t0,$fp,-4
lw $t1,0($t0)
li $t0,1
add $t0,$t1,$t0
sw $t0,0($t2)
label_35_END:
la $t0,a33
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_36_END
addiu $t2,$fp,-4
addiu $t0,$fp,-4
lw $t1,0($t0)
li $t0,1
add $t0,$t1,$t0
sw $t0,0($t2)
label_36_END:
addiu $t0,$fp,-4
lw $t0,0($t0)
li $t1,9
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_37_ELSE
li $t0,1
addi $t1,$fp,4
sw $t0,0($t1)
j full_epilogue
j label_38_END
label_37_ELSE:
li $t1,0
addi $t0,$fp,4
sw $t1,0($t0)
j full_epilogue
label_38_END:
full_epilogue:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
set:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $t0,$fp,-4
li $t1,1
sw $t1,0($t0)
addiu $t0,$fp,16
lb $t1,0($t0)
li $t0,97
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_41_ELSE
addiu $t0,$fp,12
lw $t1,0($t0)
li $t0,1
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_43_ELSE
la $t0,a11
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_45_ELSE
la $t1,a11
addiu $t0,$fp,8
lb $t0,0($t0)
sb $t0,0($t1)
j label_46_END
label_45_ELSE:
addiu $t2,$fp,-4
li $t0,0
li $t1,1
sub $t0,$t0,$t1
sw $t0,0($t2)
label_46_END:
j label_44_END
label_43_ELSE:
addiu $t0,$fp,12
lw $t1,0($t0)
li $t0,2
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_47_ELSE
la $t0,a12
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_49_ELSE
la $t1,a12
addiu $t0,$fp,8
lb $t0,0($t0)
sb $t0,0($t1)
j label_50_END
label_49_ELSE:
addiu $t2,$fp,-4
li $t0,0
li $t1,1
sub $t0,$t0,$t1
sw $t0,0($t2)
label_50_END:
j label_48_END
label_47_ELSE:
addiu $t0,$fp,12
lw $t0,0($t0)
li $t1,3
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_51_ELSE
la $t0,a13
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_53_ELSE
la $t1,a13
addiu $t0,$fp,8
lb $t0,0($t0)
sb $t0,0($t1)
j label_54_END
label_53_ELSE:
addiu $t2,$fp,-4
li $t1,0
li $t0,1
sub $t0,$t1,$t0
sw $t0,0($t2)
label_54_END:
j label_52_END
label_51_ELSE:
addiu $t1,$fp,-4
li $t0,0
sw $t0,0($t1)
label_52_END:
label_48_END:
label_44_END:
j label_42_END
label_41_ELSE:
addiu $t0,$fp,16
lb $t0,0($t0)
li $t1,98
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_55_ELSE
addiu $t0,$fp,12
lw $t0,0($t0)
li $t1,1
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_57_ELSE
la $t0,a21
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_59_ELSE
la $t1,a21
addiu $t0,$fp,8
lb $t0,0($t0)
sb $t0,0($t1)
j label_60_END
label_59_ELSE:
addiu $t2,$fp,-4
li $t1,0
li $t0,1
sub $t0,$t1,$t0
sw $t0,0($t2)
label_60_END:
j label_58_END
label_57_ELSE:
addiu $t0,$fp,12
lw $t0,0($t0)
li $t1,2
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_61_ELSE
la $t0,a22
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_63_ELSE
la $t1,a22
addiu $t0,$fp,8
lb $t0,0($t0)
sb $t0,0($t1)
j label_64_END
label_63_ELSE:
addiu $t2,$fp,-4
li $t0,0
li $t1,1
sub $t0,$t0,$t1
sw $t0,0($t2)
label_64_END:
j label_62_END
label_61_ELSE:
addiu $t0,$fp,12
lw $t0,0($t0)
li $t1,3
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_65_ELSE
la $t0,a23
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_67_ELSE
la $t1,a23
addiu $t0,$fp,8
lb $t0,0($t0)
sb $t0,0($t1)
j label_68_END
label_67_ELSE:
addiu $t2,$fp,-4
li $t0,0
li $t1,1
sub $t0,$t0,$t1
sw $t0,0($t2)
label_68_END:
j label_66_END
label_65_ELSE:
addiu $t0,$fp,-4
li $t1,0
sw $t1,0($t0)
label_66_END:
label_62_END:
label_58_END:
j label_56_END
label_55_ELSE:
addiu $t0,$fp,16
lb $t1,0($t0)
li $t0,99
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_69_ELSE
addiu $t0,$fp,12
lw $t1,0($t0)
li $t0,1
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_71_ELSE
la $t0,a31
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_73_ELSE
la $t1,a31
addiu $t0,$fp,8
lb $t0,0($t0)
sb $t0,0($t1)
j label_74_END
label_73_ELSE:
addiu $t2,$fp,-4
li $t1,0
li $t0,1
sub $t0,$t1,$t0
sw $t0,0($t2)
label_74_END:
j label_72_END
label_71_ELSE:
addiu $t0,$fp,12
lw $t0,0($t0)
li $t1,2
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_75_ELSE
la $t0,a32
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_77_ELSE
la $t1,a32
addiu $t0,$fp,8
lb $t0,0($t0)
sb $t0,0($t1)
j label_78_END
label_77_ELSE:
addiu $t2,$fp,-4
li $t1,0
li $t0,1
sub $t0,$t1,$t0
sw $t0,0($t2)
label_78_END:
j label_76_END
label_75_ELSE:
addiu $t0,$fp,12
lw $t1,0($t0)
li $t0,3
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_79_ELSE
la $t0,a33
lb $t1,0($t0)
la $t0,empty
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_81_ELSE
la $t1,a33
addiu $t0,$fp,8
lb $t0,0($t0)
sb $t0,0($t1)
j label_82_END
label_81_ELSE:
addiu $t2,$fp,-4
li $t0,0
li $t1,1
sub $t0,$t0,$t1
sw $t0,0($t2)
label_82_END:
j label_80_END
label_79_ELSE:
addiu $t1,$fp,-4
li $t0,0
sw $t0,0($t1)
label_80_END:
label_76_END:
label_72_END:
j label_70_END
label_69_ELSE:
addiu $t0,$fp,-4
li $t1,0
sw $t1,0($t0)
label_70_END:
label_56_END:
label_42_END:
addiu $t0,$fp,-4
lw $t0,0($t0)
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
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t1,label_10_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t1,label_11_str
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
la $t1,label_13_str
addiu $t0,$sp,-4
sw $t1,0($t0)
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
la $t0,label_14_str
addiu $t1,$sp,-4
sw $t0,0($t1)
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
la $t1,label_14_str
addiu $t0,$sp,-4
sw $t1,0($t0)
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
lb $t1,0($t0)
addiu $t0,$sp,-4
sb $t1,0($t0)
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
la $t0,label_17_str
addiu $t1,$sp,-4
sw $t0,0($t1)
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
lb $t1,0($t0)
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t0,label_14_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,a33
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
la $t0,label_12_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t1,label_10_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
printGame_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
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
la $t0,label_18_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
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
lw $t0,0($t0)
li $t1,1
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_92_ELSE
li $t1,2
addi $t0,$fp,4
sw $t1,0($t0)
j switchPlayer_epilogue
j label_93_END
label_92_ELSE:
li $t1,1
addi $t0,$fp,4
sw $t1,0($t0)
j switchPlayer_epilogue
label_93_END:
switchPlayer_epilogue:
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
lw $t0,0($t0)
li $t1,1
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_96_ELSE
li $t1,88
addi $t0,$fp,4
sb $t1,0($t0)
j get_mark_epilogue
j label_97_END
label_96_ELSE:
li $t1,79
addi $t0,$fp,4
sb $t1,0($t0)
j get_mark_epilogue
label_97_END:
get_mark_epilogue:
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
addiu $sp,$sp,-20
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $t0,$fp,-16
li $t1,1
sw $t1,0($t0)
addiu $t0,$fp,-16
lw $t0,0($t0)
beqz $t0,label_100_next
label_102_body:
la $t0,label_18_str
addiu $t1,$sp,-4
sw $t0,0($t1)
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
la $t0,label_20_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t1,$fp,-8
addiu $sp,$sp,-4
jal read_c
addi $t0,$sp,0
lb $t0,0($t0)
addiu $sp,$sp,4
sb $t0,0($t1)
addiu $t1,$fp,-12
addiu $sp,$sp,-4
jal read_i
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,4
sw $t0,0($t1)
addiu $t2,$fp,-24
addiu $t0,$fp,4
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal get_mark
addi $t0,$sp,0
lb $t0,0($t0)
addiu $sp,$sp,8
sb $t0,0($t2)
addiu $t2,$fp,-20
addiu $t0,$fp,-8
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $t0,$fp,-12
lw $t1,0($t0)
addiu $t0,$sp,-8
sw $t1,0($t0)
addiu $t0,$fp,-24
lb $t1,0($t0)
addiu $t0,$sp,-12
sb $t1,0($t0)
addiu $sp,$sp,-12
addiu $sp,$sp,-4
jal set
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,16
sw $t0,0($t2)
addiu $t0,$fp,-20
lw $t0,0($t0)
li $t1,0
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_105_ELSE
la $t1,label_21_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
j label_106_END
label_105_ELSE:
addiu $t0,$fp,-20
lw $t2,0($t0)
li $t1,0
li $t0,1
sub $t0,$t1,$t0
xor $t0,$t2,$t0
sltiu $t0,$t0,1
beqz $t0,label_107_ELSE
la $t1,label_22_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
j label_108_END
label_107_ELSE:
addiu $t1,$fp,-16
li $t0,0
sw $t0,0($t1)
label_108_END:
label_106_END:
label_101_posttest:
addiu $t0,$fp,-16
lw $t0,0($t0)
bnez $t0,label_102_body
label_100_next:
selectmove_epilogue:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
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
addiu $sp,$sp,-4
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $t0,$fp,-4
li $t1,0
sw $t1,0($t0)
la $t0,a11
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_111_END
la $t0,a21
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_112_ELSE
la $t0,a31
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_114_END
addiu $t0,$fp,-4
li $t1,1
sw $t1,0($t0)
label_114_END:
j label_113_END
label_112_ELSE:
la $t0,a22
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_115_ELSE
la $t0,a33
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_117_END
addiu $t0,$fp,-4
li $t1,1
sw $t1,0($t0)
label_117_END:
j label_116_END
label_115_ELSE:
la $t0,a12
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_118_END
la $t0,a13
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_119_END
addiu $t1,$fp,-4
li $t0,1
sw $t0,0($t1)
label_119_END:
label_118_END:
label_116_END:
label_113_END:
label_111_END:
la $t0,a12
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_120_END
la $t0,a22
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_121_END
la $t0,a32
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_122_END
addiu $t0,$fp,-4
li $t1,1
sw $t1,0($t0)
label_122_END:
label_121_END:
label_120_END:
la $t0,a13
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_123_END
la $t0,a23
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_124_ELSE
la $t0,a33
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_126_END
addiu $t1,$fp,-4
li $t0,1
sw $t0,0($t1)
label_126_END:
j label_125_END
label_124_ELSE:
la $t0,a22
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_127_END
la $t0,a31
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_128_END
addiu $t1,$fp,-4
li $t0,1
sw $t0,0($t1)
label_128_END:
label_127_END:
label_125_END:
label_123_END:
la $t0,a21
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_129_END
la $t0,a22
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_130_END
la $t0,a23
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_131_END
addiu $t0,$fp,-4
li $t1,1
sw $t1,0($t0)
label_131_END:
label_130_END:
label_129_END:
la $t0,a31
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_132_END
la $t0,a32
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_133_END
la $t0,a33
lb $t1,0($t0)
addiu $t0,$fp,8
lb $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_134_END
addiu $t1,$fp,-4
li $t0,1
sw $t0,0($t1)
label_134_END:
label_133_END:
label_132_END:
addiu $t0,$fp,-4
lw $t1,0($t0)
addi $t0,$fp,4
sw $t1,0($t0)
j won_epilogue
won_epilogue:
# Original instruction: popRegisters
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
addiu $sp,$sp,-16
la $t0,empty
li $t1,32
sb $t1,0($t0)
addiu $t0,$fp,-4
li $t1,1
sw $t1,0($t0)
jal reset
addiu $sp,$sp,0
jal printGame
addiu $sp,$sp,0
addiu $t1,$fp,-8
li $t0,1
sw $t0,0($t1)
addiu $t0,$fp,-4
lw $t0,0($t0)
beqz $t0,label_137_next
label_139_body:
addiu $t0,$fp,-8
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal selectmove
addiu $sp,$sp,4
addiu $t2,$fp,-12
addiu $t0,$fp,-8
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal get_mark
addi $t0,$sp,0
lb $t0,0($t0)
addiu $sp,$sp,8
sb $t0,0($t2)
jal printGame
addiu $sp,$sp,0
addiu $t0,$fp,-12
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal won
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,8
beqz $t0,label_140_ELSE
addiu $t0,$fp,-8
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal printWinner
addiu $sp,$sp,4
addiu $t1,$fp,-4
li $t0,0
sw $t0,0($t1)
j label_141_END
label_140_ELSE:
addiu $sp,$sp,-4
jal full
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,4
li $t1,1
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_142_ELSE
la $t1,label_23_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,-4
li $t1,0
sw $t1,0($t0)
j label_143_END
label_142_ELSE:
addiu $t2,$fp,-8
addiu $t0,$fp,-8
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal switchPlayer
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,8
sw $t0,0($t2)
label_143_END:
label_141_END:
addiu $t0,$fp,-4
lw $t1,0($t0)
li $t0,0
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_144_END
la $t0,label_24_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t1,$fp,-16
addiu $sp,$sp,-4
jal read_c
addi $t0,$sp,0
lb $t0,0($t0)
addiu $sp,$sp,4
sb $t0,0($t1)
addiu $t0,$fp,-16
lb $t1,0($t0)
li $t0,121
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_145_ELSE
addiu $t0,$fp,-4
li $t1,1
sw $t1,0($t0)
jal reset
addiu $sp,$sp,0
j label_146_END
label_145_ELSE:
addiu $t0,$fp,-16
lb $t1,0($t0)
li $t0,89
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_147_END
addiu $t0,$fp,-4
li $t1,1
sw $t1,0($t0)
jal reset
addiu $sp,$sp,0
label_147_END:
label_146_END:
label_144_END:
label_138_posttest:
addiu $t0,$fp,-4
lw $t0,0($t0)
bnez $t0,label_139_body
label_137_next:
main_epilogue:
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

