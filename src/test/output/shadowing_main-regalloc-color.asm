.data
label_0_str:
.asciiz "Outer scope - x: "
.align 2
label_1_str:
.asciiz "\n"
.align 2
label_2_str:
.asciiz "Outer scope - y: "
.align 2
label_3_str:
.asciiz "Inner scope - x: "
.align 2
label_4_str:
.asciiz "Inner scope - y: "
.align 2
label_5_str:
.asciiz "Outer scope after inner block - x: "
.align 2
label_6_str:
.asciiz "Outer scope after inner block - y: "
.align 2

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,0
li $t0,10
addi $t1,$t0,0
li $t0,20
addi $t0,$t0,0
la $t3,label_0_str
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
la $t3,label_1_str
addiu $t2,$sp,-4
sw $t3,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t3,label_2_str
addiu $t2,$sp,-4
sw $t3,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t3,label_1_str
addiu $t2,$sp,-4
sw $t3,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t2,30
addi $t3,$t2,0
li $t2,40
addi $t5,$t2,0
la $t2,label_3_str
addiu $t4,$sp,-4
sw $t2,0($t4)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$sp,-4
sw $t3,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t2,label_1_str
addiu $t3,$sp,-4
sw $t2,0($t3)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t2,label_4_str
addiu $t3,$sp,-4
sw $t2,0($t3)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$sp,-4
sw $t5,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t3,label_1_str
addiu $t2,$sp,-4
sw $t3,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t2,label_5_str
addiu $t3,$sp,-4
sw $t2,0($t3)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$sp,-4
sw $t1,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t2,label_1_str
addiu $t1,$sp,-4
sw $t2,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t1,label_6_str
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
la $t0,label_1_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
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

