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
addiu $sp,$sp,-24
addiu $t1,$fp,-4
addiu $sp,$sp,-4
jal read_i
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,4
sw $t0,0($t1)
addiu $t0,$fp,-8
li $t1,0
sw $t1,0($t0)
addiu $t0,$fp,-12
li $t1,1
sw $t1,0($t0)
la $t1,label_0_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,-4
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t1,label_1_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t1,$fp,-20
li $t0,0
sw $t0,0($t1)
addiu $t0,$fp,-20
lw $t1,0($t0)
addiu $t0,$fp,-4
lw $t0,0($t0)
slt $t0,$t1,$t0
beqz $t0,label_7_next
label_9_body:
addiu $t0,$fp,-20
lw $t1,0($t0)
li $t0,1
slt $t0,$t0,$t1
xori $t0,$t0,1
beqz $t0,label_10_ELSE
addiu $t1,$fp,-16
addiu $t0,$fp,-20
lw $t0,0($t0)
sw $t0,0($t1)
j label_11_END
label_10_ELSE:
addiu $t2,$fp,-16
addiu $t0,$fp,-8
lw $t1,0($t0)
addiu $t0,$fp,-12
lw $t0,0($t0)
add $t0,$t1,$t0
sw $t0,0($t2)
addiu $t1,$fp,-8
addiu $t0,$fp,-12
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t1,$fp,-12
addiu $t0,$fp,-16
lw $t0,0($t0)
sw $t0,0($t1)
label_11_END:
addiu $t0,$fp,-16
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_2_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$fp,-20
addiu $t0,$fp,-20
lw $t1,0($t0)
li $t0,1
add $t0,$t1,$t0
sw $t0,0($t2)
label_8_posttest:
addiu $t0,$fp,-20
lw $t1,0($t0)
addiu $t0,$fp,-4
lw $t0,0($t0)
slt $t0,$t1,$t0
bnez $t0,label_9_body
label_7_next:
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

