.data
null:
.space 4
.align 2
label_1_str:
.asciiz " "
.align 2
label_2_str:
.asciiz "\n"
.align 2
label_3_str:
.asciiz "Original List: "
.align 2
label_4_str:
.asciiz "Sorted List: "
.align 2

.text
create_node:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,-4
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $t2,$fp,-8
li $t0,8
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal mcmalloc
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,8
sw $t0,0($t2)
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t1,$t0,0
addiu $t0,$fp,8
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t1,$t0,4
la $t0,null
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t0,$fp,-8
lw $t1,0($t0)
addi $t0,$fp,4
sw $t1,0($t0)
j create_node_epilogue
create_node_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
insert_end:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,-8
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $t2,$fp,-8
addiu $t0,$fp,4
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal create_node
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,8
sw $t0,0($t2)
addiu $t0,$fp,8
lw $t0,0($t0)
lw $t1,0($t0)
la $t0,null
lw $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_9_ELSE
addiu $t0,$fp,8
lw $t1,0($t0)
addiu $t0,$fp,-8
lw $t0,0($t0)
sw $t0,0($t1)
j label_10_END
label_9_ELSE:
addiu $t1,$fp,-12
addiu $t0,$fp,8
lw $t0,0($t0)
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t0,$fp,-12
lw $t0,0($t0)
addi $t0,$t0,4
lw $t1,0($t0)
la $t0,null
lw $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_11_next
label_13_body:
addiu $t1,$fp,-12
addiu $t0,$fp,-12
lw $t0,0($t0)
addi $t0,$t0,4
lw $t0,0($t0)
sw $t0,0($t1)
label_12_posttest:
addiu $t0,$fp,-12
lw $t0,0($t0)
addi $t0,$t0,4
lw $t1,0($t0)
la $t0,null
lw $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
bnez $t0,label_13_body
label_11_next:
addiu $t0,$fp,-12
lw $t0,0($t0)
addi $t1,$t0,4
addiu $t0,$fp,-8
lw $t0,0($t0)
sw $t0,0($t1)
label_10_END:
insert_end_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
print_list:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,-4
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $t1,$fp,-8
addiu $t0,$fp,4
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t0,$fp,-8
lw $t1,0($t0)
la $t0,null
lw $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_16_next
label_18_body:
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t0,$t0,0
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
addiu $t1,$fp,-8
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t0,$t0,4
lw $t0,0($t0)
sw $t0,0($t1)
label_17_posttest:
addiu $t0,$fp,-8
lw $t1,0($t0)
la $t0,null
lw $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
bnez $t0,label_18_body
label_16_next:
la $t1,label_2_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
print_list_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
sort_list:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-16
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $t0,$fp,4
lw $t0,0($t0)
lw $t1,0($t0)
la $t0,null
lw $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
bne $t0,$zero,label_24_
addiu $t0,$fp,4
lw $t0,0($t0)
lw $t0,0($t0)
addi $t0,$t0,4
lw $t1,0($t0)
la $t0,null
lw $t0,0($t0)
xor $t0,$t1,$t0
sltiu $t0,$t0,1
bne $t0,$zero,label_24_
li $t0,0
j label_25_
label_24_:
li $t0,1
label_25_:
beqz $t0,label_23_END
j sort_list_epilogue
label_23_END:
addiu $t1,$fp,-12
la $t0,null
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t1,$fp,-4
li $t0,1
sw $t0,0($t1)
addiu $t0,$fp,-4
lw $t0,0($t0)
beqz $t0,label_27_next
label_29_body:
addiu $t1,$fp,-4
li $t0,0
sw $t0,0($t1)
addiu $t1,$fp,-8
addiu $t0,$fp,4
lw $t0,0($t0)
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t0,$t0,4
lw $t1,0($t0)
addiu $t0,$fp,-12
lw $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
beqz $t0,label_30_next
label_32_body:
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t0,$t0,0
lw $t1,0($t0)
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t0,$t0,4
lw $t0,0($t0)
addi $t0,$t0,0
lw $t0,0($t0)
slt $t0,$t0,$t1
beqz $t0,label_33_END
addiu $t1,$fp,-16
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t0,$t0,0
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t1,$t0,0
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t0,$t0,4
lw $t0,0($t0)
addi $t0,$t0,0
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t0,$t0,4
lw $t0,0($t0)
addi $t1,$t0,0
addiu $t0,$fp,-16
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t1,$fp,-4
li $t0,1
sw $t0,0($t1)
label_33_END:
addiu $t1,$fp,-8
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t0,$t0,4
lw $t0,0($t0)
sw $t0,0($t1)
label_31_posttest:
addiu $t0,$fp,-8
lw $t0,0($t0)
addi $t0,$t0,4
lw $t1,0($t0)
addiu $t0,$fp,-12
lw $t0,0($t0)
xor $t0,$t1,$t0
sltu $t0,$zero,$t0
bnez $t0,label_32_body
label_30_next:
addiu $t1,$fp,-12
addiu $t0,$fp,-8
lw $t0,0($t0)
sw $t0,0($t1)
label_28_posttest:
addiu $t0,$fp,-4
lw $t0,0($t0)
bnez $t0,label_29_body
label_27_next:
sort_list_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-4
la $t2,null
li $t0,1
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal mcmalloc
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,8
sw $t0,0($t2)
addiu $t1,$fp,-4
la $t0,null
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t1,$fp,-4
addiu $t0,$sp,-4
sw $t1,0($t0)
li $t0,5
addiu $t1,$sp,-8
sw $t0,0($t1)
addiu $sp,$sp,-8
jal insert_end
addiu $sp,$sp,8
addiu $t1,$fp,-4
addiu $t0,$sp,-4
sw $t1,0($t0)
li $t1,3
addiu $t0,$sp,-8
sw $t1,0($t0)
addiu $sp,$sp,-8
jal insert_end
addiu $sp,$sp,8
addiu $t0,$fp,-4
addiu $t1,$sp,-4
sw $t0,0($t1)
li $t1,8
addiu $t0,$sp,-8
sw $t1,0($t0)
addiu $sp,$sp,-8
jal insert_end
addiu $sp,$sp,8
addiu $t1,$fp,-4
addiu $t0,$sp,-4
sw $t1,0($t0)
li $t0,1
addiu $t1,$sp,-8
sw $t0,0($t1)
addiu $sp,$sp,-8
jal insert_end
addiu $sp,$sp,8
addiu $t0,$fp,-4
addiu $t1,$sp,-4
sw $t0,0($t1)
li $t1,6
addiu $t0,$sp,-8
sw $t1,0($t0)
addiu $sp,$sp,-8
jal insert_end
addiu $sp,$sp,8
la $t0,label_3_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,-4
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_list
addiu $sp,$sp,4
addiu $t1,$fp,-4
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal sort_list
addiu $sp,$sp,4
la $t1,label_4_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,-4
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_list
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

