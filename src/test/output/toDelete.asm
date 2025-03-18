.data
# Allocated labels for virtual registers
label_19_v0:
.space 4
label_29_v5:
.space 4
label_28_v4:
.space 4
label_22_v2:
.space 4
label_24_v1:
.space 4
label_25_v3:
.space 4
# Allocated labels for virtual registers
label_54_v18:
.space 4
label_37_v8:
.space 4
label_52_v17:
.space 4
label_60_v22:
.space 4
label_40_v11:
.space 4
label_36_v9:
.space 4
label_33_v6:
.space 4
label_49_v15:
.space 4
label_55_v10:
.space 4
label_46_v14:
.space 4
label_64_v24:
.space 4
label_68_v19:
.space 4
label_62_v23:
.space 4
label_43_v12:
.space 4
label_44_v13:
.space 4
label_32_v7:
.space 4
label_50_v16:
.space 4
label_58_v21:
.space 4
label_67_v20:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
add:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
la $t0,label_19_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v5
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_22_v2
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_25_v3
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v0,$fp,12
addiu $t5,$fp,12
la $t0,label_19_v0
sw $t5,0($t0)
# Original instruction: lw v1,0(v0)
la $t5,label_19_v0
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_24_v1
sw $t4,0($t0)
# Original instruction: addiu v2,$fp,8
addiu $t5,$fp,8
la $t0,label_22_v2
sw $t5,0($t0)
# Original instruction: lw v3,0(v2)
la $t5,label_22_v2
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_25_v3
sw $t4,0($t0)
# Original instruction: add v4,v1,v3
la $t5,label_24_v1
lw $t5,0($t5)
la $t4,label_25_v3
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_28_v4
sw $t3,0($t0)
# Original instruction: addi v5,$fp,4
addi $t5,$fp,4
la $t0,label_29_v5
sw $t5,0($t0)
# Original instruction: sw v4,0(v5)
la $t5,label_28_v4
lw $t5,0($t5)
la $t4,label_29_v5
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j add_epilogue
j add_epilogue
add_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_25_v3
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_24_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_22_v2
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_28_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_29_v5
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_19_v0
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
.globl main
main:
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: addiu v6,$fp,-4
addiu $t5,$fp,-4
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
# Original instruction: addiu v8,$fp,-8
addiu $t5,$fp,-8
la $t0,label_37_v8
sw $t5,0($t0)
# Original instruction: li v9,2
li $t5,2
la $t0,label_36_v9
sw $t5,0($t0)
# Original instruction: sw v9,0(v8)
la $t5,label_36_v9
lw $t5,0($t5)
la $t4,label_37_v8
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v10,$fp,-12
addiu $t5,$fp,-12
la $t0,label_55_v10
sw $t5,0($t0)
# Original instruction: addiu v11,$fp,-4
addiu $t5,$fp,-4
la $t0,label_40_v11
sw $t5,0($t0)
# Original instruction: lw v12,0(v11)
la $t5,label_40_v11
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_43_v12
sw $t4,0($t0)
# Original instruction: addiu v13,$sp,-4
addiu $t5,$sp,-4
la $t0,label_44_v13
sw $t5,0($t0)
# Original instruction: sw v12,0(v13)
la $t5,label_43_v12
lw $t5,0($t5)
la $t4,label_44_v13
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v14,$fp,-8
addiu $t5,$fp,-8
la $t0,label_46_v14
sw $t5,0($t0)
# Original instruction: lw v15,0(v14)
la $t5,label_46_v14
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_49_v15
sw $t4,0($t0)
# Original instruction: addiu v16,$sp,-8
addiu $t5,$sp,-8
la $t0,label_50_v16
sw $t5,0($t0)
# Original instruction: sw v15,0(v16)
la $t5,label_49_v15
lw $t5,0($t5)
la $t4,label_50_v16
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal add
jal add
# Original instruction: addi v17,$sp,0
addi $t5,$sp,0
la $t0,label_52_v17
sw $t5,0($t0)
# Original instruction: lw v18,0(v17)
la $t5,label_52_v17
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_54_v18
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
# Original instruction: sw v18,0(v10)
la $t5,label_54_v18
lw $t5,0($t5)
la $t4,label_55_v10
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v19,$fp,-4
addiu $t5,$fp,-4
la $t0,label_68_v19
sw $t5,0($t0)
# Original instruction: addiu v21,$fp,-4
addiu $t5,$fp,-4
la $t0,label_58_v21
sw $t5,0($t0)
# Original instruction: lw v22,0(v21)
la $t5,label_58_v21
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_60_v22
sw $t4,0($t0)
# Original instruction: beq v22,$zero,label_3_
la $t5,label_60_v22
lw $t5,0($t5)
beq $t5,$zero,label_3_
# Original instruction: addiu v23,$fp,-8
addiu $t5,$fp,-8
la $t0,label_62_v23
sw $t5,0($t0)
# Original instruction: lw v24,0(v23)
la $t5,label_62_v23
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_64_v24
sw $t4,0($t0)
# Original instruction: beq v24,$zero,label_3_
la $t5,label_64_v24
lw $t5,0($t5)
beq $t5,$zero,label_3_
# Original instruction: li v20,1
li $t5,1
la $t0,label_67_v20
sw $t5,0($t0)
# Original instruction: j label_4_
j label_4_
label_3_:
# Original instruction: li v20,0
li $t5,0
la $t0,label_67_v20
sw $t5,0($t0)
label_4_:
# Original instruction: sw v20,0(v19)
la $t5,label_67_v20
lw $t5,0($t5)
la $t4,label_68_v19
lw $t4,0($t4)
sw $t5,0($t4)
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

