.data
label_0_str:
.asciiz " "
.align 2
label_1_str:
.asciiz "\n"
.align 2
label_2_str:
.asciiz "Enter the number of rows for Pascal\'s Triangle: "
.align 2

.text
print_pascals_triangle:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,-10008
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t4,0($sp)
addiu $sp,$sp,-4
sw $t3,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $t0,$fp,-10008
li $t1,0
sw $t1,0($t0)
addiu $t0,$fp,-10008
lw $t1,0($t0)
addiu $t0,$fp,4
lw $t0,0($t0)
slt $t0,$t1,$t0
beqz $t0,label_4_next
label_6_body:
addiu $t1,$fp,-10012
li $t0,0
sw $t0,0($t1)
addiu $t0,$fp,-10012
lw $t1,0($t0)
addiu $t0,$fp,-10008
lw $t0,0($t0)
slt $t0,$t0,$t1
xori $t0,$t0,1
beqz $t0,label_7_next
label_9_body:
addiu $t0,$fp,-10012
lw $t1,0($t0)
li $t0,0
xor $t0,$t1,$t0
sltiu $t0,$t0,1
bne $t0,$zero,label_12_
addiu $t0,$fp,-10012
lw $t1,0($t0)
addiu $t0,$fp,-10008
lw $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
bne $t0,$zero,label_12_
li $t0,0
j label_13_
label_12_:
li $t0,1
label_13_:
beqz $t0,label_10_ELSE
addiu $t2,$fp,-10004
addiu $t0,$fp,-10008
lw $t1,0($t0)
li $t0,200
mul $t1,$t1,$t0
add $t2,$t2,$t1
addiu $t0,$fp,-10012
lw $t0,0($t0)
li $t1,4
mul $t0,$t0,$t1
add $t0,$t2,$t0
li $t1,1
sw $t1,0($t0)
j label_11_END
label_10_ELSE:
addiu $t2,$fp,-10004
addiu $t0,$fp,-10008
lw $t0,0($t0)
li $t1,200
mul $t0,$t0,$t1
add $t2,$t2,$t0
addiu $t0,$fp,-10012
lw $t1,0($t0)
li $t0,4
mul $t1,$t1,$t0
add $t2,$t2,$t1
addiu $t3,$fp,-10004
addiu $t0,$fp,-10008
lw $t1,0($t0)
li $t0,1
sub $t1,$t1,$t0
li $t0,200
mul $t1,$t1,$t0
add $t3,$t3,$t1
addiu $t0,$fp,-10012
lw $t0,0($t0)
li $t1,1
sub $t0,$t0,$t1
li $t1,4
mul $t0,$t0,$t1
add $t0,$t3,$t0
lw $t4,0($t0)
addiu $t3,$fp,-10004
addiu $t0,$fp,-10008
lw $t0,0($t0)
li $t1,1
sub $t1,$t0,$t1
li $t0,200
mul $t1,$t1,$t0
add $t3,$t3,$t1
addiu $t0,$fp,-10012
lw $t0,0($t0)
li $t1,4
mul $t0,$t0,$t1
add $t0,$t3,$t0
lw $t0,0($t0)
add $t0,$t4,$t0
sw $t0,0($t2)
label_11_END:
addiu $t2,$fp,-10012
addiu $t0,$fp,-10012
lw $t1,0($t0)
li $t0,1
add $t0,$t1,$t0
sw $t0,0($t2)
label_8_posttest:
addiu $t0,$fp,-10012
lw $t1,0($t0)
addiu $t0,$fp,-10008
lw $t0,0($t0)
slt $t0,$t0,$t1
xori $t0,$t0,1
bnez $t0,label_9_body
label_7_next:
addiu $t2,$fp,-10008
addiu $t0,$fp,-10008
lw $t0,0($t0)
li $t1,1
add $t0,$t0,$t1
sw $t0,0($t2)
label_5_posttest:
addiu $t0,$fp,-10008
lw $t1,0($t0)
addiu $t0,$fp,4
lw $t0,0($t0)
slt $t0,$t1,$t0
bnez $t0,label_6_body
label_4_next:
addiu $t1,$fp,-10008
li $t0,0
sw $t0,0($t1)
addiu $t0,$fp,-10008
lw $t1,0($t0)
addiu $t0,$fp,4
lw $t0,0($t0)
slt $t0,$t1,$t0
beqz $t0,label_14_next
label_16_body:
addiu $t1,$fp,-10012
li $t0,0
sw $t0,0($t1)
addiu $t0,$fp,-10012
lw $t1,0($t0)
addiu $t0,$fp,-10008
lw $t0,0($t0)
slt $t0,$t0,$t1
xori $t0,$t0,1
beqz $t0,label_17_next
label_19_body:
addiu $t2,$fp,-10004
addiu $t0,$fp,-10008
lw $t0,0($t0)
li $t1,200
mul $t0,$t0,$t1
add $t2,$t2,$t0
addiu $t0,$fp,-10012
lw $t1,0($t0)
li $t0,4
mul $t1,$t1,$t0
add $t0,$t2,$t1
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_0_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$fp,-10012
addiu $t0,$fp,-10012
lw $t0,0($t0)
li $t1,1
add $t0,$t0,$t1
sw $t0,0($t2)
label_18_posttest:
addiu $t0,$fp,-10012
lw $t1,0($t0)
addiu $t0,$fp,-10008
lw $t0,0($t0)
slt $t0,$t0,$t1
xori $t0,$t0,1
bnez $t0,label_19_body
label_17_next:
la $t0,label_1_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$fp,-10008
addiu $t0,$fp,-10008
lw $t1,0($t0)
li $t0,1
add $t0,$t1,$t0
sw $t0,0($t2)
label_15_posttest:
addiu $t0,$fp,-10008
lw $t1,0($t0)
addiu $t0,$fp,4
lw $t0,0($t0)
slt $t0,$t1,$t0
bnez $t0,label_16_body
label_14_next:
print_pascals_triangle_epilogue:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t3,0($sp)
addiu $sp,$sp,4
lw $t4,0($sp)
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
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-4
la $t1,label_2_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t1,$fp,-4
addiu $sp,$sp,-4
jal read_i
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,4
sw $t0,0($t1)
addiu $t0,$fp,-4
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_pascals_triangle
addiu $sp,$sp,4
j main_epilogue
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

