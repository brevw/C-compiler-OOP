.data
label_0_str:
.asciiz "First "
.align 2
label_1_str:
.asciiz " terms of Fibonacci series are : "
.align 2
label_2_str:
.asciiz " "
.align 2
# Allocated labels for virtual registers

.text
.globl main
main:
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-24
addiu $sp,$sp,-24
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
# Original instruction: li v4,0
li $t1,0
# Original instruction: sw v4,0(v3)
sw $t1,0($t0)
# Original instruction: addiu v5,$fp,-12
addiu $t0,$fp,-12
# Original instruction: li v6,1
li $t1,1
# Original instruction: sw v6,0(v5)
sw $t1,0($t0)
# Original instruction: la v7,label_0_str
la $t1,label_0_str
# Original instruction: addiu v8,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v7,0(v8)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v9,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v10,0(v9)
lw $t1,0($t0)
# Original instruction: addiu v11,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v10,0(v11)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v12,label_1_str
la $t1,label_1_str
# Original instruction: addiu v13,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v12,0(v13)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v14,$fp,-20
addiu $t1,$fp,-20
# Original instruction: li v15,0
li $t0,0
# Original instruction: sw v15,0(v14)
sw $t0,0($t1)
# Original instruction: addiu v16,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lw v17,0(v16)
lw $t1,0($t0)
# Original instruction: addiu v18,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v19,0(v18)
lw $t0,0($t0)
# Original instruction: slt v20,v17,v19
slt $t0,$t1,$t0
# Original instruction: beqz v20,label_7_next
beqz $t0,label_7_next
label_9_body:
# Original instruction: addiu v21,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lw v22,0(v21)
lw $t1,0($t0)
# Original instruction: li v23,1
li $t0,1
# Original instruction: slt v24,v23,v22
slt $t0,$t0,$t1
# Original instruction: xori v24,v24,1
xori $t0,$t0,1
# Original instruction: beqz v24,label_10_ELSE
beqz $t0,label_10_ELSE
# Original instruction: addiu v25,$fp,-16
addiu $t1,$fp,-16
# Original instruction: addiu v26,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lw v27,0(v26)
lw $t0,0($t0)
# Original instruction: sw v27,0(v25)
sw $t0,0($t1)
# Original instruction: j label_11_END
j label_11_END
label_10_ELSE:
# Original instruction: addiu v28,$fp,-16
addiu $t2,$fp,-16
# Original instruction: addiu v29,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v30,0(v29)
lw $t1,0($t0)
# Original instruction: addiu v31,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v32,0(v31)
lw $t0,0($t0)
# Original instruction: add v33,v30,v32
add $t0,$t1,$t0
# Original instruction: sw v33,0(v28)
sw $t0,0($t2)
# Original instruction: addiu v34,$fp,-8
addiu $t1,$fp,-8
# Original instruction: addiu v35,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v36,0(v35)
lw $t0,0($t0)
# Original instruction: sw v36,0(v34)
sw $t0,0($t1)
# Original instruction: addiu v37,$fp,-12
addiu $t1,$fp,-12
# Original instruction: addiu v38,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v39,0(v38)
lw $t0,0($t0)
# Original instruction: sw v39,0(v37)
sw $t0,0($t1)
label_11_END:
# Original instruction: addiu v40,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v41,0(v40)
lw $t0,0($t0)
# Original instruction: addiu v42,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v41,0(v42)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v43,label_2_str
la $t0,label_2_str
# Original instruction: addiu v44,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v43,0(v44)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v45,$fp,-20
addiu $t2,$fp,-20
# Original instruction: addiu v46,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lw v47,0(v46)
lw $t1,0($t0)
# Original instruction: li v48,1
li $t0,1
# Original instruction: add v49,v47,v48
add $t0,$t1,$t0
# Original instruction: sw v49,0(v45)
sw $t0,0($t2)
label_8_posttest:
# Original instruction: addiu v50,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lw v51,0(v50)
lw $t1,0($t0)
# Original instruction: addiu v52,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v53,0(v52)
lw $t0,0($t0)
# Original instruction: slt v54,v51,v53
slt $t0,$t1,$t0
# Original instruction: bnez v54,label_9_body
bnez $t0,label_9_body
label_7_next:
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

