.data

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-132
addiu $sp,$sp,-4
jal read_i
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,4
addi $t1,$t0,0
li $t0,0
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_2_END
li $t2,0
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
j main_epilogue
label_2_END:
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $t1,$fp,-128
addiu $t0,$sp,-8
sw $t1,0($t0)
addiu $t1,$fp,-132
addiu $t0,$sp,-12
sw $t1,0($t0)
addiu $sp,$sp,-12
jal convert_to_binary
addiu $sp,$sp,12
addiu $t1,$fp,-128
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $t0,$fp,-132
lw $t0,0($t0)
addiu $t1,$sp,-8
sw $t0,0($t1)
addiu $sp,$sp,-8
jal print_binary
addiu $sp,$sp,8
main_epilogue:
li $v0,10
syscall

.text
convert_to_binary:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t3,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $t0,$fp,4
lw $t1,0($t0)
li $t0,0
sw $t0,0($t1)
addiu $t0,$fp,12
lw $t0,0($t0)
li $t1,0
slt $t0,$t1,$t0
beqz $t0,label_7_next
label_9_body:
addiu $t0,$fp,12
lw $t0,0($t0)
li $t1,2
div $t0,$t1
mfhi $t0
addi $t2,$t0,0
addiu $t0,$fp,8
lw $t0,0($t0)
addiu $t1,$fp,4
lw $t1,0($t1)
lw $t3,0($t1)
li $t1,4
mul $t1,$t3,$t1
add $t1,$t1,$t0
sw $t2,0($t1)
addiu $t0,$fp,12
addiu $t1,$fp,12
lw $t1,0($t1)
li $t2,2
div $t1,$t2
mflo $t1
sw $t1,0($t0)
addiu $t0,$fp,4
lw $t2,0($t0)
addiu $t0,$fp,4
lw $t0,0($t0)
lw $t0,0($t0)
li $t1,1
add $t0,$t0,$t1
sw $t0,0($t2)
label_8_posttest:
addiu $t0,$fp,12
lw $t1,0($t0)
li $t0,0
slt $t0,$t0,$t1
bnez $t0,label_9_body
label_7_next:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t3,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
print_binary:
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
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $t0,$fp,4
lw $t1,0($t0)
li $t0,1
sub $t0,$t1,$t0
addi $t0,$t0,0
li $t1,0
slt $t1,$t0,$t1
xori $t1,$t1,1
beqz $t1,label_11_next
label_13_body:
addiu $t2,$fp,8
lw $t2,0($t2)
li $t1,4
mul $t1,$t0,$t1
add $t1,$t1,$t2
lw $t2,0($t1)
addiu $t1,$sp,-4
sw $t2,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t1,1
sub $t0,$t0,$t1
addi $t0,$t0,0
label_12_posttest:
li $t1,0
slt $t1,$t0,$t1
xori $t1,$t1,1
bnez $t1,label_13_body
label_11_next:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
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

