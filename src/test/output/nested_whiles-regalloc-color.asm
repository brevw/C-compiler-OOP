.data
# Allocated labels for virtual registers

.text
.globl main
main:
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addiu v0,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v1,0
li $t0,0
# Original instruction: sw v1,0(v0)
sw $t0,0($t1)
# Original instruction: addiu v2,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v3,0(v2)
lw $t0,0($t0)
# Original instruction: li v4,10
li $t1,10
# Original instruction: slt v5,v3,v4
slt $t0,$t0,$t1
# Original instruction: beqz v5,label_1_next
beqz $t0,label_1_next
label_3_body:
# Original instruction: addiu v6,$fp,-8
addiu $t1,$fp,-8
# Original instruction: li v7,0
li $t0,0
# Original instruction: sw v7,0(v6)
sw $t0,0($t1)
# Original instruction: addiu v8,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v9,0(v8)
lw $t0,0($t0)
# Original instruction: li v10,10
li $t1,10
# Original instruction: slt v11,v9,v10
slt $t0,$t0,$t1
# Original instruction: beqz v11,label_4_next
beqz $t0,label_4_next
label_6_body:
# Original instruction: addiu v12,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v13,0(v12)
lw $t0,0($t0)
# Original instruction: li v14,5
li $t1,5
# Original instruction: xor v15,v13,v14
xor $t0,$t0,$t1
# Original instruction: sltiu v15,v15,1
sltiu $t0,$t0,1
# Original instruction: beqz v15,label_7_END
beqz $t0,label_7_END
# Original instruction: j label_4_next
j label_4_next
label_7_END:
# Original instruction: addiu v16,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v17,0(v16)
lw $t1,0($t0)
# Original instruction: addiu v18,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v17,0(v18)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v19,$fp,-8
addiu $t2,$fp,-8
# Original instruction: addiu v20,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v21,0(v20)
lw $t1,0($t0)
# Original instruction: li v22,1
li $t0,1
# Original instruction: add v23,v21,v22
add $t0,$t1,$t0
# Original instruction: sw v23,0(v19)
sw $t0,0($t2)
label_5_posttest:
# Original instruction: addiu v24,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v25,0(v24)
lw $t0,0($t0)
# Original instruction: li v26,10
li $t1,10
# Original instruction: slt v27,v25,v26
slt $t0,$t0,$t1
# Original instruction: bnez v27,label_6_body
bnez $t0,label_6_body
label_4_next:
# Original instruction: addiu v28,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v29,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v30,0(v29)
lw $t0,0($t0)
# Original instruction: li v31,1
li $t1,1
# Original instruction: add v32,v30,v31
add $t0,$t0,$t1
# Original instruction: sw v32,0(v28)
sw $t0,0($t2)
label_2_posttest:
# Original instruction: addiu v33,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v34,0(v33)
lw $t0,0($t0)
# Original instruction: li v35,10
li $t1,10
# Original instruction: slt v36,v34,v35
slt $t0,$t0,$t1
# Original instruction: bnez v36,label_3_body
bnez $t0,label_3_body
label_1_next:
main_epilogue:
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

.text
print_s:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: syscall
syscall
print_s_epilogue:
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
print_i:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: syscall
syscall
print_i_epilogue:
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
print_c:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: syscall
syscall
print_c_epilogue:
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
read_c:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
# Original instruction: li $v0,12
li $v0,12
# Original instruction: syscall
syscall
# Original instruction: sw $v0,4($fp)
sw $v0,4($fp)
read_c_epilogue:
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
read_i:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
# Original instruction: li $v0,5
li $v0,5
# Original instruction: syscall
syscall
# Original instruction: sw $v0,4($fp)
sw $v0,4($fp)
read_i_epilogue:
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
mcmalloc:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
# Original instruction: lw $a0,8($fp)
lw $a0,8($fp)
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: sw $v0,4($fp)
sw $v0,4($fp)
mcmalloc_epilogue:
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

