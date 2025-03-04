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
label_42_v10:
.space 4
label_80_v29:
.space 4
label_39_v9:
.space 4
label_71_v19:
.space 4
label_83_v30:
.space 4
label_103_v39:
.space 4
label_74_v26:
.space 4
label_102_v38:
.space 4
label_33_v6:
.space 4
label_88_v33:
.space 4
label_86_v32:
.space 4
label_68_v23:
.space 4
label_46_v13:
.space 4
label_22_v1:
.space 4
label_28_v4:
.space 4
label_43_v11:
.space 4
label_99_v37:
.space 4
label_54_v17:
.space 4
label_52_v16:
.space 4
label_25_v0:
.space 4
label_81_v25:
.space 4
label_62_v20:
.space 4
label_65_v22:
.space 4
label_95_v35:
.space 4
label_38_v8:
.space 4
label_29_v3:
.space 4
label_67_v21:
.space 4
label_35_v7:
.space 4
label_89_v31:
.space 4
label_24_v2:
.space 4
label_55_v15:
.space 4
label_98_v36:
.space 4
label_47_v12:
.space 4
label_59_v18:
.space 4
label_32_v5:
.space 4
label_70_v24:
.space 4
label_93_v34:
.space 4
label_49_v14:
.space 4
label_78_v28:
.space 4
label_77_v27:
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
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: addiu v0,$fp,-4
addiu $t5,$fp,-4
la $t0,label_25_v0
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: addi v1,$sp,0
addi $t5,$sp,0
la $t0,label_22_v1
sw $t5,0($t0)
# Original instruction: lw v2,0(v1)
la $t5,label_22_v1
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_24_v2
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sw v2,0(v0)
la $t5,label_24_v2
lw $t5,0($t5)
la $t4,label_25_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v3,$fp,-8
addiu $t5,$fp,-8
la $t0,label_29_v3
sw $t5,0($t0)
# Original instruction: li v4,1
li $t5,1
la $t0,label_28_v4
sw $t5,0($t0)
# Original instruction: sw v4,0(v3)
la $t5,label_28_v4
lw $t5,0($t5)
la $t4,label_29_v3
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: la v5,label_0_str
la $t5,label_0_str
la $t0,label_32_v5
sw $t5,0($t0)
# Original instruction: addiu v6,$sp,-4
addiu $t5,$sp,-4
la $t0,label_33_v6
sw $t5,0($t0)
# Original instruction: sw v5,0(v6)
la $t5,label_32_v5
lw $t5,0($t5)
la $t4,label_33_v6
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v7,$fp,-4
addiu $t5,$fp,-4
la $t0,label_35_v7
sw $t5,0($t0)
# Original instruction: lw v8,0(v7)
la $t5,label_35_v7
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_38_v8
sw $t4,0($t0)
# Original instruction: addiu v9,$sp,-4
addiu $t5,$sp,-4
la $t0,label_39_v9
sw $t5,0($t0)
# Original instruction: sw v8,0(v9)
la $t5,label_38_v8
lw $t5,0($t5)
la $t4,label_39_v9
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v10,label_1_str
la $t5,label_1_str
la $t0,label_42_v10
sw $t5,0($t0)
# Original instruction: addiu v11,$sp,-4
addiu $t5,$sp,-4
la $t0,label_43_v11
sw $t5,0($t0)
# Original instruction: sw v10,0(v11)
la $t5,label_42_v10
lw $t5,0($t5)
la $t4,label_43_v11
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v12,$fp,-12
addiu $t5,$fp,-12
la $t0,label_47_v12
sw $t5,0($t0)
# Original instruction: li v13,1
li $t5,1
la $t0,label_46_v13
sw $t5,0($t0)
# Original instruction: sw v13,0(v12)
la $t5,label_46_v13
lw $t5,0($t5)
la $t4,label_47_v12
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v14,$fp,-12
addiu $t5,$fp,-12
la $t0,label_49_v14
sw $t5,0($t0)
# Original instruction: lw v15,0(v14)
la $t5,label_49_v14
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_55_v15
sw $t4,0($t0)
# Original instruction: addiu v16,$fp,-4
addiu $t5,$fp,-4
la $t0,label_52_v16
sw $t5,0($t0)
# Original instruction: lw v17,0(v16)
la $t5,label_52_v16
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_54_v17
sw $t4,0($t0)
# Original instruction: slt v18,v17,v15
la $t5,label_54_v17
lw $t5,0($t5)
la $t4,label_55_v15
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_59_v18
sw $t3,0($t0)
# Original instruction: xori v18,v18,1
la $t4,label_59_v18
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_59_v18
sw $t4,0($t0)
# Original instruction: beqz v18,label_7_next
la $t5,label_59_v18
lw $t5,0($t5)
beqz $t5,label_7_next
label_9_body:
# Original instruction: addiu v19,$fp,-8
addiu $t5,$fp,-8
la $t0,label_71_v19
sw $t5,0($t0)
# Original instruction: addiu v20,$fp,-8
addiu $t5,$fp,-8
la $t0,label_62_v20
sw $t5,0($t0)
# Original instruction: lw v21,0(v20)
la $t5,label_62_v20
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_67_v21
sw $t4,0($t0)
# Original instruction: addiu v22,$fp,-12
addiu $t5,$fp,-12
la $t0,label_65_v22
sw $t5,0($t0)
# Original instruction: lw v23,0(v22)
la $t5,label_65_v22
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_68_v23
sw $t4,0($t0)
# Original instruction: mul v24,v21,v23
la $t5,label_67_v21
lw $t5,0($t5)
la $t4,label_68_v23
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_70_v24
sw $t3,0($t0)
# Original instruction: sw v24,0(v19)
la $t5,label_70_v24
lw $t5,0($t5)
la $t4,label_71_v19
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v25,$fp,-12
addiu $t5,$fp,-12
la $t0,label_81_v25
sw $t5,0($t0)
# Original instruction: addiu v26,$fp,-12
addiu $t5,$fp,-12
la $t0,label_74_v26
sw $t5,0($t0)
# Original instruction: lw v27,0(v26)
la $t5,label_74_v26
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_77_v27
sw $t4,0($t0)
# Original instruction: li v28,1
li $t5,1
la $t0,label_78_v28
sw $t5,0($t0)
# Original instruction: add v29,v27,v28
la $t5,label_77_v27
lw $t5,0($t5)
la $t4,label_78_v28
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_80_v29
sw $t3,0($t0)
# Original instruction: sw v29,0(v25)
la $t5,label_80_v29
lw $t5,0($t5)
la $t4,label_81_v25
lw $t4,0($t4)
sw $t5,0($t4)
label_8_posttest:
# Original instruction: addiu v30,$fp,-12
addiu $t5,$fp,-12
la $t0,label_83_v30
sw $t5,0($t0)
# Original instruction: lw v31,0(v30)
la $t5,label_83_v30
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_89_v31
sw $t4,0($t0)
# Original instruction: addiu v32,$fp,-4
addiu $t5,$fp,-4
la $t0,label_86_v32
sw $t5,0($t0)
# Original instruction: lw v33,0(v32)
la $t5,label_86_v32
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_88_v33
sw $t4,0($t0)
# Original instruction: slt v34,v33,v31
la $t5,label_88_v33
lw $t5,0($t5)
la $t4,label_89_v31
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_93_v34
sw $t3,0($t0)
# Original instruction: xori v34,v34,1
la $t4,label_93_v34
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_93_v34
sw $t4,0($t0)
# Original instruction: bnez v34,label_9_body
la $t5,label_93_v34
lw $t5,0($t5)
bnez $t5,label_9_body
label_7_next:
# Original instruction: addiu v35,$fp,-8
addiu $t5,$fp,-8
la $t0,label_95_v35
sw $t5,0($t0)
# Original instruction: lw v36,0(v35)
la $t5,label_95_v35
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_98_v36
sw $t4,0($t0)
# Original instruction: addiu v37,$sp,-4
addiu $t5,$sp,-4
la $t0,label_99_v37
sw $t5,0($t0)
# Original instruction: sw v36,0(v37)
la $t5,label_98_v36
lw $t5,0($t5)
la $t4,label_99_v37
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v38,label_2_str
la $t5,label_2_str
la $t0,label_102_v38
sw $t5,0($t0)
# Original instruction: addiu v39,$sp,-4
addiu $t5,$sp,-4
la $t0,label_103_v39
sw $t5,0($t0)
# Original instruction: sw v38,0(v39)
la $t5,label_102_v38
lw $t5,0($t5)
la $t4,label_103_v39
lw $t4,0($t4)
sw $t5,0($t4)
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

