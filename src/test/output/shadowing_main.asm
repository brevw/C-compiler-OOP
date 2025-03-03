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
label_92_v35:
.space 4
label_31_v4:
.space 4
label_73_v25:
.space 4
label_95_v36:
.space 4
label_112_v45:
.space 4
label_87_v32:
.space 4
label_119_v48:
.space 4
label_101_v39:
.space 4
label_98_v38:
.space 4
label_59_v19:
.space 4
label_120_v49:
.space 4
label_34_v6:
.space 4
label_84_v31:
.space 4
label_74_v26:
.space 4
label_116_v47:
.space 4
label_77_v27:
.space 4
label_48_v13:
.space 4
label_96_v37:
.space 4
label_24_v0:
.space 4
label_38_v8:
.space 4
label_32_v5:
.space 4
label_82_v30:
.space 4
label_28_v2:
.space 4
label_88_v33:
.space 4
label_55_v16:
.space 4
label_52_v15:
.space 4
label_27_v3:
.space 4
label_115_v46:
.space 4
label_110_v44:
.space 4
label_46_v12:
.space 4
label_81_v29:
.space 4
label_37_v7:
.space 4
label_42_v10:
.space 4
label_56_v17:
.space 4
label_109_v43:
.space 4
label_68_v23:
.space 4
label_67_v22:
.space 4
label_78_v28:
.space 4
label_105_v41:
.space 4
label_23_v1:
.space 4
label_51_v14:
.space 4
label_41_v9:
.space 4
label_63_v21:
.space 4
label_106_v42:
.space 4
label_60_v18:
.space 4
label_70_v24:
.space 4
label_45_v11:
.space 4
label_102_v40:
.space 4
label_64_v20:
.space 4
label_91_v34:
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
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: addiu v0,$fp,-4
addiu $t5,$fp,-4
la $t0,label_24_v0
sw $t5,0($t0)
# Original instruction: li v1,10
li $t5,10
la $t0,label_23_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_23_v1
lw $t5,0($t5)
la $t4,label_24_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v2,$fp,-8
addiu $t5,$fp,-8
la $t0,label_28_v2
sw $t5,0($t0)
# Original instruction: li v3,20
li $t5,20
la $t0,label_27_v3
sw $t5,0($t0)
# Original instruction: sw v3,0(v2)
la $t5,label_27_v3
lw $t5,0($t5)
la $t4,label_28_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: la v4,label_0_str
la $t5,label_0_str
la $t0,label_31_v4
sw $t5,0($t0)
# Original instruction: addiu v5,$sp,-4
addiu $t5,$sp,-4
la $t0,label_32_v5
sw $t5,0($t0)
# Original instruction: sw v4,0(v5)
la $t5,label_31_v4
lw $t5,0($t5)
la $t4,label_32_v5
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v6,$fp,-4
addiu $t5,$fp,-4
la $t0,label_34_v6
sw $t5,0($t0)
# Original instruction: lw v7,0(v6)
la $t5,label_34_v6
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_37_v7
sw $t4,0($t0)
# Original instruction: addiu v8,$sp,-4
addiu $t5,$sp,-4
la $t0,label_38_v8
sw $t5,0($t0)
# Original instruction: sw v7,0(v8)
la $t5,label_37_v7
lw $t5,0($t5)
la $t4,label_38_v8
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v9,label_1_str
la $t5,label_1_str
la $t0,label_41_v9
sw $t5,0($t0)
# Original instruction: addiu v10,$sp,-4
addiu $t5,$sp,-4
la $t0,label_42_v10
sw $t5,0($t0)
# Original instruction: sw v9,0(v10)
la $t5,label_41_v9
lw $t5,0($t5)
la $t4,label_42_v10
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v11,label_2_str
la $t5,label_2_str
la $t0,label_45_v11
sw $t5,0($t0)
# Original instruction: addiu v12,$sp,-4
addiu $t5,$sp,-4
la $t0,label_46_v12
sw $t5,0($t0)
# Original instruction: sw v11,0(v12)
la $t5,label_45_v11
lw $t5,0($t5)
la $t4,label_46_v12
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v13,$fp,-8
addiu $t5,$fp,-8
la $t0,label_48_v13
sw $t5,0($t0)
# Original instruction: lw v14,0(v13)
la $t5,label_48_v13
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_51_v14
sw $t4,0($t0)
# Original instruction: addiu v15,$sp,-4
addiu $t5,$sp,-4
la $t0,label_52_v15
sw $t5,0($t0)
# Original instruction: sw v14,0(v15)
la $t5,label_51_v14
lw $t5,0($t5)
la $t4,label_52_v15
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v16,label_1_str
la $t5,label_1_str
la $t0,label_55_v16
sw $t5,0($t0)
# Original instruction: addiu v17,$sp,-4
addiu $t5,$sp,-4
la $t0,label_56_v17
sw $t5,0($t0)
# Original instruction: sw v16,0(v17)
la $t5,label_55_v16
lw $t5,0($t5)
la $t4,label_56_v17
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v18,$fp,-12
addiu $t5,$fp,-12
la $t0,label_60_v18
sw $t5,0($t0)
# Original instruction: li v19,30
li $t5,30
la $t0,label_59_v19
sw $t5,0($t0)
# Original instruction: sw v19,0(v18)
la $t5,label_59_v19
lw $t5,0($t5)
la $t4,label_60_v18
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v20,$fp,-16
addiu $t5,$fp,-16
la $t0,label_64_v20
sw $t5,0($t0)
# Original instruction: li v21,40
li $t5,40
la $t0,label_63_v21
sw $t5,0($t0)
# Original instruction: sw v21,0(v20)
la $t5,label_63_v21
lw $t5,0($t5)
la $t4,label_64_v20
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: la v22,label_3_str
la $t5,label_3_str
la $t0,label_67_v22
sw $t5,0($t0)
# Original instruction: addiu v23,$sp,-4
addiu $t5,$sp,-4
la $t0,label_68_v23
sw $t5,0($t0)
# Original instruction: sw v22,0(v23)
la $t5,label_67_v22
lw $t5,0($t5)
la $t4,label_68_v23
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v24,$fp,-12
addiu $t5,$fp,-12
la $t0,label_70_v24
sw $t5,0($t0)
# Original instruction: lw v25,0(v24)
la $t5,label_70_v24
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_73_v25
sw $t4,0($t0)
# Original instruction: addiu v26,$sp,-4
addiu $t5,$sp,-4
la $t0,label_74_v26
sw $t5,0($t0)
# Original instruction: sw v25,0(v26)
la $t5,label_73_v25
lw $t5,0($t5)
la $t4,label_74_v26
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v27,label_1_str
la $t5,label_1_str
la $t0,label_77_v27
sw $t5,0($t0)
# Original instruction: addiu v28,$sp,-4
addiu $t5,$sp,-4
la $t0,label_78_v28
sw $t5,0($t0)
# Original instruction: sw v27,0(v28)
la $t5,label_77_v27
lw $t5,0($t5)
la $t4,label_78_v28
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v29,label_4_str
la $t5,label_4_str
la $t0,label_81_v29
sw $t5,0($t0)
# Original instruction: addiu v30,$sp,-4
addiu $t5,$sp,-4
la $t0,label_82_v30
sw $t5,0($t0)
# Original instruction: sw v29,0(v30)
la $t5,label_81_v29
lw $t5,0($t5)
la $t4,label_82_v30
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v31,$fp,-16
addiu $t5,$fp,-16
la $t0,label_84_v31
sw $t5,0($t0)
# Original instruction: lw v32,0(v31)
la $t5,label_84_v31
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_87_v32
sw $t4,0($t0)
# Original instruction: addiu v33,$sp,-4
addiu $t5,$sp,-4
la $t0,label_88_v33
sw $t5,0($t0)
# Original instruction: sw v32,0(v33)
la $t5,label_87_v32
lw $t5,0($t5)
la $t4,label_88_v33
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v34,label_1_str
la $t5,label_1_str
la $t0,label_91_v34
sw $t5,0($t0)
# Original instruction: addiu v35,$sp,-4
addiu $t5,$sp,-4
la $t0,label_92_v35
sw $t5,0($t0)
# Original instruction: sw v34,0(v35)
la $t5,label_91_v34
lw $t5,0($t5)
la $t4,label_92_v35
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v36,label_5_str
la $t5,label_5_str
la $t0,label_95_v36
sw $t5,0($t0)
# Original instruction: addiu v37,$sp,-4
addiu $t5,$sp,-4
la $t0,label_96_v37
sw $t5,0($t0)
# Original instruction: sw v36,0(v37)
la $t5,label_95_v36
lw $t5,0($t5)
la $t4,label_96_v37
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v38,$fp,-4
addiu $t5,$fp,-4
la $t0,label_98_v38
sw $t5,0($t0)
# Original instruction: lw v39,0(v38)
la $t5,label_98_v38
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_101_v39
sw $t4,0($t0)
# Original instruction: addiu v40,$sp,-4
addiu $t5,$sp,-4
la $t0,label_102_v40
sw $t5,0($t0)
# Original instruction: sw v39,0(v40)
la $t5,label_101_v39
lw $t5,0($t5)
la $t4,label_102_v40
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v41,label_1_str
la $t5,label_1_str
la $t0,label_105_v41
sw $t5,0($t0)
# Original instruction: addiu v42,$sp,-4
addiu $t5,$sp,-4
la $t0,label_106_v42
sw $t5,0($t0)
# Original instruction: sw v41,0(v42)
la $t5,label_105_v41
lw $t5,0($t5)
la $t4,label_106_v42
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v43,label_6_str
la $t5,label_6_str
la $t0,label_109_v43
sw $t5,0($t0)
# Original instruction: addiu v44,$sp,-4
addiu $t5,$sp,-4
la $t0,label_110_v44
sw $t5,0($t0)
# Original instruction: sw v43,0(v44)
la $t5,label_109_v43
lw $t5,0($t5)
la $t4,label_110_v44
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v45,$fp,-8
addiu $t5,$fp,-8
la $t0,label_112_v45
sw $t5,0($t0)
# Original instruction: lw v46,0(v45)
la $t5,label_112_v45
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_115_v46
sw $t4,0($t0)
# Original instruction: addiu v47,$sp,-4
addiu $t5,$sp,-4
la $t0,label_116_v47
sw $t5,0($t0)
# Original instruction: sw v46,0(v47)
la $t5,label_115_v46
lw $t5,0($t5)
la $t4,label_116_v47
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v48,label_1_str
la $t5,label_1_str
la $t0,label_119_v48
sw $t5,0($t0)
# Original instruction: addiu v49,$sp,-4
addiu $t5,$sp,-4
la $t0,label_120_v49
sw $t5,0($t0)
# Original instruction: sw v48,0(v49)
la $t5,label_119_v48
lw $t5,0($t5)
la $t4,label_120_v49
lw $t4,0($t4)
sw $t5,0($t4)
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

