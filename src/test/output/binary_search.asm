.data
label_0_str:
.asciiz "Not found\n"
.align 2
label_1_str:
.asciiz "Found at index "
.align 2
label_2_str:
.asciiz "\n"
.align 2
# Allocated labels for virtual registers
label_112_v39:
.space 4
label_68_v17:
.space 4
label_45_v8:
.space 4
label_69_v18:
.space 4
label_111_v36:
.space 4
label_108_v37:
.space 4
label_102_v27:
.space 4
label_133_v48:
.space 4
label_61_v14:
.space 4
label_93_v30:
.space 4
label_77_v21:
.space 4
label_74_v20:
.space 4
label_33_v1:
.space 4
label_97_v32:
.space 4
label_96_v31:
.space 4
label_59_v13:
.space 4
label_48_v9:
.space 4
label_92_v29:
.space 4
label_49_v10:
.space 4
label_116_v40:
.space 4
label_71_v19:
.space 4
label_129_v46:
.space 4
label_58_v12:
.space 4
label_123_v43:
.space 4
label_104_v35:
.space 4
label_72_v15:
.space 4
label_124_v44:
.space 4
label_89_v28:
.space 4
label_130_v47:
.space 4
label_109_v38:
.space 4
label_85_v26:
.space 4
label_134_v49:
.space 4
label_126_v45:
.space 4
label_55_v11:
.space 4
label_99_v33:
.space 4
label_83_v25:
.space 4
label_42_v5:
.space 4
label_40_v4:
.space 4
label_120_v42:
.space 4
label_62_v6:
.space 4
label_80_v23:
.space 4
label_119_v41:
.space 4
label_101_v34:
.space 4
label_39_v3:
.space 4
label_86_v24:
.space 4
label_34_v0:
.space 4
label_52_v7:
.space 4
label_78_v22:
.space 4
label_36_v2:
.space 4
label_65_v16:
.space 4
# Allocated labels for virtual registers
label_262_v106:
.space 4
label_186_v74:
.space 4
label_178_v63:
.space 4
label_257_v105:
.space 4
label_230_v91:
.space 4
label_190_v72:
.space 4
label_216_v86:
.space 4
label_205_v81:
.space 4
label_233_v93:
.space 4
label_141_v53:
.space 4
label_162_v62:
.space 4
label_264_v107:
.space 4
label_157_v61:
.space 4
label_250_v97:
.space 4
label_247_v100:
.space 4
label_255_v104:
.space 4
label_168_v66:
.space 4
label_138_v50:
.space 4
label_258_v103:
.space 4
label_217_v87:
.space 4
label_171_v67:
.space 4
label_239_v96:
.space 4
label_146_v55:
.space 4
label_237_v95:
.space 4
label_227_v88:
.space 4
label_252_v102:
.space 4
label_195_v77:
.space 4
label_202_v79:
.space 4
label_149_v57:
.space 4
label_220_v84:
.space 4
label_152_v58:
.space 4
label_158_v59:
.space 4
label_236_v94:
.space 4
label_142_v52:
.space 4
label_207_v82:
.space 4
label_213_v85:
.space 4
label_192_v71:
.space 4
label_177_v70:
.space 4
label_165_v64:
.space 4
label_267_v108:
.space 4
label_268_v109:
.space 4
label_137_v51:
.space 4
label_170_v65:
.space 4
label_225_v89:
.space 4
label_243_v98:
.space 4
label_187_v75:
.space 4
label_175_v69:
.space 4
label_222_v83:
.space 4
label_197_v76:
.space 4
label_150_v54:
.space 4
label_249_v101:
.space 4
label_174_v68:
.space 4
label_240_v92:
.space 4
label_147_v56:
.space 4
label_155_v60:
.space 4
label_208_v80:
.space 4
label_228_v90:
.space 4
label_246_v99:
.space 4
label_183_v73:
.space 4
label_198_v78:
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
# Original instruction: addiu $sp,$sp,-52
addiu $sp,$sp,-52
# Original instruction: addiu v0,$fp,-48
addiu $t5,$fp,-48
la $t0,label_34_v0
sw $t5,0($t0)
# Original instruction: li v1,0
li $t5,0
la $t0,label_33_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_33_v1
lw $t5,0($t5)
la $t4,label_34_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v2,$fp,-48
addiu $t5,$fp,-48
la $t0,label_36_v2
sw $t5,0($t0)
# Original instruction: lw v3,0(v2)
la $t5,label_36_v2
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_39_v3
sw $t4,0($t0)
# Original instruction: li v4,10
li $t5,10
la $t0,label_40_v4
sw $t5,0($t0)
# Original instruction: slt v5,v3,v4
la $t5,label_39_v3
lw $t5,0($t5)
la $t4,label_40_v4
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_42_v5
sw $t3,0($t0)
# Original instruction: beqz v5,label_4_next
la $t5,label_42_v5
lw $t5,0($t5)
beqz $t5,label_4_next
label_6_body:
# Original instruction: addiu v7,$fp,-40
addiu $t5,$fp,-40
la $t0,label_52_v7
sw $t5,0($t0)
# Original instruction: addiu v8,$fp,-48
addiu $t5,$fp,-48
la $t0,label_45_v8
sw $t5,0($t0)
# Original instruction: lw v9,0(v8)
la $t5,label_45_v8
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_48_v9
sw $t4,0($t0)
# Original instruction: li v10,4
li $t5,4
la $t0,label_49_v10
sw $t5,0($t0)
# Original instruction: mul v6,v9,v10
la $t5,label_48_v9
lw $t5,0($t5)
la $t4,label_49_v10
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_62_v6
sw $t3,0($t0)
# Original instruction: add v6,v6,v7
la $t3,label_62_v6
lw $t3,0($t3)
la $t4,label_52_v7
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_62_v6
sw $t3,0($t0)
# Original instruction: addiu v11,$fp,-48
addiu $t5,$fp,-48
la $t0,label_55_v11
sw $t5,0($t0)
# Original instruction: lw v12,0(v11)
la $t5,label_55_v11
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_58_v12
sw $t4,0($t0)
# Original instruction: li v13,1
li $t5,1
la $t0,label_59_v13
sw $t5,0($t0)
# Original instruction: add v14,v12,v13
la $t5,label_58_v12
lw $t5,0($t5)
la $t4,label_59_v13
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_61_v14
sw $t3,0($t0)
# Original instruction: sw v14,0(v6)
la $t5,label_61_v14
lw $t5,0($t5)
la $t4,label_62_v6
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v15,$fp,-48
addiu $t5,$fp,-48
la $t0,label_72_v15
sw $t5,0($t0)
# Original instruction: addiu v16,$fp,-48
addiu $t5,$fp,-48
la $t0,label_65_v16
sw $t5,0($t0)
# Original instruction: lw v17,0(v16)
la $t5,label_65_v16
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_68_v17
sw $t4,0($t0)
# Original instruction: li v18,1
li $t5,1
la $t0,label_69_v18
sw $t5,0($t0)
# Original instruction: add v19,v17,v18
la $t5,label_68_v17
lw $t5,0($t5)
la $t4,label_69_v18
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_71_v19
sw $t3,0($t0)
# Original instruction: sw v19,0(v15)
la $t5,label_71_v19
lw $t5,0($t5)
la $t4,label_72_v15
lw $t4,0($t4)
sw $t5,0($t4)
label_5_posttest:
# Original instruction: addiu v20,$fp,-48
addiu $t5,$fp,-48
la $t0,label_74_v20
sw $t5,0($t0)
# Original instruction: lw v21,0(v20)
la $t5,label_74_v20
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_77_v21
sw $t4,0($t0)
# Original instruction: li v22,10
li $t5,10
la $t0,label_78_v22
sw $t5,0($t0)
# Original instruction: slt v23,v21,v22
la $t5,label_77_v21
lw $t5,0($t5)
la $t4,label_78_v22
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_80_v23
sw $t3,0($t0)
# Original instruction: bnez v23,label_6_body
la $t5,label_80_v23
lw $t5,0($t5)
bnez $t5,label_6_body
label_4_next:
# Original instruction: addiu v24,$fp,-44
addiu $t5,$fp,-44
la $t0,label_86_v24
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: addi v25,$sp,0
addi $t5,$sp,0
la $t0,label_83_v25
sw $t5,0($t0)
# Original instruction: lw v26,0(v25)
la $t5,label_83_v25
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_85_v26
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sw v26,0(v24)
la $t5,label_85_v26
lw $t5,0($t5)
la $t4,label_86_v24
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v27,$fp,-52
addiu $t5,$fp,-52
la $t0,label_102_v27
sw $t5,0($t0)
# Original instruction: addiu v28,$fp,-44
addiu $t5,$fp,-44
la $t0,label_89_v28
sw $t5,0($t0)
# Original instruction: lw v29,0(v28)
la $t5,label_89_v28
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_92_v29
sw $t4,0($t0)
# Original instruction: addiu v30,$sp,-4
addiu $t5,$sp,-4
la $t0,label_93_v30
sw $t5,0($t0)
# Original instruction: sw v29,0(v30)
la $t5,label_92_v29
lw $t5,0($t5)
la $t4,label_93_v30
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v31,$fp,-40
addiu $t5,$fp,-40
la $t0,label_96_v31
sw $t5,0($t0)
# Original instruction: addiu v32,$sp,-8
addiu $t5,$sp,-8
la $t0,label_97_v32
sw $t5,0($t0)
# Original instruction: sw v31,0(v32)
la $t5,label_96_v31
lw $t5,0($t5)
la $t4,label_97_v32
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal binary_search
jal binary_search
# Original instruction: addi v33,$sp,0
addi $t5,$sp,0
la $t0,label_99_v33
sw $t5,0($t0)
# Original instruction: lw v34,0(v33)
la $t5,label_99_v33
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_101_v34
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
# Original instruction: sw v34,0(v27)
la $t5,label_101_v34
lw $t5,0($t5)
la $t4,label_102_v27
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v35,$fp,-52
addiu $t5,$fp,-52
la $t0,label_104_v35
sw $t5,0($t0)
# Original instruction: lw v36,0(v35)
la $t5,label_104_v35
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_111_v36
sw $t4,0($t0)
# Original instruction: li v37,0
li $t5,0
la $t0,label_108_v37
sw $t5,0($t0)
# Original instruction: li v38,1
li $t5,1
la $t0,label_109_v38
sw $t5,0($t0)
# Original instruction: sub v39,v37,v38
la $t5,label_108_v37
lw $t5,0($t5)
la $t4,label_109_v38
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_112_v39
sw $t3,0($t0)
# Original instruction: xor v40,v36,v39
la $t5,label_111_v36
lw $t5,0($t5)
la $t4,label_112_v39
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_116_v40
sw $t3,0($t0)
# Original instruction: sltiu v40,v40,1
la $t4,label_116_v40
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_116_v40
sw $t4,0($t0)
# Original instruction: beqz v40,label_9_ELSE
la $t5,label_116_v40
lw $t5,0($t5)
beqz $t5,label_9_ELSE
# Original instruction: la v41,label_0_str
la $t5,label_0_str
la $t0,label_119_v41
sw $t5,0($t0)
# Original instruction: addiu v42,$sp,-4
addiu $t5,$sp,-4
la $t0,label_120_v42
sw $t5,0($t0)
# Original instruction: sw v41,0(v42)
la $t5,label_119_v41
lw $t5,0($t5)
la $t4,label_120_v42
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: j label_10_END
j label_10_END
label_9_ELSE:
# Original instruction: la v43,label_1_str
la $t5,label_1_str
la $t0,label_123_v43
sw $t5,0($t0)
# Original instruction: addiu v44,$sp,-4
addiu $t5,$sp,-4
la $t0,label_124_v44
sw $t5,0($t0)
# Original instruction: sw v43,0(v44)
la $t5,label_123_v43
lw $t5,0($t5)
la $t4,label_124_v44
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v45,$fp,-52
addiu $t5,$fp,-52
la $t0,label_126_v45
sw $t5,0($t0)
# Original instruction: lw v46,0(v45)
la $t5,label_126_v45
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_129_v46
sw $t4,0($t0)
# Original instruction: addiu v47,$sp,-4
addiu $t5,$sp,-4
la $t0,label_130_v47
sw $t5,0($t0)
# Original instruction: sw v46,0(v47)
la $t5,label_129_v46
lw $t5,0($t5)
la $t4,label_130_v47
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v48,label_2_str
la $t5,label_2_str
la $t0,label_133_v48
sw $t5,0($t0)
# Original instruction: addiu v49,$sp,-4
addiu $t5,$sp,-4
la $t0,label_134_v49
sw $t5,0($t0)
# Original instruction: sw v48,0(v49)
la $t5,label_133_v48
lw $t5,0($t5)
la $t4,label_134_v49
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
label_10_END:
main_epilogue:
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

