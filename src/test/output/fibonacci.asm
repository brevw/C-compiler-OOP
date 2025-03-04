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
label_125_v50:
.space 4
label_91_v28:
.space 4
label_58_v18:
.space 4
label_82_v29:
.space 4
label_119_v47:
.space 4
label_120_v48:
.space 4
label_100_v38:
.space 4
label_79_v25:
.space 4
label_108_v41:
.space 4
label_88_v32:
.space 4
label_85_v31:
.space 4
label_48_v12:
.space 4
label_112_v43:
.space 4
label_109_v42:
.space 4
label_73_v24:
.space 4
label_61_v19:
.space 4
label_105_v40:
.space 4
label_63_v20:
.space 4
label_34_v6:
.space 4
label_130_v51:
.space 4
label_87_v30:
.space 4
label_24_v1:
.space 4
label_68_v23:
.space 4
label_133_v54:
.space 4
label_116_v46:
.space 4
label_76_v26:
.space 4
label_41_v9:
.space 4
label_39_v8:
.space 4
label_102_v39:
.space 4
label_122_v49:
.space 4
label_103_v37:
.space 4
label_35_v5:
.space 4
label_69_v22:
.space 4
label_113_v44:
.space 4
label_27_v0:
.space 4
label_31_v3:
.space 4
label_44_v10:
.space 4
label_96_v36:
.space 4
label_55_v16:
.space 4
label_52_v15:
.space 4
label_131_v53:
.space 4
label_65_v21:
.space 4
label_97_v34:
.space 4
label_128_v52:
.space 4
label_38_v7:
.space 4
label_26_v2:
.space 4
label_123_v45:
.space 4
label_53_v14:
.space 4
label_94_v35:
.space 4
label_45_v11:
.space 4
label_60_v17:
.space 4
label_30_v4:
.space 4
label_90_v33:
.space 4
label_49_v13:
.space 4
label_78_v27:
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
# Original instruction: addiu $sp,$sp,-24
addiu $sp,$sp,-24
# Original instruction: addiu v0,$fp,-4
addiu $t5,$fp,-4
la $t0,label_27_v0
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: addi v1,$sp,0
addi $t5,$sp,0
la $t0,label_24_v1
sw $t5,0($t0)
# Original instruction: lw v2,0(v1)
la $t5,label_24_v1
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_26_v2
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sw v2,0(v0)
la $t5,label_26_v2
lw $t5,0($t5)
la $t4,label_27_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v3,$fp,-8
addiu $t5,$fp,-8
la $t0,label_31_v3
sw $t5,0($t0)
# Original instruction: li v4,0
li $t5,0
la $t0,label_30_v4
sw $t5,0($t0)
# Original instruction: sw v4,0(v3)
la $t5,label_30_v4
lw $t5,0($t5)
la $t4,label_31_v3
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v5,$fp,-12
addiu $t5,$fp,-12
la $t0,label_35_v5
sw $t5,0($t0)
# Original instruction: li v6,1
li $t5,1
la $t0,label_34_v6
sw $t5,0($t0)
# Original instruction: sw v6,0(v5)
la $t5,label_34_v6
lw $t5,0($t5)
la $t4,label_35_v5
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: la v7,label_0_str
la $t5,label_0_str
la $t0,label_38_v7
sw $t5,0($t0)
# Original instruction: addiu v8,$sp,-4
addiu $t5,$sp,-4
la $t0,label_39_v8
sw $t5,0($t0)
# Original instruction: sw v7,0(v8)
la $t5,label_38_v7
lw $t5,0($t5)
la $t4,label_39_v8
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v9,$fp,-4
addiu $t5,$fp,-4
la $t0,label_41_v9
sw $t5,0($t0)
# Original instruction: lw v10,0(v9)
la $t5,label_41_v9
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_44_v10
sw $t4,0($t0)
# Original instruction: addiu v11,$sp,-4
addiu $t5,$sp,-4
la $t0,label_45_v11
sw $t5,0($t0)
# Original instruction: sw v10,0(v11)
la $t5,label_44_v10
lw $t5,0($t5)
la $t4,label_45_v11
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v12,label_1_str
la $t5,label_1_str
la $t0,label_48_v12
sw $t5,0($t0)
# Original instruction: addiu v13,$sp,-4
addiu $t5,$sp,-4
la $t0,label_49_v13
sw $t5,0($t0)
# Original instruction: sw v12,0(v13)
la $t5,label_48_v12
lw $t5,0($t5)
la $t4,label_49_v13
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v14,$fp,-20
addiu $t5,$fp,-20
la $t0,label_53_v14
sw $t5,0($t0)
# Original instruction: li v15,0
li $t5,0
la $t0,label_52_v15
sw $t5,0($t0)
# Original instruction: sw v15,0(v14)
la $t5,label_52_v15
lw $t5,0($t5)
la $t4,label_53_v14
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v16,$fp,-20
addiu $t5,$fp,-20
la $t0,label_55_v16
sw $t5,0($t0)
# Original instruction: lw v17,0(v16)
la $t5,label_55_v16
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_60_v17
sw $t4,0($t0)
# Original instruction: addiu v18,$fp,-4
addiu $t5,$fp,-4
la $t0,label_58_v18
sw $t5,0($t0)
# Original instruction: lw v19,0(v18)
la $t5,label_58_v18
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_61_v19
sw $t4,0($t0)
# Original instruction: slt v20,v17,v19
la $t5,label_60_v17
lw $t5,0($t5)
la $t4,label_61_v19
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_63_v20
sw $t3,0($t0)
# Original instruction: beqz v20,label_7_next
la $t5,label_63_v20
lw $t5,0($t5)
beqz $t5,label_7_next
label_9_body:
# Original instruction: addiu v21,$fp,-20
addiu $t5,$fp,-20
la $t0,label_65_v21
sw $t5,0($t0)
# Original instruction: lw v22,0(v21)
la $t5,label_65_v21
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_69_v22
sw $t4,0($t0)
# Original instruction: li v23,1
li $t5,1
la $t0,label_68_v23
sw $t5,0($t0)
# Original instruction: slt v24,v23,v22
la $t5,label_68_v23
lw $t5,0($t5)
la $t4,label_69_v22
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_73_v24
sw $t3,0($t0)
# Original instruction: xori v24,v24,1
la $t4,label_73_v24
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_73_v24
sw $t4,0($t0)
# Original instruction: beqz v24,label_10_ELSE
la $t5,label_73_v24
lw $t5,0($t5)
beqz $t5,label_10_ELSE
# Original instruction: addiu v25,$fp,-16
addiu $t5,$fp,-16
la $t0,label_79_v25
sw $t5,0($t0)
# Original instruction: addiu v26,$fp,-20
addiu $t5,$fp,-20
la $t0,label_76_v26
sw $t5,0($t0)
# Original instruction: lw v27,0(v26)
la $t5,label_76_v26
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_78_v27
sw $t4,0($t0)
# Original instruction: sw v27,0(v25)
la $t5,label_78_v27
lw $t5,0($t5)
la $t4,label_79_v25
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j label_11_END
j label_11_END
label_10_ELSE:
# Original instruction: addiu v28,$fp,-16
addiu $t5,$fp,-16
la $t0,label_91_v28
sw $t5,0($t0)
# Original instruction: addiu v29,$fp,-8
addiu $t5,$fp,-8
la $t0,label_82_v29
sw $t5,0($t0)
# Original instruction: lw v30,0(v29)
la $t5,label_82_v29
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_87_v30
sw $t4,0($t0)
# Original instruction: addiu v31,$fp,-12
addiu $t5,$fp,-12
la $t0,label_85_v31
sw $t5,0($t0)
# Original instruction: lw v32,0(v31)
la $t5,label_85_v31
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_88_v32
sw $t4,0($t0)
# Original instruction: add v33,v30,v32
la $t5,label_87_v30
lw $t5,0($t5)
la $t4,label_88_v32
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_90_v33
sw $t3,0($t0)
# Original instruction: sw v33,0(v28)
la $t5,label_90_v33
lw $t5,0($t5)
la $t4,label_91_v28
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v34,$fp,-8
addiu $t5,$fp,-8
la $t0,label_97_v34
sw $t5,0($t0)
# Original instruction: addiu v35,$fp,-12
addiu $t5,$fp,-12
la $t0,label_94_v35
sw $t5,0($t0)
# Original instruction: lw v36,0(v35)
la $t5,label_94_v35
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_96_v36
sw $t4,0($t0)
# Original instruction: sw v36,0(v34)
la $t5,label_96_v36
lw $t5,0($t5)
la $t4,label_97_v34
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v37,$fp,-12
addiu $t5,$fp,-12
la $t0,label_103_v37
sw $t5,0($t0)
# Original instruction: addiu v38,$fp,-16
addiu $t5,$fp,-16
la $t0,label_100_v38
sw $t5,0($t0)
# Original instruction: lw v39,0(v38)
la $t5,label_100_v38
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_102_v39
sw $t4,0($t0)
# Original instruction: sw v39,0(v37)
la $t5,label_102_v39
lw $t5,0($t5)
la $t4,label_103_v37
lw $t4,0($t4)
sw $t5,0($t4)
label_11_END:
# Original instruction: addiu v40,$fp,-16
addiu $t5,$fp,-16
la $t0,label_105_v40
sw $t5,0($t0)
# Original instruction: lw v41,0(v40)
la $t5,label_105_v40
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_108_v41
sw $t4,0($t0)
# Original instruction: addiu v42,$sp,-4
addiu $t5,$sp,-4
la $t0,label_109_v42
sw $t5,0($t0)
# Original instruction: sw v41,0(v42)
la $t5,label_108_v41
lw $t5,0($t5)
la $t4,label_109_v42
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v43,label_2_str
la $t5,label_2_str
la $t0,label_112_v43
sw $t5,0($t0)
# Original instruction: addiu v44,$sp,-4
addiu $t5,$sp,-4
la $t0,label_113_v44
sw $t5,0($t0)
# Original instruction: sw v43,0(v44)
la $t5,label_112_v43
lw $t5,0($t5)
la $t4,label_113_v44
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v45,$fp,-20
addiu $t5,$fp,-20
la $t0,label_123_v45
sw $t5,0($t0)
# Original instruction: addiu v46,$fp,-20
addiu $t5,$fp,-20
la $t0,label_116_v46
sw $t5,0($t0)
# Original instruction: lw v47,0(v46)
la $t5,label_116_v46
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_119_v47
sw $t4,0($t0)
# Original instruction: li v48,1
li $t5,1
la $t0,label_120_v48
sw $t5,0($t0)
# Original instruction: add v49,v47,v48
la $t5,label_119_v47
lw $t5,0($t5)
la $t4,label_120_v48
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_122_v49
sw $t3,0($t0)
# Original instruction: sw v49,0(v45)
la $t5,label_122_v49
lw $t5,0($t5)
la $t4,label_123_v45
lw $t4,0($t4)
sw $t5,0($t4)
label_8_posttest:
# Original instruction: addiu v50,$fp,-20
addiu $t5,$fp,-20
la $t0,label_125_v50
sw $t5,0($t0)
# Original instruction: lw v51,0(v50)
la $t5,label_125_v50
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_130_v51
sw $t4,0($t0)
# Original instruction: addiu v52,$fp,-4
addiu $t5,$fp,-4
la $t0,label_128_v52
sw $t5,0($t0)
# Original instruction: lw v53,0(v52)
la $t5,label_128_v52
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_131_v53
sw $t4,0($t0)
# Original instruction: slt v54,v51,v53
la $t5,label_130_v51
lw $t5,0($t5)
la $t4,label_131_v53
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_133_v54
sw $t3,0($t0)
# Original instruction: bnez v54,label_9_body
la $t5,label_133_v54
lw $t5,0($t5)
bnez $t5,label_9_body
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

