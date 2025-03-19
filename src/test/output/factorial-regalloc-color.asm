.data
label_0_str:
.asciiz "Factorial of "
.align 2
label_1_str:
.asciiz " is: "
.align 2
label_2_str:
.asciiz "\n"
.align 2
# Allocated labels for virtual registers

.text
.globl main
main:
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: addiu v0,$fp,-4
addiu $t1,$fp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: addi v1,$sp,0
addi $t0,$sp,0
# Original instruction: lw v2,0(v1)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sw v2,0(v0)
sw $t0,0($t1)
# Original instruction: addiu v3,$fp,-8
addiu $t0,$fp,-8
# Original instruction: li v4,1
li $t1,1
# Original instruction: sw v4,0(v3)
sw $t1,0($t0)
# Original instruction: la v5,label_0_str
la $t0,label_0_str
# Original instruction: addiu v6,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v5,0(v6)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v7,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v8,0(v7)
lw $t1,0($t0)
# Original instruction: addiu v9,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v8,0(v9)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v10,label_1_str
la $t0,label_1_str
# Original instruction: addiu v11,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v10,0(v11)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v12,$fp,-12
addiu $t1,$fp,-12
# Original instruction: li v13,1
li $t0,1
# Original instruction: sw v13,0(v12)
sw $t0,0($t1)
# Original instruction: addiu v14,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v15,0(v14)
lw $t1,0($t0)
# Original instruction: addiu v16,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v17,0(v16)
lw $t0,0($t0)
# Original instruction: slt v18,v17,v15
slt $t0,$t0,$t1
# Original instruction: xori v18,v18,1
xori $t0,$t0,1
# Original instruction: beqz v18,label_7_next
beqz $t0,label_7_next
label_9_body:
# Original instruction: addiu v19,$fp,-8
addiu $t2,$fp,-8
# Original instruction: addiu v20,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v21,0(v20)
lw $t1,0($t0)
# Original instruction: addiu v22,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v23,0(v22)
lw $t0,0($t0)
# Original instruction: mul v24,v21,v23
mul $t0,$t1,$t0
# Original instruction: sw v24,0(v19)
sw $t0,0($t2)
# Original instruction: addiu v25,$fp,-12
addiu $t2,$fp,-12
# Original instruction: addiu v26,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v27,0(v26)
lw $t0,0($t0)
# Original instruction: li v28,1
li $t1,1
# Original instruction: add v29,v27,v28
add $t0,$t0,$t1
# Original instruction: sw v29,0(v25)
sw $t0,0($t2)
label_8_posttest:
# Original instruction: addiu v30,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v31,0(v30)
lw $t1,0($t0)
# Original instruction: addiu v32,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v33,0(v32)
lw $t0,0($t0)
# Original instruction: slt v34,v33,v31
slt $t0,$t0,$t1
# Original instruction: xori v34,v34,1
xori $t0,$t0,1
# Original instruction: bnez v34,label_9_body
bnez $t0,label_9_body
label_7_next:
# Original instruction: addiu v35,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v36,0(v35)
lw $t0,0($t0)
# Original instruction: addiu v37,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v36,0(v37)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v38,label_2_str
la $t1,label_2_str
# Original instruction: addiu v39,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v38,0(v39)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
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

