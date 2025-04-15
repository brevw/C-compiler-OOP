.data
a11:
.space 1
.align 2
a12:
.space 1
.align 2
a13:
.space 1
.align 2
b:
.space 4
.align 2
# Allocated labels for virtual registers
label_25_v2:
.space 4
label_38_v9:
.space 4
label_57_v19:
.space 4
label_32_v7:
.space 4
label_56_v18:
.space 4
label_33_v6:
.space 4
label_29_v4:
.space 4
label_53_v17:
.space 4
label_44_v12:
.space 4
label_51_v16:
.space 4
label_24_v3:
.space 4
label_41_v11:
.space 4
label_50_v15:
.space 4
label_35_v8:
.space 4
label_20_v1:
.space 4
label_21_v0:
.space 4
label_47_v14:
.space 4
label_39_v10:
.space 4
label_45_v13:
.space 4
label_28_v5:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
.globl main
main:
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: la v0,a11
la $t5,a11
la $t0,label_21_v0
sw $t5,0($t0)
# Original instruction: li v1,120
li $t5,120
la $t0,label_20_v1
sw $t5,0($t0)
# Original instruction: sb v1,0(v0)
la $t5,label_20_v1
lw $t5,0($t5)
la $t4,label_21_v0
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: la v2,a12
la $t5,a12
la $t0,label_25_v2
sw $t5,0($t0)
# Original instruction: li v3,121
li $t5,121
la $t0,label_24_v3
sw $t5,0($t0)
# Original instruction: sb v3,0(v2)
la $t5,label_24_v3
lw $t5,0($t5)
la $t4,label_25_v2
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: la v4,a13
la $t5,a13
la $t0,label_29_v4
sw $t5,0($t0)
# Original instruction: li v5,122
li $t5,122
la $t0,label_28_v5
sw $t5,0($t0)
# Original instruction: sb v5,0(v4)
la $t5,label_28_v5
lw $t5,0($t5)
la $t4,label_29_v4
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: la v6,b
la $t5,b
la $t0,label_33_v6
sw $t5,0($t0)
# Original instruction: li v7,1
li $t5,1
la $t0,label_32_v7
sw $t5,0($t0)
# Original instruction: sw v7,0(v6)
la $t5,label_32_v7
lw $t5,0($t5)
la $t4,label_33_v6
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: la v8,a11
la $t5,a11
la $t0,label_35_v8
sw $t5,0($t0)
# Original instruction: lb v9,0(v8)
la $t5,label_35_v8
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_38_v9
sw $t4,0($t0)
# Original instruction: addiu v10,$sp,-4
addiu $t5,$sp,-4
la $t0,label_39_v10
sw $t5,0($t0)
# Original instruction: sb v9,0(v10)
la $t5,label_38_v9
lw $t5,0($t5)
la $t4,label_39_v10
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v11,a12
la $t5,a12
la $t0,label_41_v11
sw $t5,0($t0)
# Original instruction: lb v12,0(v11)
la $t5,label_41_v11
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_44_v12
sw $t4,0($t0)
# Original instruction: addiu v13,$sp,-4
addiu $t5,$sp,-4
la $t0,label_45_v13
sw $t5,0($t0)
# Original instruction: sb v12,0(v13)
la $t5,label_44_v12
lw $t5,0($t5)
la $t4,label_45_v13
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v14,a13
la $t5,a13
la $t0,label_47_v14
sw $t5,0($t0)
# Original instruction: lb v15,0(v14)
la $t5,label_47_v14
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_50_v15
sw $t4,0($t0)
# Original instruction: addiu v16,$sp,-4
addiu $t5,$sp,-4
la $t0,label_51_v16
sw $t5,0($t0)
# Original instruction: sb v15,0(v16)
la $t5,label_50_v15
lw $t5,0($t5)
la $t4,label_51_v16
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v17,b
la $t5,b
la $t0,label_53_v17
sw $t5,0($t0)
# Original instruction: lw v18,0(v17)
la $t5,label_53_v17
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_56_v18
sw $t4,0($t0)
# Original instruction: addiu v19,$sp,-4
addiu $t5,$sp,-4
la $t0,label_57_v19
sw $t5,0($t0)
# Original instruction: sw v18,0(v19)
la $t5,label_56_v18
lw $t5,0($t5)
la $t4,label_57_v19
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
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

