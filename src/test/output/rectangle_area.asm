.data
label_0_str:
.asciiz "Rectangle Dimensions: "
.align 2
label_1_str:
.asciiz " (width) x "
.align 2
label_2_str:
.asciiz " (height)\n"
.align 2
label_3_str:
.asciiz "Area: "
.align 2
label_4_str:
.asciiz "\n"
.align 2
# Allocated labels for virtual registers
label_34_v5:
.space 4
label_26_v0:
.space 4
label_37_v6:
.space 4
label_24_v1:
.space 4
label_33_v2:
.space 4
label_31_v3:
.space 4
label_38_v7:
.space 4
label_29_v4:
.space 4
# Allocated labels for virtual registers
label_70_v23:
.space 4
label_58_v16:
.space 4
label_89_v28:
.space 4
label_54_v15:
.space 4
label_84_v25:
.space 4
label_93_v30:
.space 4
label_69_v22:
.space 4
label_42_v9:
.space 4
label_46_v10:
.space 4
label_56_v17:
.space 4
label_62_v19:
.space 4
label_53_v14:
.space 4
label_50_v13:
.space 4
label_66_v21:
.space 4
label_49_v12:
.space 4
label_86_v27:
.space 4
label_44_v11:
.space 4
label_81_v24:
.space 4
label_94_v31:
.space 4
label_90_v29:
.space 4
label_83_v26:
.space 4
label_41_v8:
.space 4
label_61_v18:
.space 4
label_65_v20:
.space 4
# Allocated labels for virtual registers
label_99_v34:
.space 4
label_117_v38:
.space 4
label_119_v40:
.space 4
label_106_v35:
.space 4
label_96_v33:
.space 4
label_120_v39:
.space 4
label_102_v36:
.space 4
label_100_v32:
.space 4
label_105_v37:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
calculate_area:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
la $t0,label_34_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_37_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_33_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_31_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v1,$fp,8
addiu $t5,$fp,8
la $t0,label_24_v1
sw $t5,0($t0)
# Original instruction: addi v0,v1,4
la $t5,label_24_v1
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_26_v0
sw $t4,0($t0)
# Original instruction: lw v2,0(v0)
la $t5,label_26_v0
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_33_v2
sw $t4,0($t0)
# Original instruction: addiu v4,$fp,8
addiu $t5,$fp,8
la $t0,label_29_v4
sw $t5,0($t0)
# Original instruction: addi v3,v4,8
la $t5,label_29_v4
lw $t5,0($t5)
addi $t4,$t5,8
la $t0,label_31_v3
sw $t4,0($t0)
# Original instruction: lw v5,0(v3)
la $t5,label_31_v3
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_34_v5
sw $t4,0($t0)
# Original instruction: mul v6,v2,v5
la $t5,label_33_v2
lw $t5,0($t5)
la $t4,label_34_v5
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_37_v6
sw $t3,0($t0)
# Original instruction: addi v7,$fp,4
addi $t5,$fp,4
la $t0,label_38_v7
sw $t5,0($t0)
# Original instruction: sw v6,0(v7)
la $t5,label_37_v6
lw $t5,0($t5)
la $t4,label_38_v7
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j calculate_area_epilogue
j calculate_area_epilogue
calculate_area_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_29_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_38_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_31_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_33_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_24_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_37_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_26_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_34_v5
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
print_rectangle:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
la $t0,label_70_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_58_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_54_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_84_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_93_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_69_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_42_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_62_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_53_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_50_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_66_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_86_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_44_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_81_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_94_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_90_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_83_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_61_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_65_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: la v8,label_0_str
la $t5,label_0_str
la $t0,label_41_v8
sw $t5,0($t0)
# Original instruction: addiu v9,$sp,-4
addiu $t5,$sp,-4
la $t0,label_42_v9
sw $t5,0($t0)
# Original instruction: sw v8,0(v9)
la $t5,label_41_v8
lw $t5,0($t5)
la $t4,label_42_v9
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v11,$fp,4
addiu $t5,$fp,4
la $t0,label_44_v11
sw $t5,0($t0)
# Original instruction: addi v10,v11,4
la $t5,label_44_v11
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_46_v10
sw $t4,0($t0)
# Original instruction: lw v12,0(v10)
la $t5,label_46_v10
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_49_v12
sw $t4,0($t0)
# Original instruction: addiu v13,$sp,-4
addiu $t5,$sp,-4
la $t0,label_50_v13
sw $t5,0($t0)
# Original instruction: sw v12,0(v13)
la $t5,label_49_v12
lw $t5,0($t5)
la $t4,label_50_v13
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v14,label_1_str
la $t5,label_1_str
la $t0,label_53_v14
sw $t5,0($t0)
# Original instruction: addiu v15,$sp,-4
addiu $t5,$sp,-4
la $t0,label_54_v15
sw $t5,0($t0)
# Original instruction: sw v14,0(v15)
la $t5,label_53_v14
lw $t5,0($t5)
la $t4,label_54_v15
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v17,$fp,4
addiu $t5,$fp,4
la $t0,label_56_v17
sw $t5,0($t0)
# Original instruction: addi v16,v17,8
la $t5,label_56_v17
lw $t5,0($t5)
addi $t4,$t5,8
la $t0,label_58_v16
sw $t4,0($t0)
# Original instruction: lw v18,0(v16)
la $t5,label_58_v16
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_61_v18
sw $t4,0($t0)
# Original instruction: addiu v19,$sp,-4
addiu $t5,$sp,-4
la $t0,label_62_v19
sw $t5,0($t0)
# Original instruction: sw v18,0(v19)
la $t5,label_61_v18
lw $t5,0($t5)
la $t4,label_62_v19
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v20,label_2_str
la $t5,label_2_str
la $t0,label_65_v20
sw $t5,0($t0)
# Original instruction: addiu v21,$sp,-4
addiu $t5,$sp,-4
la $t0,label_66_v21
sw $t5,0($t0)
# Original instruction: sw v20,0(v21)
la $t5,label_65_v20
lw $t5,0($t5)
la $t4,label_66_v21
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v22,label_3_str
la $t5,label_3_str
la $t0,label_69_v22
sw $t5,0($t0)
# Original instruction: addiu v23,$sp,-4
addiu $t5,$sp,-4
la $t0,label_70_v23
sw $t5,0($t0)
# Original instruction: sw v22,0(v23)
la $t5,label_69_v22
lw $t5,0($t5)
la $t4,label_70_v23
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v24,$fp,4
addiu $t5,$fp,4
la $t0,label_81_v24
sw $t5,0($t0)
# Original instruction: addiu v25,$sp,-12
addiu $t5,$sp,-12
la $t0,label_84_v25
sw $t5,0($t0)
# Original instruction: lw v26,0(v24)
la $t5,label_81_v24
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_83_v26
sw $t4,0($t0)
# Original instruction: sw v26,0(v25)
la $t5,label_83_v26
lw $t5,0($t5)
la $t4,label_84_v25
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: lw v26,4(v24)
la $t5,label_81_v24
lw $t5,0($t5)
lw $t4,4($t5)
la $t0,label_83_v26
sw $t4,0($t0)
# Original instruction: sw v26,4(v25)
la $t5,label_83_v26
lw $t5,0($t5)
la $t4,label_84_v25
lw $t4,0($t4)
sw $t5,4($t4)
# Original instruction: lw v26,8(v24)
la $t5,label_81_v24
lw $t5,0($t5)
lw $t4,8($t5)
la $t0,label_83_v26
sw $t4,0($t0)
# Original instruction: sw v26,8(v25)
la $t5,label_83_v26
lw $t5,0($t5)
la $t4,label_84_v25
lw $t4,0($t4)
sw $t5,8($t4)
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal calculate_area
jal calculate_area
# Original instruction: addi v27,$sp,0
addi $t5,$sp,0
la $t0,label_86_v27
sw $t5,0($t0)
# Original instruction: lw v28,0(v27)
la $t5,label_86_v27
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_89_v28
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,16
addiu $sp,$sp,16
# Original instruction: addiu v29,$sp,-4
addiu $t5,$sp,-4
la $t0,label_90_v29
sw $t5,0($t0)
# Original instruction: sw v28,0(v29)
la $t5,label_89_v28
lw $t5,0($t5)
la $t4,label_90_v29
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v30,label_4_str
la $t5,label_4_str
la $t0,label_93_v30
sw $t5,0($t0)
# Original instruction: addiu v31,$sp,-4
addiu $t5,$sp,-4
la $t0,label_94_v31
sw $t5,0($t0)
# Original instruction: sw v30,0(v31)
la $t5,label_93_v30
lw $t5,0($t5)
la $t4,label_94_v31
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
print_rectangle_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_65_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_61_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_41_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_83_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_90_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_94_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_81_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_44_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_86_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_49_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_66_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_50_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_53_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_62_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_56_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_46_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_42_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_69_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_93_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_84_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_54_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_89_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_58_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_70_v23
sw $t0,0($t1)
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
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
# Original instruction: addiu v33,$fp,-12
addiu $t5,$fp,-12
la $t0,label_96_v33
sw $t5,0($t0)
# Original instruction: addi v32,v33,4
la $t5,label_96_v33
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_100_v32
sw $t4,0($t0)
# Original instruction: li v34,5
li $t5,5
la $t0,label_99_v34
sw $t5,0($t0)
# Original instruction: sw v34,0(v32)
la $t5,label_99_v34
lw $t5,0($t5)
la $t4,label_100_v32
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v36,$fp,-12
addiu $t5,$fp,-12
la $t0,label_102_v36
sw $t5,0($t0)
# Original instruction: addi v35,v36,8
la $t5,label_102_v36
lw $t5,0($t5)
addi $t4,$t5,8
la $t0,label_106_v35
sw $t4,0($t0)
# Original instruction: li v37,10
li $t5,10
la $t0,label_105_v37
sw $t5,0($t0)
# Original instruction: sw v37,0(v35)
la $t5,label_105_v37
lw $t5,0($t5)
la $t4,label_106_v35
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v38,$fp,-12
addiu $t5,$fp,-12
la $t0,label_117_v38
sw $t5,0($t0)
# Original instruction: addiu v39,$sp,-12
addiu $t5,$sp,-12
la $t0,label_120_v39
sw $t5,0($t0)
# Original instruction: lw v40,0(v38)
la $t5,label_117_v38
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_119_v40
sw $t4,0($t0)
# Original instruction: sw v40,0(v39)
la $t5,label_119_v40
lw $t5,0($t5)
la $t4,label_120_v39
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: lw v40,4(v38)
la $t5,label_117_v38
lw $t5,0($t5)
lw $t4,4($t5)
la $t0,label_119_v40
sw $t4,0($t0)
# Original instruction: sw v40,4(v39)
la $t5,label_119_v40
lw $t5,0($t5)
la $t4,label_120_v39
lw $t4,0($t4)
sw $t5,4($t4)
# Original instruction: lw v40,8(v38)
la $t5,label_117_v38
lw $t5,0($t5)
lw $t4,8($t5)
la $t0,label_119_v40
sw $t4,0($t0)
# Original instruction: sw v40,8(v39)
la $t5,label_119_v40
lw $t5,0($t5)
la $t4,label_120_v39
lw $t4,0($t4)
sw $t5,8($t4)
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: jal print_rectangle
jal print_rectangle
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
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

