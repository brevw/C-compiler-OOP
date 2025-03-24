.data
label_0_str:
.asciiz "Hello, "
.align 2
label_1_str:
.asciiz "World!"
.align 2
label_2_str:
.asciiz "\n"
.align 2

.text
concatenate:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,-12
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t3,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $t2,$fp,-16
li $t1,100
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal mcmalloc
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,8
sw $t0,0($t2)
addiu $t1,$fp,-8
li $t0,0
sw $t0,0($t1)
addiu $t0,$fp,-12
li $t1,0
sw $t1,0($t0)
addiu $t0,$fp,12
lw $t2,0($t0)
addiu $t0,$fp,-8
lw $t0,0($t0)
li $t1,1
mul $t0,$t0,$t1
add $t0,$t2,$t0
lb $t0,0($t0)
li $t1,0
xor $t0,$t0,$t1
sltu $t0,$zero,$t0
beqz $t0,label_5_next
label_7_body:
addiu $t0,$fp,-16
lw $t2,0($t0)
addiu $t0,$fp,-12
lw $t0,0($t0)
li $t1,1
mul $t0,$t0,$t1
add $t3,$t2,$t0
addiu $t0,$fp,12
lw $t2,0($t0)
addiu $t0,$fp,-8
lw $t0,0($t0)
li $t1,1
mul $t0,$t0,$t1
add $t0,$t2,$t0
lb $t0,0($t0)
sb $t0,0($t3)
addiu $t2,$fp,-8
addiu $t0,$fp,-8
lw $t0,0($t0)
li $t1,1
add $t0,$t0,$t1
sw $t0,0($t2)
addiu $t2,$fp,-12
addiu $t0,$fp,-12
lw $t1,0($t0)
li $t0,1
add $t0,$t1,$t0
sw $t0,0($t2)
label_6_posttest:
addiu $t0,$fp,12
lw $t2,0($t0)
addiu $t0,$fp,-8
lw $t0,0($t0)
li $t1,1
mul $t0,$t0,$t1
add $t0,$t2,$t0
lb $t0,0($t0)
li $t1,0
xor $t0,$t0,$t1
sltu $t0,$zero,$t0
bnez $t0,label_7_body
label_5_next:
addiu $t0,$fp,-8
li $t1,0
sw $t1,0($t0)
addiu $t0,$fp,8
lw $t2,0($t0)
addiu $t0,$fp,-8
lw $t0,0($t0)
li $t1,1
mul $t0,$t0,$t1
add $t0,$t2,$t0
lb $t1,0($t0)
li $t0,0
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_8_next
label_10_body:
addiu $t0,$fp,-16
lw $t2,0($t0)
addiu $t0,$fp,-12
lw $t0,0($t0)
li $t1,1
mul $t0,$t0,$t1
add $t3,$t2,$t0
addiu $t0,$fp,8
lw $t2,0($t0)
addiu $t0,$fp,-8
lw $t0,0($t0)
li $t1,1
mul $t0,$t0,$t1
add $t0,$t2,$t0
lb $t0,0($t0)
sb $t0,0($t3)
addiu $t2,$fp,-8
addiu $t0,$fp,-8
lw $t0,0($t0)
li $t1,1
add $t0,$t0,$t1
sw $t0,0($t2)
addiu $t2,$fp,-12
addiu $t0,$fp,-12
lw $t1,0($t0)
li $t0,1
add $t0,$t1,$t0
sw $t0,0($t2)
label_9_posttest:
addiu $t0,$fp,8
lw $t2,0($t0)
addiu $t0,$fp,-8
lw $t1,0($t0)
li $t0,1
mul $t1,$t1,$t0
add $t0,$t2,$t1
lb $t1,0($t0)
li $t0,0
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
bnez $t0,label_10_body
label_8_next:
addiu $t0,$fp,-16
lw $t2,0($t0)
addiu $t0,$fp,-12
lw $t1,0($t0)
li $t0,1
mul $t1,$t1,$t0
add $t1,$t2,$t1
li $t0,0
sb $t0,0($t1)
addiu $t0,$fp,-16
lw $t1,0($t0)
addi $t0,$fp,4
sw $t1,0($t0)
j concatenate_epilogue
concatenate_epilogue:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t3,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-12
addiu $t0,$fp,-4
la $t1,label_0_str
sw $t1,0($t0)
addiu $t0,$fp,-8
la $t1,label_1_str
sw $t1,0($t0)
addiu $t2,$fp,-12
addiu $t0,$fp,-4
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $t0,$fp,-8
lw $t0,0($t0)
addiu $t1,$sp,-8
sw $t0,0($t1)
addiu $sp,$sp,-8
addiu $sp,$sp,-4
jal concatenate
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,12
sw $t0,0($t2)
addiu $t0,$fp,-12
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,label_2_str
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

