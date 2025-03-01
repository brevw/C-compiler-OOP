.data
n:
.space 4
.align 2
label_1_str:
.asciiz "Prime\n"
.align 2
label_2_str:
.asciiz "Not Prime\n"
.align 2
# Allocated labels for virtual registers
label_62_v17:
.space 4
label_106_v36:
.space 4
label_37_v5:
.space 4
label_64_v16:
.space 4
label_36_v4:
.space 4
label_83_v26:
.space 4
label_107_v37:
.space 4
label_96_v33:
.space 4
label_52_v13:
.space 4
label_99_v30:
.space 4
label_69_v20:
.space 4
label_43_v8:
.space 4
label_49_v11:
.space 4
label_65_v18:
.space 4
label_87_v24:
.space 4
label_77_v23:
.space 4
label_27_v0:
.space 4
label_40_v7:
.space 4
label_95_v32:
.space 4
label_84_v27:
.space 4
label_89_v29:
.space 4
label_31_v2:
.space 4
label_59_v15:
.space 4
label_46_v10:
.space 4
label_86_v28:
.space 4
label_57_v14:
.space 4
label_30_v1:
.space 4
label_53_v9:
.space 4
label_76_v22:
.space 4
label_41_v6:
.space 4
label_68_v19:
.space 4
label_80_v25:
.space 4
label_50_v12:
.space 4
label_92_v31:
.space 4
label_73_v21:
.space 4
label_33_v3:
.space 4
label_103_v35:
.space 4
label_98_v34:
.space 4
# Allocated labels for virtual registers
label_121_v40:
.space 4
label_127_v47:
.space 4
label_111_v38:
.space 4
label_131_v48:
.space 4
label_114_v41:
.space 4
label_110_v39:
.space 4
label_118_v43:
.space 4
label_135_v50:
.space 4
label_120_v44:
.space 4
label_126_v46:
.space 4
label_117_v42:
.space 4
label_134_v49:
.space 4
label_139_v52:
.space 4
label_123_v45:
.space 4
label_138_v51:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
is_prime:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: pushRegisters
la $t0,label_62_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_106_v36
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_37_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_64_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_36_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_83_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_107_v37
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_96_v33
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_52_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_99_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_69_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_43_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_65_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_87_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_77_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_27_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_95_v32
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_84_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_31_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_59_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_86_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_57_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_30_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_53_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_76_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_68_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_80_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_50_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_92_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_73_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_33_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_103_v35
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_98_v34
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v0,$fp,8
addi $t5,$fp,8
la $t0,label_27_v0
sw $t5,0($t0)
# Original instruction: lw v1,0(v0)
la $t5,label_27_v0
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_30_v1
sw $t4,0($t0)
# Original instruction: li v2,2
li $t5,2
la $t0,label_31_v2
sw $t5,0($t0)
# Original instruction: slt v3,v1,v2
la $t5,label_30_v1
lw $t5,0($t5)
la $t4,label_31_v2
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_33_v3
sw $t3,0($t0)
# Original instruction: beqz v3,label_4_END
la $t5,label_33_v3
lw $t5,0($t5)
beqz $t5,label_4_END
# Original instruction: li v4,0
li $t5,0
la $t0,label_36_v4
sw $t5,0($t0)
# Original instruction: addi v5,$fp,4
addi $t5,$fp,4
la $t0,label_37_v5
sw $t5,0($t0)
# Original instruction: sw v4,0(v5)
la $t5,label_36_v4
lw $t5,0($t5)
la $t4,label_37_v5
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j is_prime_epilogue
j is_prime_epilogue
label_4_END:
# Original instruction: addi v6,$fp,-4
addi $t5,$fp,-4
la $t0,label_41_v6
sw $t5,0($t0)
# Original instruction: li v7,2
li $t5,2
la $t0,label_40_v7
sw $t5,0($t0)
# Original instruction: sw v7,0(v6)
la $t5,label_40_v7
lw $t5,0($t5)
la $t4,label_41_v6
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v8,$fp,-4
addi $t5,$fp,-4
la $t0,label_43_v8
sw $t5,0($t0)
# Original instruction: lw v9,0(v8)
la $t5,label_43_v8
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_53_v9
sw $t4,0($t0)
# Original instruction: addi v10,$fp,8
addi $t5,$fp,8
la $t0,label_46_v10
sw $t5,0($t0)
# Original instruction: lw v11,0(v10)
la $t5,label_46_v10
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_49_v11
sw $t4,0($t0)
# Original instruction: li v12,2
li $t5,2
la $t0,label_50_v12
sw $t5,0($t0)
# Original instruction: div v11,v12
la $t5,label_49_v11
lw $t5,0($t5)
la $t4,label_50_v12
lw $t4,0($t4)
div $t5,$t4
# Original instruction: mflo v13
mflo $t5
la $t0,label_52_v13
sw $t5,0($t0)
# Original instruction: slt v14,v13,v9
la $t5,label_52_v13
lw $t5,0($t5)
la $t4,label_53_v9
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_57_v14
sw $t3,0($t0)
# Original instruction: xori v14,v14,1
la $t4,label_57_v14
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_57_v14
sw $t4,0($t0)
# Original instruction: beqz v14,label_6_next
la $t5,label_57_v14
lw $t5,0($t5)
beqz $t5,label_6_next
label_8_body:
# Original instruction: addi v15,$fp,8
addi $t5,$fp,8
la $t0,label_59_v15
sw $t5,0($t0)
# Original instruction: lw v16,0(v15)
la $t5,label_59_v15
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_64_v16
sw $t4,0($t0)
# Original instruction: addi v17,$fp,-4
addi $t5,$fp,-4
la $t0,label_62_v17
sw $t5,0($t0)
# Original instruction: lw v18,0(v17)
la $t5,label_62_v17
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_65_v18
sw $t4,0($t0)
# Original instruction: div v16,v18
la $t5,label_64_v16
lw $t5,0($t5)
la $t4,label_65_v18
lw $t4,0($t4)
div $t5,$t4
# Original instruction: mfhi v19
mfhi $t5
la $t0,label_68_v19
sw $t5,0($t0)
# Original instruction: li v20,0
li $t5,0
la $t0,label_69_v20
sw $t5,0($t0)
# Original instruction: xor v21,v19,v20
la $t5,label_68_v19
lw $t5,0($t5)
la $t4,label_69_v20
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_73_v21
sw $t3,0($t0)
# Original instruction: sltiu v21,v21,1
la $t4,label_73_v21
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_73_v21
sw $t4,0($t0)
# Original instruction: beqz v21,label_9_END
la $t5,label_73_v21
lw $t5,0($t5)
beqz $t5,label_9_END
# Original instruction: li v22,0
li $t5,0
la $t0,label_76_v22
sw $t5,0($t0)
# Original instruction: addi v23,$fp,4
addi $t5,$fp,4
la $t0,label_77_v23
sw $t5,0($t0)
# Original instruction: sw v22,0(v23)
la $t5,label_76_v22
lw $t5,0($t5)
la $t4,label_77_v23
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j is_prime_epilogue
j is_prime_epilogue
label_9_END:
# Original instruction: addi v24,$fp,-4
addi $t5,$fp,-4
la $t0,label_87_v24
sw $t5,0($t0)
# Original instruction: addi v25,$fp,-4
addi $t5,$fp,-4
la $t0,label_80_v25
sw $t5,0($t0)
# Original instruction: lw v26,0(v25)
la $t5,label_80_v25
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_83_v26
sw $t4,0($t0)
# Original instruction: li v27,1
li $t5,1
la $t0,label_84_v27
sw $t5,0($t0)
# Original instruction: add v28,v26,v27
la $t5,label_83_v26
lw $t5,0($t5)
la $t4,label_84_v27
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_86_v28
sw $t3,0($t0)
# Original instruction: sw v28,0(v24)
la $t5,label_86_v28
lw $t5,0($t5)
la $t4,label_87_v24
lw $t4,0($t4)
sw $t5,0($t4)
label_7_posttest:
# Original instruction: addi v29,$fp,-4
addi $t5,$fp,-4
la $t0,label_89_v29
sw $t5,0($t0)
# Original instruction: lw v30,0(v29)
la $t5,label_89_v29
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_99_v30
sw $t4,0($t0)
# Original instruction: addi v31,$fp,8
addi $t5,$fp,8
la $t0,label_92_v31
sw $t5,0($t0)
# Original instruction: lw v32,0(v31)
la $t5,label_92_v31
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_95_v32
sw $t4,0($t0)
# Original instruction: li v33,2
li $t5,2
la $t0,label_96_v33
sw $t5,0($t0)
# Original instruction: div v32,v33
la $t5,label_95_v32
lw $t5,0($t5)
la $t4,label_96_v33
lw $t4,0($t4)
div $t5,$t4
# Original instruction: mflo v34
mflo $t5
la $t0,label_98_v34
sw $t5,0($t0)
# Original instruction: slt v35,v34,v30
la $t5,label_98_v34
lw $t5,0($t5)
la $t4,label_99_v30
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_103_v35
sw $t3,0($t0)
# Original instruction: xori v35,v35,1
la $t4,label_103_v35
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_103_v35
sw $t4,0($t0)
# Original instruction: bnez v35,label_8_body
la $t5,label_103_v35
lw $t5,0($t5)
bnez $t5,label_8_body
label_6_next:
# Original instruction: li v36,1
li $t5,1
la $t0,label_106_v36
sw $t5,0($t0)
# Original instruction: addi v37,$fp,4
addi $t5,$fp,4
la $t0,label_107_v37
sw $t5,0($t0)
# Original instruction: sw v36,0(v37)
la $t5,label_106_v36
lw $t5,0($t5)
la $t4,label_107_v37
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j is_prime_epilogue
j is_prime_epilogue
is_prime_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_98_v34
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_103_v35
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_33_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_73_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_92_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_50_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_80_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_68_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_41_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_76_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_53_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_30_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_57_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_86_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_46_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_59_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_31_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_89_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_84_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_95_v32
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_40_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_27_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_77_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_87_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_65_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_49_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_43_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_69_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_99_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_52_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_96_v33
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_107_v37
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_83_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_36_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_64_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_37_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_106_v36
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_62_v17
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
# Original instruction: la v38,n
la $t5,n
la $t0,label_111_v38
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: lw v39,0($sp)
lw $t5,0($sp)
la $t0,label_110_v39
sw $t5,0($t0)
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: sw v39,0(v38)
la $t5,label_110_v39
lw $t5,0($t5)
la $t4,label_111_v38
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v40,$fp,-4
addi $t5,$fp,-4
la $t0,label_121_v40
sw $t5,0($t0)
# Original instruction: la v41,n
la $t5,n
la $t0,label_114_v41
sw $t5,0($t0)
# Original instruction: lw v42,0(v41)
la $t5,label_114_v41
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_117_v42
sw $t4,0($t0)
# Original instruction: addiu v43,$sp,-4
addiu $t5,$sp,-4
la $t0,label_118_v43
sw $t5,0($t0)
# Original instruction: sw v42,0(v43)
la $t5,label_117_v42
lw $t5,0($t5)
la $t4,label_118_v43
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal is_prime
jal is_prime
# Original instruction: lw v44,0($sp)
lw $t5,0($sp)
la $t0,label_120_v44
sw $t5,0($t0)
# Original instruction: addi $sp,$sp,8
addi $sp,$sp,8
# Original instruction: sw v44,0(v40)
la $t5,label_120_v44
lw $t5,0($t5)
la $t4,label_121_v40
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v45,$fp,-4
addi $t5,$fp,-4
la $t0,label_123_v45
sw $t5,0($t0)
# Original instruction: lw v46,0(v45)
la $t5,label_123_v45
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_126_v46
sw $t4,0($t0)
# Original instruction: li v47,1
li $t5,1
la $t0,label_127_v47
sw $t5,0($t0)
# Original instruction: xor v48,v46,v47
la $t5,label_126_v46
lw $t5,0($t5)
la $t4,label_127_v47
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_131_v48
sw $t3,0($t0)
# Original instruction: sltiu v48,v48,1
la $t4,label_131_v48
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_131_v48
sw $t4,0($t0)
# Original instruction: beqz v48,label_12_ELSE
la $t5,label_131_v48
lw $t5,0($t5)
beqz $t5,label_12_ELSE
# Original instruction: la v49,label_1_str
la $t5,label_1_str
la $t0,label_134_v49
sw $t5,0($t0)
# Original instruction: addiu v50,$sp,-4
addiu $t5,$sp,-4
la $t0,label_135_v50
sw $t5,0($t0)
# Original instruction: sw v49,0(v50)
la $t5,label_134_v49
lw $t5,0($t5)
la $t4,label_135_v50
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: j label_13_END
j label_13_END
label_12_ELSE:
# Original instruction: la v51,label_2_str
la $t5,label_2_str
la $t0,label_138_v51
sw $t5,0($t0)
# Original instruction: addiu v52,$sp,-4
addiu $t5,$sp,-4
la $t0,label_139_v52
sw $t5,0($t0)
# Original instruction: sw v51,0(v52)
la $t5,label_138_v51
lw $t5,0($t5)
la $t4,label_139_v52
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
label_13_END:
# Original instruction: j main_epilogue
j main_epilogue
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

