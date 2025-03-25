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
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t3,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t4,0($sp)
addiu $sp,$sp,-4
sw $t5,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
li $t1,100
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal mcmalloc
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,8
addi $t1,$t0,0
li $t0,0
addi $t3,$t0,0
li $t0,0
addi $t2,$t0,0
addiu $t0,$fp,12
lw $t4,0($t0)
li $t0,1
mul $t0,$t3,$t0
add $t0,$t0,$t4
lb $t0,0($t0)
li $t4,0
xor $t0,$t0,$t4
sltu $t0,$zero,$t0
beqz $t0,label_5_next
label_7_body:
li $t0,1
mul $t5,$t2,$t0
add $t5,$t5,$t1
addiu $t0,$fp,12
lw $t4,0($t0)
li $t0,1
mul $t0,$t3,$t0
add $t0,$t0,$t4
lb $t0,0($t0)
sb $t0,0($t5)
li $t0,1
add $t0,$t3,$t0
addi $t3,$t0,0
li $t0,1
add $t0,$t2,$t0
addi $t2,$t0,0
label_6_posttest:
addiu $t0,$fp,12
lw $t4,0($t0)
li $t0,1
mul $t0,$t3,$t0
add $t0,$t0,$t4
lb $t4,0($t0)
li $t0,0
xor $t0,$t4,$t0
sltu $t0,$zero,$t0
bnez $t0,label_7_body
label_5_next:
li $t0,0
addi $t3,$t0,0
addiu $t0,$fp,8
lw $t4,0($t0)
li $t0,1
mul $t0,$t3,$t0
add $t0,$t0,$t4
lb $t0,0($t0)
li $t4,0
xor $t0,$t0,$t4
sltu $t0,$zero,$t0
beqz $t0,label_8_next
label_10_body:
li $t0,1
mul $t5,$t2,$t0
add $t5,$t5,$t1
addiu $t0,$fp,8
lw $t4,0($t0)
li $t0,1
mul $t0,$t3,$t0
add $t0,$t0,$t4
lb $t0,0($t0)
sb $t0,0($t5)
li $t0,1
add $t0,$t3,$t0
addi $t3,$t0,0
li $t0,1
add $t0,$t2,$t0
addi $t2,$t0,0
label_9_posttest:
addiu $t0,$fp,8
lw $t4,0($t0)
li $t0,1
mul $t0,$t3,$t0
add $t0,$t0,$t4
lb $t4,0($t0)
li $t0,0
xor $t0,$t4,$t0
sltu $t0,$zero,$t0
bnez $t0,label_10_body
label_8_next:
li $t0,1
mul $t0,$t2,$t0
add $t0,$t0,$t1
li $t2,0
sb $t2,0($t0)
addi $t0,$fp,4
sw $t1,0($t0)
j concatenate_epilogue
concatenate_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t5,0($sp)
addiu $sp,$sp,4
lw $t4,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t3,0($sp)
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
addiu $sp,$sp,0
la $t0,label_0_str
addi $t1,$t0,0
la $t0,label_1_str
addi $t2,$t0,0
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $t0,$sp,-8
sw $t2,0($t0)
addiu $sp,$sp,-8
addiu $sp,$sp,-4
jal concatenate
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,12
addi $t1,$t0,0
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t1,label_2_str
addiu $t0,$sp,-4
sw $t1,0($t0)
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

