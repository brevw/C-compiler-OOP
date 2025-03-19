.data
label_0_str:
.asciiz "Outer scope - x: "
.align 2
label_1_str:
.asciiz "\n"
.align 2
label_2_str:
.asciiz "Outer scope - y: "
.align 2
label_3_str:
.asciiz "Inner scope - x: "
.align 2
label_4_str:
.asciiz "Inner scope - y: "
.align 2
label_5_str:
.asciiz "Outer scope after inner block - x: "
.align 2
label_6_str:
.asciiz "Outer scope after inner block - y: "
.align 2
# Allocated labels for virtual registers

.text
.globl main
main:
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: addiu v0,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v1,10
li $t1,10
# Original instruction: sw v1,0(v0)
sw $t1,0($t0)
# Original instruction: addiu v2,$fp,-8
addiu $t0,$fp,-8
# Original instruction: li v3,20
li $t1,20
# Original instruction: sw v3,0(v2)
sw $t1,0($t0)
# Original instruction: la v4,label_0_str
la $t0,label_0_str
# Original instruction: addiu v5,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v4,0(v5)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v6,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v7,0(v6)
lw $t1,0($t0)
# Original instruction: addiu v8,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v7,0(v8)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v9,label_1_str
la $t1,label_1_str
# Original instruction: addiu v10,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v9,0(v10)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v11,label_2_str
la $t0,label_2_str
# Original instruction: addiu v12,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v11,0(v12)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v13,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v14,0(v13)
lw $t1,0($t0)
# Original instruction: addiu v15,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v14,0(v15)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v16,label_1_str
la $t1,label_1_str
# Original instruction: addiu v17,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v16,0(v17)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v18,$fp,-12
addiu $t1,$fp,-12
# Original instruction: li v19,30
li $t0,30
# Original instruction: sw v19,0(v18)
sw $t0,0($t1)
# Original instruction: addiu v20,$fp,-16
addiu $t1,$fp,-16
# Original instruction: li v21,40
li $t0,40
# Original instruction: sw v21,0(v20)
sw $t0,0($t1)
# Original instruction: la v22,label_3_str
la $t0,label_3_str
# Original instruction: addiu v23,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v22,0(v23)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v24,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v25,0(v24)
lw $t1,0($t0)
# Original instruction: addiu v26,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v25,0(v26)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v27,label_1_str
la $t0,label_1_str
# Original instruction: addiu v28,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v27,0(v28)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v29,label_4_str
la $t1,label_4_str
# Original instruction: addiu v30,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v29,0(v30)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v31,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v32,0(v31)
lw $t1,0($t0)
# Original instruction: addiu v33,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v32,0(v33)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v34,label_1_str
la $t0,label_1_str
# Original instruction: addiu v35,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v34,0(v35)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v36,label_5_str
la $t0,label_5_str
# Original instruction: addiu v37,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v36,0(v37)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v38,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v39,0(v38)
lw $t1,0($t0)
# Original instruction: addiu v40,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v39,0(v40)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v41,label_1_str
la $t1,label_1_str
# Original instruction: addiu v42,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v41,0(v42)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v43,label_6_str
la $t0,label_6_str
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
# Original instruction: addiu v45,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v46,0(v45)
lw $t0,0($t0)
# Original instruction: addiu v47,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v46,0(v47)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v48,label_1_str
la $t1,label_1_str
# Original instruction: addiu v49,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v48,0(v49)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: j main_epilogue
j main_epilogue
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

