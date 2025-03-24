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
b:
.space 4
.align 2

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,0
la $t0,a11
li $t1,120
sb $t1,0($t0)
la $t1,a12
li $t0,121
sb $t0,0($t1)
la $t1,a13
li $t0,122
sb $t0,0($t1)
la $t1,b
li $t0,1
sw $t0,0($t1)
la $t0,a11
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t0,a12
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t0,a13
lb $t1,0($t0)
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t0,b
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
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

