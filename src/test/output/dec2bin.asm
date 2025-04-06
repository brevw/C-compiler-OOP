.data
# Allocated labels for virtual registers
label_47_v9:
.space 4
label_31_v3:
.space 4
label_72_v22:
.space 4
label_34_v2:
.space 4
label_65_v18:
.space 4
label_54_v13:
.space 4
label_58_v15:
.space 4
label_53_v12:
.space 4
label_27_v1:
.space 4
label_57_v14:
.space 4
label_28_v0:
.space 4
label_66_v19:
.space 4
label_44_v8:
.space 4
label_36_v5:
.space 4
label_50_v11:
.space 4
label_61_v16:
.space 4
label_39_v6:
.space 4
label_62_v17:
.space 4
label_40_v7:
.space 4
label_33_v4:
.space 4
label_71_v21:
.space 4
label_48_v10:
.space 4
label_68_v20:
.space 4
# Allocated labels for virtual registers
label_116_v35:
.space 4
label_89_v31:
.space 4
label_103_v38:
.space 4
label_107_v40:
.space 4
label_128_v48:
.space 4
label_95_v34:
.space 4
label_133_v51:
.space 4
label_96_v30:
.space 4
label_80_v26:
.space 4
label_122_v45:
.space 4
label_146_v56:
.space 4
label_113_v41:
.space 4
label_140_v49:
.space 4
label_145_v57:
.space 4
label_131_v50:
.space 4
label_110_v36:
.space 4
label_78_v24:
.space 4
label_106_v39:
.space 4
label_126_v43:
.space 4
label_119_v44:
.space 4
label_142_v55:
.space 4
label_92_v32:
.space 4
label_115_v42:
.space 4
label_77_v25:
.space 4
label_74_v23:
.space 4
label_125_v47:
.space 4
label_84_v27:
.space 4
label_139_v54:
.space 4
label_148_v58:
.space 4
label_83_v28:
.space 4
label_93_v33:
.space 4
label_123_v46:
.space 4
label_101_v37:
.space 4
label_86_v29:
.space 4
label_136_v52:
.space 4
label_137_v53:
.space 4
# Allocated labels for virtual registers
label_201_v81:
.space 4
label_192_v77:
.space 4
label_168_v67:
.space 4
label_206_v83:
.space 4
label_154_v61:
.space 4
label_196_v75:
.space 4
label_155_v62:
.space 4
label_157_v63:
.space 4
label_195_v79:
.space 4
label_164_v66:
.space 4
label_186_v74:
.space 4
label_180_v69:
.space 4
label_163_v65:
.space 4
label_173_v70:
.space 4
label_176_v71:
.space 4
label_193_v78:
.space 4
label_185_v73:
.space 4
label_198_v80:
.space 4
label_182_v68:
.space 4
label_177_v72:
.space 4
label_151_v60:
.space 4
label_160_v64:
.space 4
label_158_v59:
.space 4
label_189_v76:
.space 4
label_202_v82:
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
# Original instruction: addiu $sp,$sp,-140
addiu $sp,$sp,-140
# Original instruction: addiu v0,$fp,-140
addiu $t5,$fp,-140
la $t0,label_28_v0
sw $t5,0($t0)
# Original instruction: li v1,2
li $t5,2
la $t0,label_27_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_27_v1
lw $t5,0($t5)
la $t4,label_28_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v2,$fp,-4
addiu $t5,$fp,-4
la $t0,label_34_v2
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: addi v3,$sp,0
addi $t5,$sp,0
la $t0,label_31_v3
sw $t5,0($t0)
# Original instruction: lw v4,0(v3)
la $t5,label_31_v3
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_33_v4
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sw v4,0(v2)
la $t5,label_33_v4
lw $t5,0($t5)
la $t4,label_34_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v5,$fp,-4
addiu $t5,$fp,-4
la $t0,label_36_v5
sw $t5,0($t0)
# Original instruction: lw v6,0(v5)
la $t5,label_36_v5
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_39_v6
sw $t4,0($t0)
# Original instruction: li v7,0
li $t5,0
la $t0,label_40_v7
sw $t5,0($t0)
# Original instruction: xor v8,v6,v7
la $t5,label_39_v6
lw $t5,0($t5)
la $t4,label_40_v7
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_44_v8
sw $t3,0($t0)
# Original instruction: sltiu v8,v8,1
la $t4,label_44_v8
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_44_v8
sw $t4,0($t0)
# Original instruction: beqz v8,label_2_END
la $t5,label_44_v8
lw $t5,0($t5)
beqz $t5,label_2_END
# Original instruction: li v9,0
li $t5,0
la $t0,label_47_v9
sw $t5,0($t0)
# Original instruction: addiu v10,$sp,-4
addiu $t5,$sp,-4
la $t0,label_48_v10
sw $t5,0($t0)
# Original instruction: sw v9,0(v10)
la $t5,label_47_v9
lw $t5,0($t5)
la $t4,label_48_v10
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: j main_epilogue
j main_epilogue
label_2_END:
# Original instruction: addiu v11,$fp,-4
addiu $t5,$fp,-4
la $t0,label_50_v11
sw $t5,0($t0)
# Original instruction: lw v12,0(v11)
la $t5,label_50_v11
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_53_v12
sw $t4,0($t0)
# Original instruction: addiu v13,$sp,-4
addiu $t5,$sp,-4
la $t0,label_54_v13
sw $t5,0($t0)
# Original instruction: sw v12,0(v13)
la $t5,label_53_v12
lw $t5,0($t5)
la $t4,label_54_v13
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v14,$fp,-132
addiu $t5,$fp,-132
la $t0,label_57_v14
sw $t5,0($t0)
# Original instruction: addiu v15,$sp,-8
addiu $t5,$sp,-8
la $t0,label_58_v15
sw $t5,0($t0)
# Original instruction: sw v14,0(v15)
la $t5,label_57_v14
lw $t5,0($t5)
la $t4,label_58_v15
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v16,$fp,-136
addiu $t5,$fp,-136
la $t0,label_61_v16
sw $t5,0($t0)
# Original instruction: addiu v17,$sp,-12
addiu $t5,$sp,-12
la $t0,label_62_v17
sw $t5,0($t0)
# Original instruction: sw v16,0(v17)
la $t5,label_61_v16
lw $t5,0($t5)
la $t4,label_62_v17
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: jal convert_to_binary
jal convert_to_binary
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
# Original instruction: addiu v18,$fp,-132
addiu $t5,$fp,-132
la $t0,label_65_v18
sw $t5,0($t0)
# Original instruction: addiu v19,$sp,-4
addiu $t5,$sp,-4
la $t0,label_66_v19
sw $t5,0($t0)
# Original instruction: sw v18,0(v19)
la $t5,label_65_v18
lw $t5,0($t5)
la $t4,label_66_v19
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v20,$fp,-136
addiu $t5,$fp,-136
la $t0,label_68_v20
sw $t5,0($t0)
# Original instruction: lw v21,0(v20)
la $t5,label_68_v20
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_71_v21
sw $t4,0($t0)
# Original instruction: addiu v22,$sp,-8
addiu $t5,$sp,-8
la $t0,label_72_v22
sw $t5,0($t0)
# Original instruction: sw v21,0(v22)
la $t5,label_71_v21
lw $t5,0($t5)
la $t4,label_72_v22
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: jal print_binary
jal print_binary
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
main_epilogue:
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

