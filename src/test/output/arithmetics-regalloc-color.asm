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
addiu $t0,$fp,-4
# Original instruction: li v1,0
li $t1,0
# Original instruction: sw v1,0(v0)
sw $t1,0($t0)
# Original instruction: addiu v2,$fp,-8
addiu $t0,$fp,-8
# Original instruction: li v3,0
li $t1,0
# Original instruction: sw v3,0(v2)
sw $t1,0($t0)
# Original instruction: addiu v4,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v5,0(v4)
lw $t0,0($t0)
# Original instruction: li v6,10
li $t1,10
# Original instruction: slt v7,v5,v6
slt $t0,$t0,$t1
# Original instruction: beqz v7,label_1_next
beqz $t0,label_1_next
label_3_body:
# Original instruction: addiu v8,$fp,-8
addiu $t2,$fp,-8
# Original instruction: addiu v9,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v10,0(v9)
lw $t1,0($t0)
# Original instruction: addiu v11,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v12,0(v11)
lw $t0,0($t0)
# Original instruction: add v13,v10,v12
add $t0,$t1,$t0
# Original instruction: sw v13,0(v8)
sw $t0,0($t2)
# Original instruction: addiu v14,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v15,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v16,0(v15)
lw $t0,0($t0)
# Original instruction: li v17,1
li $t1,1
# Original instruction: add v18,v16,v17
add $t0,$t0,$t1
# Original instruction: sw v18,0(v14)
sw $t0,0($t2)
label_2_posttest:
# Original instruction: addiu v19,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v20,0(v19)
lw $t0,0($t0)
# Original instruction: li v21,10
li $t1,10
# Original instruction: slt v22,v20,v21
slt $t0,$t0,$t1
# Original instruction: bnez v22,label_3_body
bnez $t0,label_3_body
label_1_next:
# Original instruction: li v23,2
li $t1,2
# Original instruction: addiu v24,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v25,0(v24)
lw $t0,0($t0)
# Original instruction: mul v26,v23,v25
mul $t0,$t1,$t0
# Original instruction: addiu v27,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v26,0(v27)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
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