.text
binary_search:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: pushRegisters
la $t0,label_262_v106
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_186_v74
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_178_v63
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_257_v105
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_230_v91
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_190_v72
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_216_v86
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_205_v81
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_233_v93
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_141_v53
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_162_v62
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_264_v107
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_157_v61
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_250_v97
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_247_v100
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_255_v104
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_168_v66
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_138_v50
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_258_v103
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_217_v87
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_171_v67
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_239_v96
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_146_v55
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_237_v95
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_227_v88
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_252_v102
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_195_v77
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_202_v79
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_149_v57
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_220_v84
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_152_v58
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_158_v59
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_236_v94
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_142_v52
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_207_v82
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_213_v85
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_192_v71
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_177_v70
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_165_v64
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_267_v108
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_268_v109
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_137_v51
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_170_v65
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_225_v89
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_243_v98
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_187_v75
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_175_v69
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_222_v83
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_197_v76
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_150_v54
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_249_v101
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_174_v68
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_240_v92
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_147_v56
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_155_v60
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_208_v80
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_228_v90
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_246_v99
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_183_v73
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_198_v78
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v50,$fp,-4
addiu $t5,$fp,-4
la $t0,label_138_v50
sw $t5,0($t0)
# Original instruction: li v51,0
li $t5,0
la $t0,label_137_v51
sw $t5,0($t0)
# Original instruction: sw v51,0(v50)
la $t5,label_137_v51
lw $t5,0($t5)
la $t4,label_138_v50
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v52,$fp,-8
addiu $t5,$fp,-8
la $t0,label_142_v52
sw $t5,0($t0)
# Original instruction: li v53,9
li $t5,9
la $t0,label_141_v53
sw $t5,0($t0)
# Original instruction: sw v53,0(v52)
la $t5,label_141_v53
lw $t5,0($t5)
la $t4,label_142_v52
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v54,$fp,-16
addiu $t5,$fp,-16
la $t0,label_150_v54
sw $t5,0($t0)
# Original instruction: li v55,0
li $t5,0
la $t0,label_146_v55
sw $t5,0($t0)
# Original instruction: li v56,1
li $t5,1
la $t0,label_147_v56
sw $t5,0($t0)
# Original instruction: sub v57,v55,v56
la $t5,label_146_v55
lw $t5,0($t5)
la $t4,label_147_v56
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_149_v57
sw $t3,0($t0)
# Original instruction: sw v57,0(v54)
la $t5,label_149_v57
lw $t5,0($t5)
la $t4,label_150_v54
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v58,$fp,-4
addiu $t5,$fp,-4
la $t0,label_152_v58
sw $t5,0($t0)
# Original instruction: lw v59,0(v58)
la $t5,label_152_v58
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_158_v59
sw $t4,0($t0)
# Original instruction: addiu v60,$fp,-8
addiu $t5,$fp,-8
la $t0,label_155_v60
sw $t5,0($t0)
# Original instruction: lw v61,0(v60)
la $t5,label_155_v60
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_157_v61
sw $t4,0($t0)
# Original instruction: slt v62,v61,v59
la $t5,label_157_v61
lw $t5,0($t5)
la $t4,label_158_v59
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_162_v62
sw $t3,0($t0)
# Original instruction: xori v62,v62,1
la $t4,label_162_v62
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_162_v62
sw $t4,0($t0)
# Original instruction: beqz v62,label_14_next
la $t5,label_162_v62
lw $t5,0($t5)
beqz $t5,label_14_next
label_16_body:
# Original instruction: addiu v63,$fp,-12
addiu $t5,$fp,-12
la $t0,label_178_v63
sw $t5,0($t0)
# Original instruction: addiu v64,$fp,-4
addiu $t5,$fp,-4
la $t0,label_165_v64
sw $t5,0($t0)
# Original instruction: lw v65,0(v64)
la $t5,label_165_v64
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_170_v65
sw $t4,0($t0)
# Original instruction: addiu v66,$fp,-8
addiu $t5,$fp,-8
la $t0,label_168_v66
sw $t5,0($t0)
# Original instruction: lw v67,0(v66)
la $t5,label_168_v66
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_171_v67
sw $t4,0($t0)
# Original instruction: add v68,v65,v67
la $t5,label_170_v65
lw $t5,0($t5)
la $t4,label_171_v67
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_174_v68
sw $t3,0($t0)
# Original instruction: li v69,2
li $t5,2
la $t0,label_175_v69
sw $t5,0($t0)
# Original instruction: div v68,v69
la $t5,label_174_v68
lw $t5,0($t5)
la $t4,label_175_v69
lw $t4,0($t4)
div $t5,$t4
# Original instruction: mflo v70
mflo $t5
la $t0,label_177_v70
sw $t5,0($t0)
# Original instruction: sw v70,0(v63)
la $t5,label_177_v70
lw $t5,0($t5)
la $t4,label_178_v63
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v72,$fp,8
addiu $t5,$fp,8
la $t0,label_190_v72
sw $t5,0($t0)
# Original instruction: lw v72,0(v72)
la $t4,label_190_v72
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_190_v72
sw $t4,0($t0)
# Original instruction: addiu v73,$fp,-12
addiu $t5,$fp,-12
la $t0,label_183_v73
sw $t5,0($t0)
# Original instruction: lw v74,0(v73)
la $t5,label_183_v73
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_186_v74
sw $t4,0($t0)
# Original instruction: li v75,4
li $t5,4
la $t0,label_187_v75
sw $t5,0($t0)
# Original instruction: mul v71,v74,v75
la $t5,label_186_v74
lw $t5,0($t5)
la $t4,label_187_v75
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_192_v71
sw $t3,0($t0)
# Original instruction: add v71,v71,v72
la $t3,label_192_v71
lw $t3,0($t3)
la $t4,label_190_v72
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_192_v71
sw $t3,0($t0)
# Original instruction: lw v76,0(v71)
la $t5,label_192_v71
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_197_v76
sw $t4,0($t0)
# Original instruction: addiu v77,$fp,12
addiu $t5,$fp,12
la $t0,label_195_v77
sw $t5,0($t0)
# Original instruction: lw v78,0(v77)
la $t5,label_195_v77
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_198_v78
sw $t4,0($t0)
# Original instruction: xor v79,v76,v78
la $t5,label_197_v76
lw $t5,0($t5)
la $t4,label_198_v78
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_202_v79
sw $t3,0($t0)
# Original instruction: sltiu v79,v79,1
la $t4,label_202_v79
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_202_v79
sw $t4,0($t0)
# Original instruction: beqz v79,label_17_ELSE
la $t5,label_202_v79
lw $t5,0($t5)
beqz $t5,label_17_ELSE
# Original instruction: addiu v80,$fp,-16
addiu $t5,$fp,-16
la $t0,label_208_v80
sw $t5,0($t0)
# Original instruction: addiu v81,$fp,-12
addiu $t5,$fp,-12
la $t0,label_205_v81
sw $t5,0($t0)
# Original instruction: lw v82,0(v81)
la $t5,label_205_v81
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_207_v82
sw $t4,0($t0)
# Original instruction: sw v82,0(v80)
la $t5,label_207_v82
lw $t5,0($t5)
la $t4,label_208_v80
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j label_14_next
j label_14_next
# Original instruction: j label_18_END
j label_18_END
label_17_ELSE:
# Original instruction: addiu v84,$fp,8
addiu $t5,$fp,8
la $t0,label_220_v84
sw $t5,0($t0)
# Original instruction: lw v84,0(v84)
la $t4,label_220_v84
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_220_v84
sw $t4,0($t0)
# Original instruction: addiu v85,$fp,-12
addiu $t5,$fp,-12
la $t0,label_213_v85
sw $t5,0($t0)
# Original instruction: lw v86,0(v85)
la $t5,label_213_v85
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_216_v86
sw $t4,0($t0)
# Original instruction: li v87,4
li $t5,4
la $t0,label_217_v87
sw $t5,0($t0)
# Original instruction: mul v83,v86,v87
la $t5,label_216_v86
lw $t5,0($t5)
la $t4,label_217_v87
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_222_v83
sw $t3,0($t0)
# Original instruction: add v83,v83,v84
la $t3,label_222_v83
lw $t3,0($t3)
la $t4,label_220_v84
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_222_v83
sw $t3,0($t0)
# Original instruction: lw v88,0(v83)
la $t5,label_222_v83
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_227_v88
sw $t4,0($t0)
# Original instruction: addiu v89,$fp,12
addiu $t5,$fp,12
la $t0,label_225_v89
sw $t5,0($t0)
# Original instruction: lw v90,0(v89)
la $t5,label_225_v89
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_228_v90
sw $t4,0($t0)
# Original instruction: slt v91,v88,v90
la $t5,label_227_v88
lw $t5,0($t5)
la $t4,label_228_v90
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_230_v91
sw $t3,0($t0)
# Original instruction: beqz v91,label_19_ELSE
la $t5,label_230_v91
lw $t5,0($t5)
beqz $t5,label_19_ELSE
# Original instruction: addiu v92,$fp,-4
addiu $t5,$fp,-4
la $t0,label_240_v92
sw $t5,0($t0)
# Original instruction: addiu v93,$fp,-12
addiu $t5,$fp,-12
la $t0,label_233_v93
sw $t5,0($t0)
# Original instruction: lw v94,0(v93)
la $t5,label_233_v93
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_236_v94
sw $t4,0($t0)
# Original instruction: li v95,1
li $t5,1
la $t0,label_237_v95
sw $t5,0($t0)
# Original instruction: add v96,v94,v95
la $t5,label_236_v94
lw $t5,0($t5)
la $t4,label_237_v95
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_239_v96
sw $t3,0($t0)
# Original instruction: sw v96,0(v92)
la $t5,label_239_v96
lw $t5,0($t5)
la $t4,label_240_v92
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j label_20_END
j label_20_END
label_19_ELSE:
# Original instruction: addiu v97,$fp,-8
addiu $t5,$fp,-8
la $t0,label_250_v97
sw $t5,0($t0)
# Original instruction: addiu v98,$fp,-12
addiu $t5,$fp,-12
la $t0,label_243_v98
sw $t5,0($t0)
# Original instruction: lw v99,0(v98)
la $t5,label_243_v98
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_246_v99
sw $t4,0($t0)
# Original instruction: li v100,1
li $t5,1
la $t0,label_247_v100
sw $t5,0($t0)
# Original instruction: sub v101,v99,v100
la $t5,label_246_v99
lw $t5,0($t5)
la $t4,label_247_v100
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_249_v101
sw $t3,0($t0)
# Original instruction: sw v101,0(v97)
la $t5,label_249_v101
lw $t5,0($t5)
la $t4,label_250_v97
lw $t4,0($t4)
sw $t5,0($t4)
label_20_END:
label_18_END:
label_15_posttest:
# Original instruction: addiu v102,$fp,-4
addiu $t5,$fp,-4
la $t0,label_252_v102
sw $t5,0($t0)
# Original instruction: lw v103,0(v102)
la $t5,label_252_v102
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_258_v103
sw $t4,0($t0)
# Original instruction: addiu v104,$fp,-8
addiu $t5,$fp,-8
la $t0,label_255_v104
sw $t5,0($t0)
# Original instruction: lw v105,0(v104)
la $t5,label_255_v104
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_257_v105
sw $t4,0($t0)
# Original instruction: slt v106,v105,v103
la $t5,label_257_v105
lw $t5,0($t5)
la $t4,label_258_v103
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_262_v106
sw $t3,0($t0)
# Original instruction: xori v106,v106,1
la $t4,label_262_v106
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_262_v106
sw $t4,0($t0)
# Original instruction: bnez v106,label_16_body
la $t5,label_262_v106
lw $t5,0($t5)
bnez $t5,label_16_body
label_14_next:
# Original instruction: addiu v107,$fp,-16
addiu $t5,$fp,-16
la $t0,label_264_v107
sw $t5,0($t0)
# Original instruction: lw v108,0(v107)
la $t5,label_264_v107
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_267_v108
sw $t4,0($t0)
# Original instruction: addi v109,$fp,4
addi $t5,$fp,4
la $t0,label_268_v109
sw $t5,0($t0)
# Original instruction: sw v108,0(v109)
la $t5,label_267_v108
lw $t5,0($t5)
la $t4,label_268_v109
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j binary_search_epilogue
j binary_search_epilogue
binary_search_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_198_v78
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_183_v73
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_246_v99
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_228_v90
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_208_v80
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_155_v60
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_147_v56
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_240_v92
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_174_v68
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_249_v101
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_150_v54
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_197_v76
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_222_v83
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_175_v69
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_187_v75
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_243_v98
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_225_v89
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_170_v65
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_137_v51
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_268_v109
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_267_v108
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_165_v64
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_177_v70
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_192_v71
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_213_v85
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_207_v82
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_142_v52
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_236_v94
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_158_v59
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_152_v58
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_220_v84
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_149_v57
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_202_v79
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_195_v77
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_252_v102
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_227_v88
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_237_v95
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_146_v55
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_239_v96
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_171_v67
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_217_v87
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_258_v103
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_138_v50
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_168_v66
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_255_v104
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_247_v100
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_250_v97
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_157_v61
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_264_v107
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_162_v62
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_141_v53
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_233_v93
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_205_v81
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_216_v86
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_190_v72
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_230_v91
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_257_v105
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_178_v63
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_186_v74
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_262_v106
sw $t0,0($t1)
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