.text
convert_to_binary:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: pushRegisters
la $t0,label_116_v35
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v31
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_103_v38
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_107_v40
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_128_v48
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_95_v34
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_133_v51
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_96_v30
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_80_v26
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_122_v45
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_146_v56
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_113_v41
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_140_v49
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_145_v57
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_131_v50
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_110_v36
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v24
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_106_v39
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_126_v43
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_119_v44
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_142_v55
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_92_v32
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_115_v42
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_77_v25
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_74_v23
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_125_v47
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_84_v27
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_139_v54
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_148_v58
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_83_v28
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_93_v33
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_123_v46
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_101_v37
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_86_v29
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_136_v52
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_137_v53
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v23,$fp,4
addiu $t5,$fp,4
la $t0,label_74_v23
sw $t5,0($t0)
# Original instruction: lw v24,0(v23)
la $t5,label_74_v23
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_78_v24
sw $t4,0($t0)
# Original instruction: li v25,0
li $t5,0
la $t0,label_77_v25
sw $t5,0($t0)
# Original instruction: sw v25,0(v24)
la $t5,label_77_v25
lw $t5,0($t5)
la $t4,label_78_v24
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v26,$fp,12
addiu $t5,$fp,12
la $t0,label_80_v26
sw $t5,0($t0)
# Original instruction: lw v27,0(v26)
la $t5,label_80_v26
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_84_v27
sw $t4,0($t0)
# Original instruction: li v28,0
li $t5,0
la $t0,label_83_v28
sw $t5,0($t0)
# Original instruction: slt v29,v28,v27
la $t5,label_83_v28
lw $t5,0($t5)
la $t4,label_84_v27
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_86_v29
sw $t3,0($t0)
# Original instruction: beqz v29,label_7_next
la $t5,label_86_v29
lw $t5,0($t5)
beqz $t5,label_7_next
label_9_body:
# Original instruction: addiu v30,$fp,-4
addiu $t5,$fp,-4
la $t0,label_96_v30
sw $t5,0($t0)
# Original instruction: addiu v31,$fp,12
addiu $t5,$fp,12
la $t0,label_89_v31
sw $t5,0($t0)
# Original instruction: lw v32,0(v31)
la $t5,label_89_v31
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_92_v32
sw $t4,0($t0)
# Original instruction: li v33,2
li $t5,2
la $t0,label_93_v33
sw $t5,0($t0)
# Original instruction: div v32,v33
la $t5,label_92_v32
lw $t5,0($t5)
la $t4,label_93_v33
lw $t4,0($t4)
div $t5,$t4
# Original instruction: mfhi v34
mfhi $t5
la $t0,label_95_v34
sw $t5,0($t0)
# Original instruction: sw v34,0(v30)
la $t5,label_95_v34
lw $t5,0($t5)
la $t4,label_96_v30
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v36,$fp,8
addiu $t5,$fp,8
la $t0,label_110_v36
sw $t5,0($t0)
# Original instruction: lw v36,0(v36)
la $t4,label_110_v36
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_110_v36
sw $t4,0($t0)
# Original instruction: addiu v37,$fp,4
addiu $t5,$fp,4
la $t0,label_101_v37
sw $t5,0($t0)
# Original instruction: lw v38,0(v37)
la $t5,label_101_v37
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_103_v38
sw $t4,0($t0)
# Original instruction: lw v39,0(v38)
la $t5,label_103_v38
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_106_v39
sw $t4,0($t0)
# Original instruction: li v40,4
li $t5,4
la $t0,label_107_v40
sw $t5,0($t0)
# Original instruction: mul v35,v39,v40
la $t5,label_106_v39
lw $t5,0($t5)
la $t4,label_107_v40
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_116_v35
sw $t3,0($t0)
# Original instruction: add v35,v35,v36
la $t3,label_116_v35
lw $t3,0($t3)
la $t4,label_110_v36
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_116_v35
sw $t3,0($t0)
# Original instruction: addiu v41,$fp,-4
addiu $t5,$fp,-4
la $t0,label_113_v41
sw $t5,0($t0)
# Original instruction: lw v42,0(v41)
la $t5,label_113_v41
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_115_v42
sw $t4,0($t0)
# Original instruction: sw v42,0(v35)
la $t5,label_115_v42
lw $t5,0($t5)
la $t4,label_116_v35
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v43,$fp,12
addiu $t5,$fp,12
la $t0,label_126_v43
sw $t5,0($t0)
# Original instruction: addiu v44,$fp,12
addiu $t5,$fp,12
la $t0,label_119_v44
sw $t5,0($t0)
# Original instruction: lw v45,0(v44)
la $t5,label_119_v44
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_122_v45
sw $t4,0($t0)
# Original instruction: li v46,2
li $t5,2
la $t0,label_123_v46
sw $t5,0($t0)
# Original instruction: div v45,v46
la $t5,label_122_v45
lw $t5,0($t5)
la $t4,label_123_v46
lw $t4,0($t4)
div $t5,$t4
# Original instruction: mflo v47
mflo $t5
la $t0,label_125_v47
sw $t5,0($t0)
# Original instruction: sw v47,0(v43)
la $t5,label_125_v47
lw $t5,0($t5)
la $t4,label_126_v43
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v48,$fp,4
addiu $t5,$fp,4
la $t0,label_128_v48
sw $t5,0($t0)
# Original instruction: lw v49,0(v48)
la $t5,label_128_v48
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_140_v49
sw $t4,0($t0)
# Original instruction: addiu v50,$fp,4
addiu $t5,$fp,4
la $t0,label_131_v50
sw $t5,0($t0)
# Original instruction: lw v51,0(v50)
la $t5,label_131_v50
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_133_v51
sw $t4,0($t0)
# Original instruction: lw v52,0(v51)
la $t5,label_133_v51
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_136_v52
sw $t4,0($t0)
# Original instruction: li v53,1
li $t5,1
la $t0,label_137_v53
sw $t5,0($t0)
# Original instruction: add v54,v52,v53
la $t5,label_136_v52
lw $t5,0($t5)
la $t4,label_137_v53
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_139_v54
sw $t3,0($t0)
# Original instruction: sw v54,0(v49)
la $t5,label_139_v54
lw $t5,0($t5)
la $t4,label_140_v49
lw $t4,0($t4)
sw $t5,0($t4)
label_8_posttest:
# Original instruction: addiu v55,$fp,12
addiu $t5,$fp,12
la $t0,label_142_v55
sw $t5,0($t0)
# Original instruction: lw v56,0(v55)
la $t5,label_142_v55
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_146_v56
sw $t4,0($t0)
# Original instruction: li v57,0
li $t5,0
la $t0,label_145_v57
sw $t5,0($t0)
# Original instruction: slt v58,v57,v56
la $t5,label_145_v57
lw $t5,0($t5)
la $t4,label_146_v56
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_148_v58
sw $t3,0($t0)
# Original instruction: bnez v58,label_9_body
la $t5,label_148_v58
lw $t5,0($t5)
bnez $t5,label_9_body
label_7_next:
convert_to_binary_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_137_v53
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_136_v52
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_86_v29
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_101_v37
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_123_v46
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_93_v33
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_83_v28
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_148_v58
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_139_v54
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_84_v27
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_125_v47
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_74_v23
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_77_v25
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_115_v42
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_92_v32
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_142_v55
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_119_v44
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_126_v43
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_106_v39
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_78_v24
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_110_v36
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_131_v50
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_145_v57
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_140_v49
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_113_v41
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_146_v56
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_122_v45
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_80_v26
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_96_v30
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_133_v51
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_95_v34
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_128_v48
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_107_v40
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_103_v38
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_89_v31
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_116_v35
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
print_binary:
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
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: pushRegisters
la $t0,label_201_v81
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_192_v77
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_168_v67
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_206_v83
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_154_v61
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_196_v75
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_155_v62
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_157_v63
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_195_v79
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_164_v66
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_186_v74
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_180_v69
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_163_v65
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_173_v70
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_176_v71
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_193_v78
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_185_v73
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_198_v80
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_182_v68
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_177_v72
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_151_v60
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_160_v64
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_158_v59
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_189_v76
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_202_v82
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v59,$fp,-8
addiu $t5,$fp,-8
la $t0,label_158_v59
sw $t5,0($t0)
# Original instruction: addiu v60,$fp,4
addiu $t5,$fp,4
la $t0,label_151_v60
sw $t5,0($t0)
# Original instruction: lw v61,0(v60)
la $t5,label_151_v60
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_154_v61
sw $t4,0($t0)
# Original instruction: li v62,1
li $t5,1
la $t0,label_155_v62
sw $t5,0($t0)
# Original instruction: sub v63,v61,v62
la $t5,label_154_v61
lw $t5,0($t5)
la $t4,label_155_v62
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_157_v63
sw $t3,0($t0)
# Original instruction: sw v63,0(v59)
la $t5,label_157_v63
lw $t5,0($t5)
la $t4,label_158_v59
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v64,$fp,-8
addiu $t5,$fp,-8
la $t0,label_160_v64
sw $t5,0($t0)
# Original instruction: lw v65,0(v64)
la $t5,label_160_v64
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_163_v65
sw $t4,0($t0)
# Original instruction: li v66,0
li $t5,0
la $t0,label_164_v66
sw $t5,0($t0)
# Original instruction: slt v67,v65,v66
la $t5,label_163_v65
lw $t5,0($t5)
la $t4,label_164_v66
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_168_v67
sw $t3,0($t0)
# Original instruction: xori v67,v67,1
la $t4,label_168_v67
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_168_v67
sw $t4,0($t0)
# Original instruction: beqz v67,label_11_next
la $t5,label_168_v67
lw $t5,0($t5)
beqz $t5,label_11_next
label_13_body:
# Original instruction: addiu v69,$fp,8
addiu $t5,$fp,8
la $t0,label_180_v69
sw $t5,0($t0)
# Original instruction: lw v69,0(v69)
la $t4,label_180_v69
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_180_v69
sw $t4,0($t0)
# Original instruction: addiu v70,$fp,-8
addiu $t5,$fp,-8
la $t0,label_173_v70
sw $t5,0($t0)
# Original instruction: lw v71,0(v70)
la $t5,label_173_v70
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_176_v71
sw $t4,0($t0)
# Original instruction: li v72,4
li $t5,4
la $t0,label_177_v72
sw $t5,0($t0)
# Original instruction: mul v68,v71,v72
la $t5,label_176_v71
lw $t5,0($t5)
la $t4,label_177_v72
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_182_v68
sw $t3,0($t0)
# Original instruction: add v68,v68,v69
la $t3,label_182_v68
lw $t3,0($t3)
la $t4,label_180_v69
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_182_v68
sw $t3,0($t0)
# Original instruction: lw v73,0(v68)
la $t5,label_182_v68
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_185_v73
sw $t4,0($t0)
# Original instruction: addiu v74,$sp,-4
addiu $t5,$sp,-4
la $t0,label_186_v74
sw $t5,0($t0)
# Original instruction: sw v73,0(v74)
la $t5,label_185_v73
lw $t5,0($t5)
la $t4,label_186_v74
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v75,$fp,-8
addiu $t5,$fp,-8
la $t0,label_196_v75
sw $t5,0($t0)
# Original instruction: addiu v76,$fp,-8
addiu $t5,$fp,-8
la $t0,label_189_v76
sw $t5,0($t0)
# Original instruction: lw v77,0(v76)
la $t5,label_189_v76
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_192_v77
sw $t4,0($t0)
# Original instruction: li v78,1
li $t5,1
la $t0,label_193_v78
sw $t5,0($t0)
# Original instruction: sub v79,v77,v78
la $t5,label_192_v77
lw $t5,0($t5)
la $t4,label_193_v78
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_195_v79
sw $t3,0($t0)
# Original instruction: sw v79,0(v75)
la $t5,label_195_v79
lw $t5,0($t5)
la $t4,label_196_v75
lw $t4,0($t4)
sw $t5,0($t4)
label_12_posttest:
# Original instruction: addiu v80,$fp,-8
addiu $t5,$fp,-8
la $t0,label_198_v80
sw $t5,0($t0)
# Original instruction: lw v81,0(v80)
la $t5,label_198_v80
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_201_v81
sw $t4,0($t0)
# Original instruction: li v82,0
li $t5,0
la $t0,label_202_v82
sw $t5,0($t0)
# Original instruction: slt v83,v81,v82
la $t5,label_201_v81
lw $t5,0($t5)
la $t4,label_202_v82
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_206_v83
sw $t3,0($t0)
# Original instruction: xori v83,v83,1
la $t4,label_206_v83
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_206_v83
sw $t4,0($t0)
# Original instruction: bnez v83,label_13_body
la $t5,label_206_v83
lw $t5,0($t5)
bnez $t5,label_13_body
label_11_next:
print_binary_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_202_v82
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_189_v76
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_158_v59
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_160_v64
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_151_v60
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_177_v72
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_182_v68
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_198_v80
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_185_v73
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_193_v78
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_176_v71
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_173_v70
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_163_v65
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_180_v69
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_186_v74
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_164_v66
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_195_v79
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_157_v63
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_155_v62
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_196_v75
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_154_v61
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_206_v83
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_168_v67
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_192_v77
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_201_v81
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

