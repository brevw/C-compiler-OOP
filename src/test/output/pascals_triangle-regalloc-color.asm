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
addiu $sp,$sp,-10000
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t3,0($sp)
addiu $sp,$sp,-4
sw $t4,0($sp)
addiu $sp,$sp,-4
sw $t6,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t5,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
li $t0,0
addi $t1,$t0,0
addiu $t0,$fp,4
lw $t0,0($t0)
slt $t0,$t1,$t0
beqz $t0,label_4_next
label_6_body:
li $t0,0
addi $t0,$t0,0
slt $t2,$t1,$t0
xori $t2,$t2,1
beqz $t2,label_7_next
label_9_body:
li $t2,0
xor $t2,$t0,$t2
sltiu $t2,$t2,1
bne $t2,$zero,label_12_
xor $t2,$t0,$t1
sltiu $t2,$t2,1
bne $t2,$zero,label_12_
li $t2,0
j label_13_
label_12_:
li $t2,1
label_13_:
beqz $t2,label_10_ELSE
addiu $t2,$fp,-10004
li $t3,200
mul $t4,$t1,$t3
add $t4,$t4,$t2
li $t2,4
mul $t3,$t0,$t2
add $t3,$t3,$t4
li $t2,1
sw $t2,0($t3)
j label_11_END
label_10_ELSE:
addiu $t2,$fp,-10004
li $t3,200
mul $t3,$t1,$t3
add $t3,$t3,$t2
li $t2,4
mul $t2,$t0,$t2
add $t2,$t2,$t3
addiu $t3,$fp,-10004
li $t4,1
sub $t4,$t1,$t4
li $t5,200
mul $t4,$t4,$t5
add $t4,$t4,$t3
li $t3,1
sub $t5,$t0,$t3
li $t3,4
mul $t3,$t5,$t3
add $t3,$t3,$t4
lw $t6,0($t3)
addiu $t3,$fp,-10004
li $t4,1
sub $t4,$t1,$t4
li $t5,200
mul $t4,$t4,$t5
add $t4,$t4,$t3
li $t3,4
mul $t3,$t0,$t3
add $t3,$t3,$t4
lw $t3,0($t3)
add $t3,$t6,$t3
sw $t3,0($t2)
label_11_END:
li $t2,1
add $t0,$t0,$t2
addi $t0,$t0,0
label_8_posttest:
slt $t2,$t1,$t0
xori $t2,$t2,1
bnez $t2,label_9_body
label_7_next:
li $t0,1
add $t0,$t1,$t0
addi $t1,$t0,0
label_5_posttest:
addiu $t0,$fp,4
lw $t0,0($t0)
slt $t0,$t1,$t0
bnez $t0,label_6_body
label_4_next:
li $t0,0
addi $t1,$t0,0
addiu $t0,$fp,4
lw $t0,0($t0)
slt $t0,$t1,$t0
beqz $t0,label_14_next
label_16_body:
li $t0,0
addi $t0,$t0,0
slt $t2,$t1,$t0
xori $t2,$t2,1
beqz $t2,label_17_next
label_19_body:
addiu $t2,$fp,-10004
li $t3,200
mul $t3,$t1,$t3
add $t3,$t3,$t2
li $t2,4
mul $t2,$t0,$t2
add $t2,$t2,$t3
lw $t2,0($t2)
addiu $t3,$sp,-4
sw $t2,0($t3)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t2,label_0_str
addiu $t3,$sp,-4
sw $t2,0($t3)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t2,1
add $t0,$t0,$t2
addi $t0,$t0,0
label_18_posttest:
slt $t2,$t1,$t0
xori $t2,$t2,1
bnez $t2,label_19_body
label_17_next:
la $t2,label_1_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,1
add $t0,$t1,$t0
addi $t1,$t0,0
label_15_posttest:
addiu $t0,$fp,4
lw $t0,0($t0)
slt $t0,$t1,$t0
bnez $t0,label_16_body
label_14_next:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t5,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t6,0($sp)
addiu $sp,$sp,4
lw $t4,0($sp)
addiu $sp,$sp,4
lw $t3,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,0
la $t1,label_2_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $sp,$sp,-4
jal read_i
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,4
addi $t1,$t0,0
addiu $t0,$sp,-4
sw $t1,0($t0)
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

