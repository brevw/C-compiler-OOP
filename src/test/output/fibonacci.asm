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
label_111_v43:
.space 4
label_47_v12:
.space 4
label_95_v33:
.space 4
label_121_v44:
.space 4
label_131_v53:
.space 4
label_106_v40:
.space 4
label_118_v47:
.space 4
label_117_v46:
.space 4
label_89_v27:
.space 4
label_37_v7:
.space 4
label_50_v14:
.space 4
label_103_v39:
.space 4
label_92_v34:
.space 4
label_28_v3:
.space 4
label_94_v35:
.space 4
label_67_v21:
.space 4
label_114_v45:
.space 4
label_39_v8:
.space 4
label_58_v16:
.space 4
label_51_v13:
.space 4
label_32_v5:
.space 4
label_100_v38:
.space 4
label_43_v10:
.space 4
label_107_v41:
.space 4
label_77_v24:
.space 4
label_71_v23:
.space 4
label_46_v11:
.space 4
label_129_v52:
.space 4
label_63_v20:
.space 4
label_98_v37:
.space 4
label_36_v6:
.space 4
label_53_v15:
.space 4
label_59_v18:
.space 4
label_29_v2:
.space 4
label_74_v25:
.space 4
label_126_v51:
.space 4
label_86_v31:
.space 4
label_83_v30:
.space 4
label_101_v36:
.space 4
label_123_v49:
.space 4
label_42_v9:
.space 4
label_66_v22:
.space 4
label_56_v17:
.space 4
label_25_v0:
.space 4
label_85_v29:
.space 4
label_33_v4:
.space 4
label_128_v50:
.space 4
label_76_v26:
.space 4
label_88_v32:
.space 4
label_24_v1:
.space 4
label_61_v19:
.space 4
label_120_v48:
.space 4
label_80_v28:
.space 4
label_110_v42:
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
la $t0,label_25_v0
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: lw v1,0($sp)
lw $t5,0($sp)
la $t0,label_24_v1
sw $t5,0($t0)
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: sw v1,0(v0)
la $t5,label_24_v1
lw $t5,0($t5)
la $t4,label_25_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v2,$fp,-8
addi $t5,$fp,-8
la $t0,label_29_v2
sw $t5,0($t0)
# Original instruction: li v3,0
li $t5,0
la $t0,label_28_v3
sw $t5,0($t0)
# Original instruction: sw v3,0(v2)
la $t5,label_28_v3
lw $t5,0($t5)
la $t4,label_29_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v4,$fp,-12
addi $t5,$fp,-12
la $t0,label_33_v4
sw $t5,0($t0)
# Original instruction: li v5,1
li $t5,1
la $t0,label_32_v5
sw $t5,0($t0)
# Original instruction: sw v5,0(v4)
la $t5,label_32_v5
lw $t5,0($t5)
la $t4,label_33_v4
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: la v6,label_0_str
la $t5,label_0_str
la $t0,label_36_v6
sw $t5,0($t0)
# Original instruction: addiu v7,$sp,-4
addiu $t5,$sp,-4
la $t0,label_37_v7
sw $t5,0($t0)
# Original instruction: sw v6,0(v7)
la $t5,label_36_v6
lw $t5,0($t5)
la $t4,label_37_v7
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: addi v8,$fp,-4
addi $t5,$fp,-4
la $t0,label_39_v8
sw $t5,0($t0)
# Original instruction: lw v9,0(v8)
la $t5,label_39_v8
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_42_v9
sw $t4,0($t0)
# Original instruction: addiu v10,$sp,-4
addiu $t5,$sp,-4
la $t0,label_43_v10
sw $t5,0($t0)
# Original instruction: sw v9,0(v10)
la $t5,label_42_v9
lw $t5,0($t5)
la $t4,label_43_v10
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: la v11,label_1_str
la $t5,label_1_str
la $t0,label_46_v11
sw $t5,0($t0)
# Original instruction: addiu v12,$sp,-4
addiu $t5,$sp,-4
la $t0,label_47_v12
sw $t5,0($t0)
# Original instruction: sw v11,0(v12)
la $t5,label_46_v11
lw $t5,0($t5)
la $t4,label_47_v12
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: addi v13,$fp,-20
addi $t5,$fp,-20
la $t0,label_51_v13
sw $t5,0($t0)
# Original instruction: li v14,0
li $t5,0
la $t0,label_50_v14
sw $t5,0($t0)
# Original instruction: sw v14,0(v13)
la $t5,label_50_v14
lw $t5,0($t5)
la $t4,label_51_v13
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v15,$fp,-20
addi $t5,$fp,-20
la $t0,label_53_v15
sw $t5,0($t0)
# Original instruction: lw v16,0(v15)
la $t5,label_53_v15
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_58_v16
sw $t4,0($t0)
# Original instruction: addi v17,$fp,-4
addi $t5,$fp,-4
la $t0,label_56_v17
sw $t5,0($t0)
# Original instruction: lw v18,0(v17)
la $t5,label_56_v17
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_59_v18
sw $t4,0($t0)
# Original instruction: slt v19,v16,v18
la $t5,label_58_v16
lw $t5,0($t5)
la $t4,label_59_v18
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_61_v19
sw $t3,0($t0)
# Original instruction: beqz v19,label_7_next
la $t5,label_61_v19
lw $t5,0($t5)
beqz $t5,label_7_next
label_9_body:
# Original instruction: addi v20,$fp,-20
addi $t5,$fp,-20
la $t0,label_63_v20
sw $t5,0($t0)
# Original instruction: lw v21,0(v20)
la $t5,label_63_v20
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_67_v21
sw $t4,0($t0)
# Original instruction: li v22,1
li $t5,1
la $t0,label_66_v22
sw $t5,0($t0)
# Original instruction: slt v23,v22,v21
la $t5,label_66_v22
lw $t5,0($t5)
la $t4,label_67_v21
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_71_v23
sw $t3,0($t0)
# Original instruction: xori v23,v23,1
la $t4,label_71_v23
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_71_v23
sw $t4,0($t0)
# Original instruction: beqz v23,label_10_ELSE
la $t5,label_71_v23
lw $t5,0($t5)
beqz $t5,label_10_ELSE
# Original instruction: addi v24,$fp,-16
addi $t5,$fp,-16
la $t0,label_77_v24
sw $t5,0($t0)
# Original instruction: addi v25,$fp,-20
addi $t5,$fp,-20
la $t0,label_74_v25
sw $t5,0($t0)
# Original instruction: lw v26,0(v25)
la $t5,label_74_v25
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_76_v26
sw $t4,0($t0)
# Original instruction: sw v26,0(v24)
la $t5,label_76_v26
lw $t5,0($t5)
la $t4,label_77_v24
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j label_11_END
j label_11_END
label_10_ELSE:
# Original instruction: addi v27,$fp,-16
addi $t5,$fp,-16
la $t0,label_89_v27
sw $t5,0($t0)
# Original instruction: addi v28,$fp,-8
addi $t5,$fp,-8
la $t0,label_80_v28
sw $t5,0($t0)
# Original instruction: lw v29,0(v28)
la $t5,label_80_v28
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_85_v29
sw $t4,0($t0)
# Original instruction: addi v30,$fp,-12
addi $t5,$fp,-12
la $t0,label_83_v30
sw $t5,0($t0)
# Original instruction: lw v31,0(v30)
la $t5,label_83_v30
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_86_v31
sw $t4,0($t0)
# Original instruction: add v32,v29,v31
la $t5,label_85_v29
lw $t5,0($t5)
la $t4,label_86_v31
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_88_v32
sw $t3,0($t0)
# Original instruction: sw v32,0(v27)
la $t5,label_88_v32
lw $t5,0($t5)
la $t4,label_89_v27
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v33,$fp,-8
addi $t5,$fp,-8
la $t0,label_95_v33
sw $t5,0($t0)
# Original instruction: addi v34,$fp,-12
addi $t5,$fp,-12
la $t0,label_92_v34
sw $t5,0($t0)
# Original instruction: lw v35,0(v34)
la $t5,label_92_v34
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_94_v35
sw $t4,0($t0)
# Original instruction: sw v35,0(v33)
la $t5,label_94_v35
lw $t5,0($t5)
la $t4,label_95_v33
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v36,$fp,-12
addi $t5,$fp,-12
la $t0,label_101_v36
sw $t5,0($t0)
# Original instruction: addi v37,$fp,-16
addi $t5,$fp,-16
la $t0,label_98_v37
sw $t5,0($t0)
# Original instruction: lw v38,0(v37)
la $t5,label_98_v37
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_100_v38
sw $t4,0($t0)
# Original instruction: sw v38,0(v36)
la $t5,label_100_v38
lw $t5,0($t5)
la $t4,label_101_v36
lw $t4,0($t4)
sw $t5,0($t4)
label_11_END:
# Original instruction: addi v39,$fp,-16
addi $t5,$fp,-16
la $t0,label_103_v39
sw $t5,0($t0)
# Original instruction: lw v40,0(v39)
la $t5,label_103_v39
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_106_v40
sw $t4,0($t0)
# Original instruction: addiu v41,$sp,-4
addiu $t5,$sp,-4
la $t0,label_107_v41
sw $t5,0($t0)
# Original instruction: sw v40,0(v41)
la $t5,label_106_v40
lw $t5,0($t5)
la $t4,label_107_v41
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: la v42,label_2_str
la $t5,label_2_str
la $t0,label_110_v42
sw $t5,0($t0)
# Original instruction: addiu v43,$sp,-4
addiu $t5,$sp,-4
la $t0,label_111_v43
sw $t5,0($t0)
# Original instruction: sw v42,0(v43)
la $t5,label_110_v42
lw $t5,0($t5)
la $t4,label_111_v43
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: addi v44,$fp,-20
addi $t5,$fp,-20
la $t0,label_121_v44
sw $t5,0($t0)
# Original instruction: addi v45,$fp,-20
addi $t5,$fp,-20
la $t0,label_114_v45
sw $t5,0($t0)
# Original instruction: lw v46,0(v45)
la $t5,label_114_v45
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_117_v46
sw $t4,0($t0)
# Original instruction: li v47,1
li $t5,1
la $t0,label_118_v47
sw $t5,0($t0)
# Original instruction: add v48,v46,v47
la $t5,label_117_v46
lw $t5,0($t5)
la $t4,label_118_v47
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_120_v48
sw $t3,0($t0)
# Original instruction: sw v48,0(v44)
la $t5,label_120_v48
lw $t5,0($t5)
la $t4,label_121_v44
lw $t4,0($t4)
sw $t5,0($t4)
label_8_posttest:
# Original instruction: addi v49,$fp,-20
addi $t5,$fp,-20
la $t0,label_123_v49
sw $t5,0($t0)
# Original instruction: lw v50,0(v49)
la $t5,label_123_v49
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_128_v50
sw $t4,0($t0)
# Original instruction: addi v51,$fp,-4
addi $t5,$fp,-4
la $t0,label_126_v51
sw $t5,0($t0)
# Original instruction: lw v52,0(v51)
la $t5,label_126_v51
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_129_v52
sw $t4,0($t0)
# Original instruction: slt v53,v50,v52
la $t5,label_128_v50
lw $t5,0($t5)
la $t4,label_129_v52
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_131_v53
sw $t3,0($t0)
# Original instruction: bnez v53,label_9_body
la $t5,label_131_v53
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
mcmalloc_epilogue:
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

