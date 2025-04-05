.data
label_0_str:
.asciiz "Not found\n"
.align 2
label_1_str:
.asciiz "Found at index "
.align 2
label_2_str:
.asciiz "\n"
.align 2

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-40
li $t0,0
addi $t1,$t0,0
li $t0,10
slt $t0,$t1,$t0
beqz $t0,label_4_next
label_6_body:
addiu $t2,$fp,-40
li $t0,4
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t2,1
add $t2,$t1,$t2
sw $t2,0($t0)
li $t0,1
add $t0,$t1,$t0
addi $t1,$t0,0
label_5_posttest:
li $t0,10
slt $t0,$t1,$t0
bnez $t0,label_6_body
label_4_next:
addiu $sp,$sp,-4
jal read_i
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,4
addi $t0,$t0,0
addiu $t1,$fp,-40
addiu $t2,$sp,-4
sw $t1,0($t2)
addiu $t1,$sp,-8
sw $t0,0($t1)
addiu $sp,$sp,-8
addiu $sp,$sp,-4
jal binary_search
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,12
addi $t2,$t0,0
li $t1,0
li $t0,1
sub $t0,$t1,$t0
xor $t0,$t2,$t0
sltiu $t0,$t0,1
beqz $t0,label_9_ELSE
la $t1,label_0_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
j label_10_END
label_9_ELSE:
la $t0,label_1_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
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
label_10_END:
li $v0,10
syscall

.text
binary_search:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t5,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t3,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t4,0($sp)
li $t0,0
addi $t1,$t0,0
li $t0,9
addi $t3,$t0,0
li $t0,0
li $t2,1
sub $t0,$t0,$t2
addi $t2,$t0,0
slt $t0,$t3,$t1
xori $t0,$t0,1
beqz $t0,label_14_next
label_16_body:
add $t4,$t1,$t3
li $t0,2
div $t4,$t0
mflo $t0
addi $t0,$t0,0
addiu $t5,$fp,12
lw $t5,0($t5)
li $t4,4
mul $t4,$t0,$t4
add $t4,$t4,$t5
lw $t5,0($t4)
addiu $t4,$fp,8
lw $t4,0($t4)
xor $t4,$t5,$t4
sltiu $t4,$t4,1
beqz $t4,label_17_ELSE
addi $t2,$t0,0
j label_14_next
j label_20_END
label_17_ELSE:
addiu $t4,$fp,12
lw $t4,0($t4)
li $t5,4
mul $t5,$t0,$t5
add $t5,$t5,$t4
lw $t5,0($t5)
addiu $t4,$fp,8
lw $t4,0($t4)
slt $t4,$t5,$t4
beqz $t4,label_19_ELSE
li $t1,1
add $t1,$t0,$t1
addi $t1,$t1,0
j label_20_END
label_19_ELSE:
li $t3,1
sub $t0,$t0,$t3
addi $t3,$t0,0
label_20_END:
slt $t0,$t3,$t1
xori $t0,$t0,1
bnez $t0,label_16_body
label_14_next:
addi $t0,$fp,4
sw $t2,0($t0)
j binary_search_epilogue
binary_search_epilogue:
# Original instruction: popRegisters
lw $t4,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t3,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t5,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

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

