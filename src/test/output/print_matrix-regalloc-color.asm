.data
label_0_str:
.asciiz " "
.align 2
label_1_str:
.asciiz "\n"
.align 2

.text
print_2d_array:
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
sw $t3,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
li $t0,0
addi $t1,$t0,0
addiu $t0,$fp,8
lw $t0,0($t0)
slt $t0,$t1,$t0
beqz $t0,label_3_next
label_5_body:
li $t0,0
addi $t4,$t0,0
addiu $t0,$fp,4
lw $t0,0($t0)
slt $t0,$t4,$t0
beqz $t0,label_6_next
label_8_body:
addiu $t2,$fp,12
lw $t2,0($t2)
li $t0,12
mul $t3,$t1,$t0
add $t3,$t3,$t2
li $t0,4
mul $t0,$t4,$t0
add $t0,$t0,$t3
lw $t0,0($t0)
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_0_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,1
add $t0,$t4,$t0
addi $t4,$t0,0
label_7_posttest:
addiu $t0,$fp,4
lw $t0,0($t0)
slt $t0,$t4,$t0
bnez $t0,label_8_body
label_6_next:
la $t2,label_1_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,1
add $t0,$t1,$t0
addi $t1,$t0,0
label_4_posttest:
addiu $t0,$fp,8
lw $t0,0($t0)
slt $t0,$t1,$t0
bnez $t0,label_5_body
label_3_next:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t3,0($sp)
addiu $sp,$sp,4
lw $t4,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-36
addiu $t1,$fp,-36
li $t2,0
li $t0,12
mul $t2,$t2,$t0
add $t2,$t2,$t1
li $t1,0
li $t0,4
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,1
sw $t1,0($t0)
addiu $t2,$fp,-36
li $t0,0
li $t1,12
mul $t3,$t0,$t1
add $t3,$t3,$t2
li $t0,1
li $t1,4
mul $t0,$t0,$t1
add $t0,$t0,$t3
li $t1,2
sw $t1,0($t0)
addiu $t0,$fp,-36
li $t1,0
li $t2,12
mul $t2,$t1,$t2
add $t2,$t2,$t0
li $t1,2
li $t0,4
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,3
sw $t0,0($t1)
addiu $t2,$fp,-36
li $t0,1
li $t1,12
mul $t3,$t0,$t1
add $t3,$t3,$t2
li $t0,0
li $t1,4
mul $t0,$t0,$t1
add $t0,$t0,$t3
li $t1,4
sw $t1,0($t0)
addiu $t2,$fp,-36
li $t1,1
li $t0,12
mul $t3,$t1,$t0
add $t3,$t3,$t2
li $t1,1
li $t0,4
mul $t0,$t1,$t0
add $t0,$t0,$t3
li $t1,5
sw $t1,0($t0)
addiu $t2,$fp,-36
li $t1,1
li $t0,12
mul $t3,$t1,$t0
add $t3,$t3,$t2
li $t0,2
li $t1,4
mul $t0,$t0,$t1
add $t0,$t0,$t3
li $t1,6
sw $t1,0($t0)
addiu $t1,$fp,-36
li $t2,2
li $t0,12
mul $t2,$t2,$t0
add $t2,$t2,$t1
li $t0,0
li $t1,4
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,7
sw $t0,0($t1)
addiu $t0,$fp,-36
li $t2,2
li $t1,12
mul $t2,$t2,$t1
add $t2,$t2,$t0
li $t0,1
li $t1,4
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,8
sw $t0,0($t1)
addiu $t0,$fp,-36
li $t1,2
li $t2,12
mul $t2,$t1,$t2
add $t2,$t2,$t0
li $t0,2
li $t1,4
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,9
sw $t0,0($t1)
addiu $t1,$fp,-36
addiu $t0,$sp,-4
sw $t1,0($t0)
li $t1,3
addiu $t0,$sp,-8
sw $t1,0($t0)
li $t0,3
addiu $t1,$sp,-12
sw $t0,0($t1)
addiu $sp,$sp,-12
jal print_2d_array
addiu $sp,$sp,12
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

