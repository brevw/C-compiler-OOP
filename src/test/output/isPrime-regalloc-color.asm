.data
n:
.space 4
.align 2
label_1_str:
.asciiz "Prime\n"
.align 2
label_2_str:
.asciiz "Not Prime\n"
.align 2

.text
is_prime:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $t0,$fp,8
lw $t1,0($t0)
li $t0,2
slt $t0,$t1,$t0
beqz $t0,label_4_END
li $t0,0
addi $t1,$fp,4
sw $t0,0($t1)
j is_prime_epilogue
label_4_END:
li $t0,2
addi $t0,$t0,0
addiu $t1,$fp,8
lw $t2,0($t1)
li $t1,2
div $t2,$t1
mflo $t1
slt $t1,$t1,$t0
xori $t1,$t1,1
beqz $t1,label_6_next
label_8_body:
addiu $t1,$fp,8
lw $t1,0($t1)
div $t1,$t0
mfhi $t2
li $t1,0
xor $t1,$t2,$t1
sltiu $t1,$t1,1
beqz $t1,label_9_END
li $t2,0
addi $t1,$fp,4
sw $t2,0($t1)
j is_prime_epilogue
label_9_END:
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_7_posttest:
addiu $t1,$fp,8
lw $t2,0($t1)
li $t1,2
div $t2,$t1
mflo $t1
slt $t1,$t1,$t0
xori $t1,$t1,1
bnez $t1,label_8_body
label_6_next:
li $t0,1
addi $t1,$fp,4
sw $t0,0($t1)
j is_prime_epilogue
is_prime_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,0
la $t1,n
addiu $sp,$sp,-4
jal read_i
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,4
sw $t0,0($t1)
la $t0,n
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal is_prime
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,8
addi $t0,$t0,0
li $t1,1
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_12_ELSE
la $t1,label_1_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
j label_13_END
label_12_ELSE:
la $t1,label_2_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_13_END:
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

