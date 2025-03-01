.data
# Allocated labels for virtual registers
label_18_v4:
.space 4
label_28_v10:
.space 4
label_46_v19:
.space 4
label_22_v6:
.space 4
label_39_v15:
.space 4
label_50_v21:
.space 4
label_24_v8:
.space 4
label_14_v2:
.space 4
label_13_v3:
.space 4
label_17_v5:
.space 4
label_33_v12:
.space 4
label_49_v20:
.space 4
label_30_v11:
.space 4
label_40_v16:
.space 4
label_44_v18:
.space 4
label_10_v0:
.space 4
label_21_v7:
.space 4
label_27_v9:
.space 4
label_34_v13:
.space 4
label_43_v17:
.space 4
label_9_v1:
.space 4
label_36_v14:
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
# Original instruction: addi v0,$fp,-4
addi $t5,$fp,-4
la $t0,label_10_v0
sw $t5,0($t0)
# Original instruction: li v1,104
li $t5,104
la $t0,label_9_v1
sw $t5,0($t0)
# Original instruction: sb v1,0(v0)
la $t5,label_9_v1
lw $t5,0($t5)
la $t4,label_10_v0
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v2,$fp,-8
addi $t5,$fp,-8
la $t0,label_14_v2
sw $t5,0($t0)
# Original instruction: li v3,101
li $t5,101
la $t0,label_13_v3
sw $t5,0($t0)
# Original instruction: sb v3,0(v2)
la $t5,label_13_v3
lw $t5,0($t5)
la $t4,label_14_v2
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v4,$fp,-12
addi $t5,$fp,-12
la $t0,label_18_v4
sw $t5,0($t0)
# Original instruction: li v5,108
li $t5,108
la $t0,label_17_v5
sw $t5,0($t0)
# Original instruction: sb v5,0(v4)
la $t5,label_17_v5
lw $t5,0($t5)
la $t4,label_18_v4
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v6,$fp,-16
addi $t5,$fp,-16
la $t0,label_22_v6
sw $t5,0($t0)
# Original instruction: li v7,111
li $t5,111
la $t0,label_21_v7
sw $t5,0($t0)
# Original instruction: sb v7,0(v6)
la $t5,label_21_v7
lw $t5,0($t5)
la $t4,label_22_v6
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v8,$fp,-4
addi $t5,$fp,-4
la $t0,label_24_v8
sw $t5,0($t0)
# Original instruction: lb v9,0(v8)
la $t5,label_24_v8
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_27_v9
sw $t4,0($t0)
# Original instruction: addiu v10,$sp,-4
addiu $t5,$sp,-4
la $t0,label_28_v10
sw $t5,0($t0)
# Original instruction: sb v9,0(v10)
la $t5,label_27_v9
lw $t5,0($t5)
la $t4,label_28_v10
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: addi v11,$fp,-8
addi $t5,$fp,-8
la $t0,label_30_v11
sw $t5,0($t0)
# Original instruction: lb v12,0(v11)
la $t5,label_30_v11
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_33_v12
sw $t4,0($t0)
# Original instruction: addiu v13,$sp,-4
addiu $t5,$sp,-4
la $t0,label_34_v13
sw $t5,0($t0)
# Original instruction: sb v12,0(v13)
la $t5,label_33_v12
lw $t5,0($t5)
la $t4,label_34_v13
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: addi v14,$fp,-12
addi $t5,$fp,-12
la $t0,label_36_v14
sw $t5,0($t0)
# Original instruction: lb v15,0(v14)
la $t5,label_36_v14
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_39_v15
sw $t4,0($t0)
# Original instruction: addiu v16,$sp,-4
addiu $t5,$sp,-4
la $t0,label_40_v16
sw $t5,0($t0)
# Original instruction: sb v15,0(v16)
la $t5,label_39_v15
lw $t5,0($t5)
la $t4,label_40_v16
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: li v17,108
li $t5,108
la $t0,label_43_v17
sw $t5,0($t0)
# Original instruction: addiu v18,$sp,-4
addiu $t5,$sp,-4
la $t0,label_44_v18
sw $t5,0($t0)
# Original instruction: sb v17,0(v18)
la $t5,label_43_v17
lw $t5,0($t5)
la $t4,label_44_v18
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: addi v19,$fp,-16
addi $t5,$fp,-16
la $t0,label_46_v19
sw $t5,0($t0)
# Original instruction: lb v20,0(v19)
la $t5,label_46_v19
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_49_v20
sw $t4,0($t0)
# Original instruction: addiu v21,$sp,-4
addiu $t5,$sp,-4
la $t0,label_50_v21
sw $t5,0($t0)
# Original instruction: sb v20,0(v21)
la $t5,label_49_v20
lw $t5,0($t5)
la $t4,label_50_v21
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

.text
.globl print_s
print_s:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
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
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
.globl print_i
print_i:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
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
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
.globl print_c
print_c:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
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
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
.globl read_c
read_c:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
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
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
.globl read_i
read_i:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
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
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
.globl mcmalloc
mcmalloc:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: pushRegisters
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: sw $v0,4($fp)
sw $v0,4($fp)
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

