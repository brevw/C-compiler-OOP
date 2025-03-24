.data

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-8
addiu $t1,$fp,-4
li $t0,0
sw $t0,0($t1)
addiu $t0,$fp,-4
lw $t0,0($t0)
li $t1,10
slt $t0,$t0,$t1
beqz $t0,label_1_next
label_3_body:
addiu $t1,$fp,-8
li $t0,0
sw $t0,0($t1)
addiu $t0,$fp,-8
lw $t0,0($t0)
li $t1,10
slt $t0,$t0,$t1
beqz $t0,label_4_next
label_6_body:
addiu $t0,$fp,-8
lw $t0,0($t0)
li $t1,5
xor $t0,$t0,$t1
sltiu $t0,$t0,1
beqz $t0,label_7_END
j label_4_next
label_7_END:
addiu $t0,$fp,-8
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
addiu $t2,$fp,-8
addiu $t0,$fp,-8
lw $t1,0($t0)
li $t0,1
add $t0,$t1,$t0
sw $t0,0($t2)
label_5_posttest:
addiu $t0,$fp,-8
lw $t0,0($t0)
li $t1,10
slt $t0,$t0,$t1
bnez $t0,label_6_body
label_4_next:
addiu $t2,$fp,-4
addiu $t0,$fp,-4
lw $t0,0($t0)
li $t1,1
add $t0,$t0,$t1
sw $t0,0($t2)
label_2_posttest:
addiu $t0,$fp,-4
lw $t0,0($t0)
li $t1,10
slt $t0,$t0,$t1
bnez $t0,label_3_body
label_1_next:
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

