.data
# Allocated labels for virtual registers
label_47_v15:
.space 4
label_23_v3:
.space 4
label_54_v14:
.space 4
label_24_v2:
.space 4
label_65_v24:
.space 4
label_38_v11:
.space 4
label_53_v18:
.space 4
label_30_v6:
.space 4
label_35_v9:
.space 4
label_50_v16:
.space 4
label_62_v22:
.space 4
label_60_v21:
.space 4
label_29_v5:
.space 4
label_68_v25:
.space 4
label_72_v27:
.space 4
label_20_v0:
.space 4
label_43_v13:
.space 4
label_44_v8:
.space 4
label_71_v26:
.space 4
label_41_v12:
.space 4
label_32_v7:
.space 4
label_59_v20:
.space 4
label_26_v4:
.space 4
label_51_v17:
.space 4
label_67_v23:
.space 4
label_40_v10:
.space 4
label_56_v19:
.space 4
label_19_v1:
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
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addiu v0,$fp,-4
addiu $t5,$fp,-4
la $t0,label_20_v0
sw $t5,0($t0)
# Original instruction: li v1,0
li $t5,0
la $t0,label_19_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_19_v1
lw $t5,0($t5)
la $t4,label_20_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v2,$fp,-8
addiu $t5,$fp,-8
la $t0,label_24_v2
sw $t5,0($t0)
# Original instruction: li v3,0
li $t5,0
la $t0,label_23_v3
sw $t5,0($t0)
# Original instruction: sw v3,0(v2)
la $t5,label_23_v3
lw $t5,0($t5)
la $t4,label_24_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v4,$fp,-4
addiu $t5,$fp,-4
la $t0,label_26_v4
sw $t5,0($t0)
# Original instruction: lw v5,0(v4)
la $t5,label_26_v4
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_29_v5
sw $t4,0($t0)
# Original instruction: li v6,10
li $t5,10
la $t0,label_30_v6
sw $t5,0($t0)
# Original instruction: slt v7,v5,v6
la $t5,label_29_v5
lw $t5,0($t5)
la $t4,label_30_v6
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_32_v7
sw $t3,0($t0)
# Original instruction: beqz v7,label_1_next
la $t5,label_32_v7
lw $t5,0($t5)
beqz $t5,label_1_next
label_3_body:
# Original instruction: addiu v8,$fp,-8
addiu $t5,$fp,-8
la $t0,label_44_v8
sw $t5,0($t0)
# Original instruction: addiu v9,$fp,-8
addiu $t5,$fp,-8
la $t0,label_35_v9
sw $t5,0($t0)
# Original instruction: lw v10,0(v9)
la $t5,label_35_v9
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_40_v10
sw $t4,0($t0)
# Original instruction: addiu v11,$fp,-4
addiu $t5,$fp,-4
la $t0,label_38_v11
sw $t5,0($t0)
# Original instruction: lw v12,0(v11)
la $t5,label_38_v11
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_41_v12
sw $t4,0($t0)
# Original instruction: add v13,v10,v12
la $t5,label_40_v10
lw $t5,0($t5)
la $t4,label_41_v12
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_43_v13
sw $t3,0($t0)
# Original instruction: sw v13,0(v8)
la $t5,label_43_v13
lw $t5,0($t5)
la $t4,label_44_v8
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v14,$fp,-4
addiu $t5,$fp,-4
la $t0,label_54_v14
sw $t5,0($t0)
# Original instruction: addiu v15,$fp,-4
addiu $t5,$fp,-4
la $t0,label_47_v15
sw $t5,0($t0)
# Original instruction: lw v16,0(v15)
la $t5,label_47_v15
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_50_v16
sw $t4,0($t0)
# Original instruction: li v17,1
li $t5,1
la $t0,label_51_v17
sw $t5,0($t0)
# Original instruction: add v18,v16,v17
la $t5,label_50_v16
lw $t5,0($t5)
la $t4,label_51_v17
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_53_v18
sw $t3,0($t0)
# Original instruction: sw v18,0(v14)
la $t5,label_53_v18
lw $t5,0($t5)
la $t4,label_54_v14
lw $t4,0($t4)
sw $t5,0($t4)
label_2_posttest:
# Original instruction: addiu v19,$fp,-4
addiu $t5,$fp,-4
la $t0,label_56_v19
sw $t5,0($t0)
# Original instruction: lw v20,0(v19)
la $t5,label_56_v19
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_59_v20
sw $t4,0($t0)
# Original instruction: li v21,10
li $t5,10
la $t0,label_60_v21
sw $t5,0($t0)
# Original instruction: slt v22,v20,v21
la $t5,label_59_v20
lw $t5,0($t5)
la $t4,label_60_v21
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_62_v22
sw $t3,0($t0)
# Original instruction: bnez v22,label_3_body
la $t5,label_62_v22
lw $t5,0($t5)
bnez $t5,label_3_body
label_1_next:
# Original instruction: li v23,2
li $t5,2
la $t0,label_67_v23
sw $t5,0($t0)
# Original instruction: addiu v24,$fp,-8
addiu $t5,$fp,-8
la $t0,label_65_v24
sw $t5,0($t0)
# Original instruction: lw v25,0(v24)
la $t5,label_65_v24
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_68_v25
sw $t4,0($t0)
# Original instruction: mul v26,v23,v25
la $t5,label_67_v23
lw $t5,0($t5)
la $t4,label_68_v25
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_71_v26
sw $t3,0($t0)
# Original instruction: addiu v27,$sp,-4
addiu $t5,$sp,-4
la $t0,label_72_v27
sw $t5,0($t0)
# Original instruction: sw v26,0(v27)
la $t5,label_71_v26
lw $t5,0($t5)
la $t4,label_72_v27
lw $t4,0($t4)
sw $t5,0($t4)
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

