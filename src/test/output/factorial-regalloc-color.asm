.data
label_0_str:
.asciiz "Factorial of "
.align 2
label_1_str:
.asciiz " is: "
.align 2
label_2_str:
.asciiz "\n"
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
addi $t3,$t0,0
li $t0,1
addi $t2,$t0,0
la $t1,label_0_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
sw $t3,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_1_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,1
addi $t1,$t0,0
slt $t0,$t3,$t1
xori $t0,$t0,1
beqz $t0,label_7_next
label_9_body:
mul $t0,$t2,$t1
addi $t2,$t0,0
li $t0,1
add $t0,$t1,$t0
addi $t1,$t0,0
label_8_posttest:
slt $t0,$t3,$t1
xori $t0,$t0,1
bnez $t0,label_9_body
label_7_next:
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_2_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
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

