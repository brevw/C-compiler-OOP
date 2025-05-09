.data
label_0_str:
.asciiz "Polynomial value at x="
.align 2
label_1_str:
.asciiz " is "
.align 2
label_2_str:
.asciiz "Derivative at x="
.align 2

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-44
addiu $t2,$fp,-24
li $t0,0
li $t1,4
mul $t0,$t0,$t1
add $t0,$t0,$t2
li $t1,2
sw $t1,0($t0)
addiu $t1,$fp,-24
li $t0,1
li $t2,4
mul $t2,$t0,$t2
add $t2,$t2,$t1
li $t0,0
li $t1,3
sub $t0,$t0,$t1
sw $t0,0($t2)
addiu $t1,$fp,-24
li $t2,2
li $t0,4
mul $t2,$t2,$t0
add $t2,$t2,$t1
li $t0,0
sw $t0,0($t2)
addiu $t1,$fp,-24
li $t2,3
li $t0,4
mul $t2,$t2,$t0
add $t2,$t2,$t1
li $t0,7
sw $t0,0($t2)
addiu $t0,$fp,-24
li $t2,4
li $t1,4
mul $t2,$t2,$t1
add $t2,$t2,$t0
li $t1,0
li $t0,12
sub $t0,$t1,$t0
sw $t0,0($t2)
addiu $t2,$fp,-24
li $t0,5
li $t1,4
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,5
sw $t0,0($t1)
li $t0,0
addi $t3,$t0,0
li $t0,5
slt $t0,$t3,$t0
beqz $t0,label_4_next
label_6_body:
addiu $t2,$fp,-44
li $t0,4
mul $t1,$t3,$t0
add $t1,$t1,$t2
addiu $t2,$fp,-24
li $t0,4
mul $t0,$t3,$t0
add $t0,$t0,$t2
lw $t2,0($t0)
li $t0,5
sub $t0,$t0,$t3
mul $t0,$t2,$t0
sw $t0,0($t1)
li $t0,1
add $t0,$t3,$t0
addi $t3,$t0,0
label_5_posttest:
li $t0,5
slt $t0,$t3,$t0
bnez $t0,label_6_body
label_4_next:
li $t0,2
addi $t1,$t0,0
li $t0,0
addi $t2,$t0,0
li $t0,0
addi $t3,$t0,0
li $t0,6
slt $t0,$t3,$t0
beqz $t0,label_7_next
label_9_body:
li $t0,1
addi $t4,$t0,0
li $t0,0
addi $t5,$t0,0
li $t0,5
sub $t0,$t0,$t3
slt $t0,$t5,$t0
beqz $t0,label_10_next
label_12_body:
mul $t0,$t4,$t1
addi $t4,$t0,0
li $t0,1
add $t0,$t5,$t0
addi $t5,$t0,0
label_11_posttest:
li $t0,5
sub $t0,$t0,$t3
slt $t0,$t5,$t0
bnez $t0,label_12_body
label_10_next:
addiu $t0,$fp,-24
li $t5,4
mul $t5,$t3,$t5
add $t5,$t5,$t0
lw $t0,0($t5)
mul $t0,$t0,$t4
add $t0,$t2,$t0
addi $t2,$t0,0
li $t0,1
add $t0,$t3,$t0
addi $t3,$t0,0
label_8_posttest:
li $t0,6
slt $t0,$t3,$t0
bnez $t0,label_9_body
label_7_next:
li $t0,0
addi $t0,$t0,0
li $t3,0
addi $t3,$t3,0
li $t4,5
slt $t4,$t3,$t4
beqz $t4,label_13_next
label_15_body:
li $t4,1
addi $t4,$t4,0
li $t5,0
addi $t6,$t5,0
li $t5,4
sub $t5,$t5,$t3
slt $t5,$t6,$t5
beqz $t5,label_16_next
label_18_body:
mul $t4,$t4,$t1
addi $t4,$t4,0
li $t5,1
add $t5,$t6,$t5
addi $t6,$t5,0
label_17_posttest:
li $t5,4
sub $t5,$t5,$t3
slt $t5,$t6,$t5
bnez $t5,label_18_body
label_16_next:
addiu $t6,$fp,-44
li $t5,4
mul $t5,$t3,$t5
add $t5,$t5,$t6
lw $t5,0($t5)
mul $t4,$t5,$t4
add $t0,$t0,$t4
addi $t0,$t0,0
li $t4,1
add $t3,$t3,$t4
addi $t3,$t3,0
label_14_posttest:
li $t4,5
slt $t4,$t3,$t4
bnez $t4,label_15_body
label_13_next:
la $t3,label_0_str
addiu $t4,$sp,-4
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t3,$sp,-4
sw $t1,0($t3)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t3,label_1_str
addiu $t4,$sp,-4
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t3,$sp,-4
sw $t2,0($t3)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t3,10
addiu $t2,$sp,-4
sb $t3,0($t2)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t3,label_2_str
addiu $t2,$sp,-4
sw $t3,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$sp,-4
sw $t1,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t1,label_1_str
addiu $t2,$sp,-4
sw $t1,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
main_epilogue:
li $v0,10
syscall

.text
print_s:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
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

