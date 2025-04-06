.data
label_0_str:
.asciiz "First "
.align 2
label_1_str:
.asciiz " terms of Fibonacci series are : "
.align 2
label_2_str:
.asciiz " "
.align 2

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,0
addiu $sp,$sp,-4
jal read_i
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,4
addi $t0,$t0,0
li $t1,0
addi $t1,$t1,0
li $t2,1
addi $t2,$t2,0
la $t3,label_0_str
addiu $t4,$sp,-4
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t3,$sp,-4
sw $t0,0($t3)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t3,label_1_str
addiu $t4,$sp,-4
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t3,0
addi $t5,$t3,0
slt $t3,$t5,$t0
beqz $t3,label_7_next
label_9_body:
li $t3,1
slt $t3,$t3,$t5
xori $t3,$t3,1
beqz $t3,label_10_ELSE
addi $t4,$t5,0
j label_11_END
label_10_ELSE:
add $t1,$t1,$t2
addi $t4,$t1,0
addi $t1,$t2,0
addi $t2,$t4,0
label_11_END:
addiu $t3,$sp,-4
sw $t4,0($t3)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t3,label_2_str
addiu $t4,$sp,-4
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t3,1
add $t3,$t5,$t3
addi $t5,$t3,0
label_8_posttest:
slt $t3,$t5,$t0
bnez $t3,label_9_body
label_7_next:
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

