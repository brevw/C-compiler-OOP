.data
# Allocated labels for virtual registers
label_44_v17:
.space 4
label_43_v16:
.space 4
label_12_v1:
.space 4
label_61_v25:
.space 4
label_31_v11:
.space 4
label_13_v0:
.space 4
label_17_v2:
.space 4
label_52_v20:
.space 4
label_60_v23:
.space 4
label_25_v7:
.space 4
label_16_v3:
.space 4
label_34_v12:
.space 4
label_49_v19:
.space 4
label_37_v8:
.space 4
label_47_v14:
.space 4
label_65_v27:
.space 4
label_55_v22:
.space 4
label_64_v26:
.space 4
label_22_v5:
.space 4
label_36_v13:
.space 4
label_53_v21:
.space 4
label_19_v4:
.space 4
label_28_v9:
.space 4
label_46_v18:
.space 4
label_23_v6:
.space 4
label_33_v10:
.space 4
label_58_v24:
.space 4
label_40_v15:
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
la $t0,label_13_v0
sw $t5,0($t0)
# Original instruction: li v1,0
li $t5,0
la $t0,label_12_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_12_v1
lw $t5,0($t5)
la $t4,label_13_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v2,$fp,-8
addi $t5,$fp,-8
la $t0,label_17_v2
sw $t5,0($t0)
# Original instruction: li v3,0
li $t5,0
la $t0,label_16_v3
sw $t5,0($t0)
# Original instruction: sw v3,0(v2)
la $t5,label_16_v3
lw $t5,0($t5)
la $t4,label_17_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v4,$fp,-4
addi $t5,$fp,-4
la $t0,label_19_v4
sw $t5,0($t0)
# Original instruction: lw v5,0(v4)
la $t5,label_19_v4
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_22_v5
sw $t4,0($t0)
# Original instruction: li v6,10
li $t5,10
la $t0,label_23_v6
sw $t5,0($t0)
# Original instruction: slt v7,v5,v6
la $t5,label_22_v5
lw $t5,0($t5)
la $t4,label_23_v6
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_25_v7
sw $t3,0($t0)
# Original instruction: beqz v7,label_1_next
la $t5,label_25_v7
lw $t5,0($t5)
beqz $t5,label_1_next
label_3_body:
# Original instruction: addi v8,$fp,-8
addi $t5,$fp,-8
la $t0,label_37_v8
sw $t5,0($t0)
# Original instruction: addi v9,$fp,-8
addi $t5,$fp,-8
la $t0,label_28_v9
sw $t5,0($t0)
# Original instruction: lw v10,0(v9)
la $t5,label_28_v9
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_33_v10
sw $t4,0($t0)
# Original instruction: addi v11,$fp,-4
addi $t5,$fp,-4
la $t0,label_31_v11
sw $t5,0($t0)
# Original instruction: lw v12,0(v11)
la $t5,label_31_v11
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_34_v12
sw $t4,0($t0)
# Original instruction: add v13,v10,v12
la $t5,label_33_v10
lw $t5,0($t5)
la $t4,label_34_v12
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_36_v13
sw $t3,0($t0)
# Original instruction: sw v13,0(v8)
la $t5,label_36_v13
lw $t5,0($t5)
la $t4,label_37_v8
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v14,$fp,-4
addi $t5,$fp,-4
la $t0,label_47_v14
sw $t5,0($t0)
# Original instruction: addi v15,$fp,-4
addi $t5,$fp,-4
la $t0,label_40_v15
sw $t5,0($t0)
# Original instruction: lw v16,0(v15)
la $t5,label_40_v15
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_43_v16
sw $t4,0($t0)
# Original instruction: li v17,1
li $t5,1
la $t0,label_44_v17
sw $t5,0($t0)
# Original instruction: add v18,v16,v17
la $t5,label_43_v16
lw $t5,0($t5)
la $t4,label_44_v17
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_46_v18
sw $t3,0($t0)
# Original instruction: sw v18,0(v14)
la $t5,label_46_v18
lw $t5,0($t5)
la $t4,label_47_v14
lw $t4,0($t4)
sw $t5,0($t4)
label_2_posttest:
# Original instruction: addi v19,$fp,-4
addi $t5,$fp,-4
la $t0,label_49_v19
sw $t5,0($t0)
# Original instruction: lw v20,0(v19)
la $t5,label_49_v19
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_52_v20
sw $t4,0($t0)
# Original instruction: li v21,10
li $t5,10
la $t0,label_53_v21
sw $t5,0($t0)
# Original instruction: slt v22,v20,v21
la $t5,label_52_v20
lw $t5,0($t5)
la $t4,label_53_v21
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_55_v22
sw $t3,0($t0)
# Original instruction: bnez v22,label_3_body
la $t5,label_55_v22
lw $t5,0($t5)
bnez $t5,label_3_body
label_1_next:
# Original instruction: li v23,2
li $t5,2
la $t0,label_60_v23
sw $t5,0($t0)
# Original instruction: addi v24,$fp,-8
addi $t5,$fp,-8
la $t0,label_58_v24
sw $t5,0($t0)
# Original instruction: lw v25,0(v24)
la $t5,label_58_v24
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_61_v25
sw $t4,0($t0)
# Original instruction: mul v26,v23,v25
la $t5,label_60_v23
lw $t5,0($t5)
la $t4,label_61_v25
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_64_v26
sw $t3,0($t0)
# Original instruction: addiu v27,$sp,-4
addiu $t5,$sp,-4
la $t0,label_65_v27
sw $t5,0($t0)
# Original instruction: sw v26,0(v27)
la $t5,label_64_v26
lw $t5,0($t5)
la $t4,label_65_v27
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
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

