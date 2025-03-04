.data
label_0_str:
.asciiz "Hello, "
.align 2
label_1_str:
.asciiz "World!"
.align 2
label_2_str:
.asciiz "\n"
.align 2
# Allocated labels for virtual registers
label_44_v10:
.space 4
label_250_v93:
.space 4
label_199_v77:
.space 4
label_53_v11:
.space 4
label_132_v48:
.space 4
label_86_v29:
.space 4
label_229_v90:
.space 4
label_75_v20:
.space 4
label_119_v44:
.space 4
label_142_v53:
.space 4
label_113_v40:
.space 4
label_131_v47:
.space 4
label_73_v23:
.space 4
label_186_v69:
.space 4
label_202_v74:
.space 4
label_226_v84:
.space 4
label_249_v99:
.space 4
label_79_v25:
.space 4
label_94_v18:
.space 4
label_140_v50:
.space 4
label_145_v55:
.space 4
label_157_v58:
.space 4
label_28_v1:
.space 4
label_97_v32:
.space 4
label_47_v12:
.space 4
label_110_v38:
.space 4
label_33_v4:
.space 4
label_149_v57:
.space 4
label_89_v28:
.space 4
label_42_v7:
.space 4
label_125_v43:
.space 4
label_114_v36:
.space 4
label_69_v21:
.space 4
label_123_v46:
.space 4
label_111_v39:
.space 4
label_192_v61:
.space 4
label_93_v30:
.space 4
label_66_v19:
.space 4
label_243_v98:
.space 4
label_214_v85:
.space 4
label_245_v95:
.space 4
label_116_v42:
.space 4
label_31_v3:
.space 4
label_224_v88:
.space 4
label_136_v49:
.space 4
label_198_v76:
.space 4
label_180_v70:
.space 4
label_64_v17:
.space 4
label_184_v72:
.space 4
label_101_v34:
.space 4
label_189_v67:
.space 4
label_234_v92:
.space 4
label_209_v82:
.space 4
label_205_v80:
.space 4
label_191_v73:
.space 4
label_177_v68:
.space 4
label_104_v31:
.space 4
label_91_v24:
.space 4
label_212_v79:
.space 4
label_37_v6:
.space 4
label_201_v78:
.space 4
label_217_v87:
.space 4
label_51_v14:
.space 4
label_173_v63:
.space 4
label_54_v13:
.space 4
label_126_v45:
.space 4
label_154_v52:
.space 4
label_38_v5:
.space 4
label_34_v0:
.space 4
label_76_v22:
.space 4
label_171_v66:
.space 4
label_162_v60:
.space 4
label_230_v91:
.space 4
label_246_v97:
.space 4
label_256_v102:
.space 4
label_103_v35:
.space 4
label_223_v86:
.space 4
label_164_v62:
.space 4
label_236_v94:
.space 4
label_252_v100:
.space 4
label_174_v65:
.space 4
label_195_v75:
.space 4
label_208_v81:
.space 4
label_107_v37:
.space 4
label_88_v26:
.space 4
label_158_v59:
.space 4
label_221_v89:
.space 4
label_151_v54:
.space 4
label_239_v96:
.space 4
label_152_v56:
.space 4
label_29_v2:
.space 4
label_59_v15:
.space 4
label_100_v33:
.space 4
label_128_v41:
.space 4
label_139_v51:
.space 4
label_82_v27:
.space 4
label_60_v16:
.space 4
label_56_v9:
.space 4
label_187_v71:
.space 4
label_167_v64:
.space 4
label_41_v8:
.space 4
label_255_v101:
.space 4
label_211_v83:
.space 4
# Allocated labels for virtual registers
label_260_v103:
.space 4
label_281_v115:
.space 4
label_259_v104:
.space 4
label_264_v105:
.space 4
label_271_v110:
.space 4
label_284_v116:
.space 4
label_279_v114:
.space 4
label_291_v119:
.space 4
label_270_v109:
.space 4
label_288_v118:
.space 4
label_263_v106:
.space 4
label_287_v117:
.space 4
label_276_v112:
.space 4
label_273_v111:
.space 4
label_267_v108:
.space 4
label_277_v113:
.space 4
label_282_v107:
.space 4
label_292_v120:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
concatenate:
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
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: pushRegisters
la $t0,label_44_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_250_v93
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_199_v77
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_53_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_132_v48
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_86_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_229_v90
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_75_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_119_v44
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_142_v53
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_113_v40
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_131_v47
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_73_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_186_v69
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_202_v74
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_226_v84
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_249_v99
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_79_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_94_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_140_v50
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_145_v55
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_157_v58
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_97_v32
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_47_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_110_v38
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_33_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_149_v57
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_42_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_125_v43
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_114_v36
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_69_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_123_v46
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_111_v39
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_192_v61
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_93_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_66_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_243_v98
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_214_v85
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_245_v95
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_116_v42
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_31_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_224_v88
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_136_v49
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_198_v76
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_180_v70
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_64_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_184_v72
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_101_v34
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_189_v67
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_234_v92
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_209_v82
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_205_v80
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_191_v73
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_177_v68
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_104_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_91_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_212_v79
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_37_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_201_v78
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_217_v87
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_173_v63
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_54_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_126_v45
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_154_v52
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_34_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_76_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_171_v66
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_162_v60
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_230_v91
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_246_v97
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_256_v102
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_103_v35
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_223_v86
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_164_v62
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_236_v94
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_252_v100
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_174_v65
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_195_v75
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_208_v81
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_107_v37
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_88_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_158_v59
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_221_v89
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_151_v54
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_239_v96
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_152_v56
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_59_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_100_v33
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_128_v41
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_139_v51
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_82_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_60_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_187_v71
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_167_v64
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_255_v101
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_211_v83
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v0,$fp,-16
addiu $t5,$fp,-16
la $t0,label_34_v0
sw $t5,0($t0)
# Original instruction: li v1,100
li $t5,100
la $t0,label_28_v1
sw $t5,0($t0)
# Original instruction: addiu v2,$sp,-4
addiu $t5,$sp,-4
la $t0,label_29_v2
sw $t5,0($t0)
# Original instruction: sw v1,0(v2)
la $t5,label_28_v1
lw $t5,0($t5)
la $t4,label_29_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
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
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sw v4,0(v0)
la $t5,label_33_v4
lw $t5,0($t5)
la $t4,label_34_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v5,$fp,-8
addiu $t5,$fp,-8
la $t0,label_38_v5
sw $t5,0($t0)
# Original instruction: li v6,0
li $t5,0
la $t0,label_37_v6
sw $t5,0($t0)
# Original instruction: sw v6,0(v5)
la $t5,label_37_v6
lw $t5,0($t5)
la $t4,label_38_v5
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v7,$fp,-12
addiu $t5,$fp,-12
la $t0,label_42_v7
sw $t5,0($t0)
# Original instruction: li v8,0
li $t5,0
la $t0,label_41_v8
sw $t5,0($t0)
# Original instruction: sw v8,0(v7)
la $t5,label_41_v8
lw $t5,0($t5)
la $t4,label_42_v7
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v10,$fp,12
addiu $t5,$fp,12
la $t0,label_44_v10
sw $t5,0($t0)
# Original instruction: lw v11,0(v10)
la $t5,label_44_v10
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_53_v11
sw $t4,0($t0)
# Original instruction: addiu v12,$fp,-8
addiu $t5,$fp,-8
la $t0,label_47_v12
sw $t5,0($t0)
# Original instruction: lw v13,0(v12)
la $t5,label_47_v12
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_54_v13
sw $t4,0($t0)
# Original instruction: li v14,1
li $t5,1
la $t0,label_51_v14
sw $t5,0($t0)
# Original instruction: mul v13,v13,v14
la $t3,label_54_v13
lw $t3,0($t3)
la $t4,label_51_v14
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_54_v13
sw $t3,0($t0)
# Original instruction: add v9,v11,v13
la $t5,label_53_v11
lw $t5,0($t5)
la $t4,label_54_v13
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_56_v9
sw $t3,0($t0)
# Original instruction: lb v15,0(v9)
la $t5,label_56_v9
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_59_v15
sw $t4,0($t0)
# Original instruction: li v16,0
li $t5,0
la $t0,label_60_v16
sw $t5,0($t0)
# Original instruction: xor v17,v15,v16
la $t5,label_59_v15
lw $t5,0($t5)
la $t4,label_60_v16
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_64_v17
sw $t3,0($t0)
# Original instruction: sltu v17,$zero,v17
la $t4,label_64_v17
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_64_v17
sw $t4,0($t0)
# Original instruction: beqz v17,label_5_next
la $t5,label_64_v17
lw $t5,0($t5)
beqz $t5,label_5_next
label_7_body:
# Original instruction: addiu v19,$fp,-16
addiu $t5,$fp,-16
la $t0,label_66_v19
sw $t5,0($t0)
# Original instruction: lw v20,0(v19)
la $t5,label_66_v19
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_75_v20
sw $t4,0($t0)
# Original instruction: addiu v21,$fp,-12
addiu $t5,$fp,-12
la $t0,label_69_v21
sw $t5,0($t0)
# Original instruction: lw v22,0(v21)
la $t5,label_69_v21
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_76_v22
sw $t4,0($t0)
# Original instruction: li v23,1
li $t5,1
la $t0,label_73_v23
sw $t5,0($t0)
# Original instruction: mul v22,v22,v23
la $t3,label_76_v22
lw $t3,0($t3)
la $t4,label_73_v23
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_76_v22
sw $t3,0($t0)
# Original instruction: add v18,v20,v22
la $t5,label_75_v20
lw $t5,0($t5)
la $t4,label_76_v22
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_94_v18
sw $t3,0($t0)
# Original instruction: addiu v25,$fp,12
addiu $t5,$fp,12
la $t0,label_79_v25
sw $t5,0($t0)
# Original instruction: lw v26,0(v25)
la $t5,label_79_v25
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_88_v26
sw $t4,0($t0)
# Original instruction: addiu v27,$fp,-8
addiu $t5,$fp,-8
la $t0,label_82_v27
sw $t5,0($t0)
# Original instruction: lw v28,0(v27)
la $t5,label_82_v27
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_89_v28
sw $t4,0($t0)
# Original instruction: li v29,1
li $t5,1
la $t0,label_86_v29
sw $t5,0($t0)
# Original instruction: mul v28,v28,v29
la $t3,label_89_v28
lw $t3,0($t3)
la $t4,label_86_v29
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_89_v28
sw $t3,0($t0)
# Original instruction: add v24,v26,v28
la $t5,label_88_v26
lw $t5,0($t5)
la $t4,label_89_v28
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_91_v24
sw $t3,0($t0)
# Original instruction: lb v30,0(v24)
la $t5,label_91_v24
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_93_v30
sw $t4,0($t0)
# Original instruction: sb v30,0(v18)
la $t5,label_93_v30
lw $t5,0($t5)
la $t4,label_94_v18
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu v31,$fp,-8
addiu $t5,$fp,-8
la $t0,label_104_v31
sw $t5,0($t0)
# Original instruction: addiu v32,$fp,-8
addiu $t5,$fp,-8
la $t0,label_97_v32
sw $t5,0($t0)
# Original instruction: lw v33,0(v32)
la $t5,label_97_v32
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_100_v33
sw $t4,0($t0)
# Original instruction: li v34,1
li $t5,1
la $t0,label_101_v34
sw $t5,0($t0)
# Original instruction: add v35,v33,v34
la $t5,label_100_v33
lw $t5,0($t5)
la $t4,label_101_v34
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_103_v35
sw $t3,0($t0)
# Original instruction: sw v35,0(v31)
la $t5,label_103_v35
lw $t5,0($t5)
la $t4,label_104_v31
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v36,$fp,-12
addiu $t5,$fp,-12
la $t0,label_114_v36
sw $t5,0($t0)
# Original instruction: addiu v37,$fp,-12
addiu $t5,$fp,-12
la $t0,label_107_v37
sw $t5,0($t0)
# Original instruction: lw v38,0(v37)
la $t5,label_107_v37
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_110_v38
sw $t4,0($t0)
# Original instruction: li v39,1
li $t5,1
la $t0,label_111_v39
sw $t5,0($t0)
# Original instruction: add v40,v38,v39
la $t5,label_110_v38
lw $t5,0($t5)
la $t4,label_111_v39
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_113_v40
sw $t3,0($t0)
# Original instruction: sw v40,0(v36)
la $t5,label_113_v40
lw $t5,0($t5)
la $t4,label_114_v36
lw $t4,0($t4)
sw $t5,0($t4)
label_6_posttest:
# Original instruction: addiu v42,$fp,12
addiu $t5,$fp,12
la $t0,label_116_v42
sw $t5,0($t0)
# Original instruction: lw v43,0(v42)
la $t5,label_116_v42
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_125_v43
sw $t4,0($t0)
# Original instruction: addiu v44,$fp,-8
addiu $t5,$fp,-8
la $t0,label_119_v44
sw $t5,0($t0)
# Original instruction: lw v45,0(v44)
la $t5,label_119_v44
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_126_v45
sw $t4,0($t0)
# Original instruction: li v46,1
li $t5,1
la $t0,label_123_v46
sw $t5,0($t0)
# Original instruction: mul v45,v45,v46
la $t3,label_126_v45
lw $t3,0($t3)
la $t4,label_123_v46
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_126_v45
sw $t3,0($t0)
# Original instruction: add v41,v43,v45
la $t5,label_125_v43
lw $t5,0($t5)
la $t4,label_126_v45
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_128_v41
sw $t3,0($t0)
# Original instruction: lb v47,0(v41)
la $t5,label_128_v41
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_131_v47
sw $t4,0($t0)
# Original instruction: li v48,0
li $t5,0
la $t0,label_132_v48
sw $t5,0($t0)
# Original instruction: xor v49,v47,v48
la $t5,label_131_v47
lw $t5,0($t5)
la $t4,label_132_v48
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_136_v49
sw $t3,0($t0)
# Original instruction: sltu v49,$zero,v49
la $t4,label_136_v49
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_136_v49
sw $t4,0($t0)
# Original instruction: bnez v49,label_7_body
la $t5,label_136_v49
lw $t5,0($t5)
bnez $t5,label_7_body
label_5_next:
# Original instruction: addiu v50,$fp,-8
addiu $t5,$fp,-8
la $t0,label_140_v50
sw $t5,0($t0)
# Original instruction: li v51,0
li $t5,0
la $t0,label_139_v51
sw $t5,0($t0)
# Original instruction: sw v51,0(v50)
la $t5,label_139_v51
lw $t5,0($t5)
la $t4,label_140_v50
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v53,$fp,8
addiu $t5,$fp,8
la $t0,label_142_v53
sw $t5,0($t0)
# Original instruction: lw v54,0(v53)
la $t5,label_142_v53
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_151_v54
sw $t4,0($t0)
# Original instruction: addiu v55,$fp,-8
addiu $t5,$fp,-8
la $t0,label_145_v55
sw $t5,0($t0)
# Original instruction: lw v56,0(v55)
la $t5,label_145_v55
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_152_v56
sw $t4,0($t0)
# Original instruction: li v57,1
li $t5,1
la $t0,label_149_v57
sw $t5,0($t0)
# Original instruction: mul v56,v56,v57
la $t3,label_152_v56
lw $t3,0($t3)
la $t4,label_149_v57
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_152_v56
sw $t3,0($t0)
# Original instruction: add v52,v54,v56
la $t5,label_151_v54
lw $t5,0($t5)
la $t4,label_152_v56
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_154_v52
sw $t3,0($t0)
# Original instruction: lb v58,0(v52)
la $t5,label_154_v52
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_157_v58
sw $t4,0($t0)
# Original instruction: li v59,0
li $t5,0
la $t0,label_158_v59
sw $t5,0($t0)
# Original instruction: xor v60,v58,v59
la $t5,label_157_v58
lw $t5,0($t5)
la $t4,label_158_v59
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_162_v60
sw $t3,0($t0)
# Original instruction: sltu v60,$zero,v60
la $t4,label_162_v60
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_162_v60
sw $t4,0($t0)
# Original instruction: beqz v60,label_8_next
la $t5,label_162_v60
lw $t5,0($t5)
beqz $t5,label_8_next
label_10_body:
# Original instruction: addiu v62,$fp,-16
addiu $t5,$fp,-16
la $t0,label_164_v62
sw $t5,0($t0)
# Original instruction: lw v63,0(v62)
la $t5,label_164_v62
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_173_v63
sw $t4,0($t0)
# Original instruction: addiu v64,$fp,-12
addiu $t5,$fp,-12
la $t0,label_167_v64
sw $t5,0($t0)
# Original instruction: lw v65,0(v64)
la $t5,label_167_v64
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_174_v65
sw $t4,0($t0)
# Original instruction: li v66,1
li $t5,1
la $t0,label_171_v66
sw $t5,0($t0)
# Original instruction: mul v65,v65,v66
la $t3,label_174_v65
lw $t3,0($t3)
la $t4,label_171_v66
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_174_v65
sw $t3,0($t0)
# Original instruction: add v61,v63,v65
la $t5,label_173_v63
lw $t5,0($t5)
la $t4,label_174_v65
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_192_v61
sw $t3,0($t0)
# Original instruction: addiu v68,$fp,8
addiu $t5,$fp,8
la $t0,label_177_v68
sw $t5,0($t0)
# Original instruction: lw v69,0(v68)
la $t5,label_177_v68
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_186_v69
sw $t4,0($t0)
# Original instruction: addiu v70,$fp,-8
addiu $t5,$fp,-8
la $t0,label_180_v70
sw $t5,0($t0)
# Original instruction: lw v71,0(v70)
la $t5,label_180_v70
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_187_v71
sw $t4,0($t0)
# Original instruction: li v72,1
li $t5,1
la $t0,label_184_v72
sw $t5,0($t0)
# Original instruction: mul v71,v71,v72
la $t3,label_187_v71
lw $t3,0($t3)
la $t4,label_184_v72
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_187_v71
sw $t3,0($t0)
# Original instruction: add v67,v69,v71
la $t5,label_186_v69
lw $t5,0($t5)
la $t4,label_187_v71
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_189_v67
sw $t3,0($t0)
# Original instruction: lb v73,0(v67)
la $t5,label_189_v67
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_191_v73
sw $t4,0($t0)
# Original instruction: sb v73,0(v61)
la $t5,label_191_v73
lw $t5,0($t5)
la $t4,label_192_v61
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu v74,$fp,-8
addiu $t5,$fp,-8
la $t0,label_202_v74
sw $t5,0($t0)
# Original instruction: addiu v75,$fp,-8
addiu $t5,$fp,-8
la $t0,label_195_v75
sw $t5,0($t0)
# Original instruction: lw v76,0(v75)
la $t5,label_195_v75
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_198_v76
sw $t4,0($t0)
# Original instruction: li v77,1
li $t5,1
la $t0,label_199_v77
sw $t5,0($t0)
# Original instruction: add v78,v76,v77
la $t5,label_198_v76
lw $t5,0($t5)
la $t4,label_199_v77
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_201_v78
sw $t3,0($t0)
# Original instruction: sw v78,0(v74)
la $t5,label_201_v78
lw $t5,0($t5)
la $t4,label_202_v74
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v79,$fp,-12
addiu $t5,$fp,-12
la $t0,label_212_v79
sw $t5,0($t0)
# Original instruction: addiu v80,$fp,-12
addiu $t5,$fp,-12
la $t0,label_205_v80
sw $t5,0($t0)
# Original instruction: lw v81,0(v80)
la $t5,label_205_v80
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_208_v81
sw $t4,0($t0)
# Original instruction: li v82,1
li $t5,1
la $t0,label_209_v82
sw $t5,0($t0)
# Original instruction: add v83,v81,v82
la $t5,label_208_v81
lw $t5,0($t5)
la $t4,label_209_v82
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_211_v83
sw $t3,0($t0)
# Original instruction: sw v83,0(v79)
la $t5,label_211_v83
lw $t5,0($t5)
la $t4,label_212_v79
lw $t4,0($t4)
sw $t5,0($t4)
label_9_posttest:
# Original instruction: addiu v85,$fp,8
addiu $t5,$fp,8
la $t0,label_214_v85
sw $t5,0($t0)
# Original instruction: lw v86,0(v85)
la $t5,label_214_v85
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_223_v86
sw $t4,0($t0)
# Original instruction: addiu v87,$fp,-8
addiu $t5,$fp,-8
la $t0,label_217_v87
sw $t5,0($t0)
# Original instruction: lw v88,0(v87)
la $t5,label_217_v87
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_224_v88
sw $t4,0($t0)
# Original instruction: li v89,1
li $t5,1
la $t0,label_221_v89
sw $t5,0($t0)
# Original instruction: mul v88,v88,v89
la $t3,label_224_v88
lw $t3,0($t3)
la $t4,label_221_v89
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_224_v88
sw $t3,0($t0)
# Original instruction: add v84,v86,v88
la $t5,label_223_v86
lw $t5,0($t5)
la $t4,label_224_v88
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_226_v84
sw $t3,0($t0)
# Original instruction: lb v90,0(v84)
la $t5,label_226_v84
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_229_v90
sw $t4,0($t0)
# Original instruction: li v91,0
li $t5,0
la $t0,label_230_v91
sw $t5,0($t0)
# Original instruction: xor v92,v90,v91
la $t5,label_229_v90
lw $t5,0($t5)
la $t4,label_230_v91
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_234_v92
sw $t3,0($t0)
# Original instruction: sltu v92,$zero,v92
la $t4,label_234_v92
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_234_v92
sw $t4,0($t0)
# Original instruction: bnez v92,label_10_body
la $t5,label_234_v92
lw $t5,0($t5)
bnez $t5,label_10_body
label_8_next:
# Original instruction: addiu v94,$fp,-16
addiu $t5,$fp,-16
la $t0,label_236_v94
sw $t5,0($t0)
# Original instruction: lw v95,0(v94)
la $t5,label_236_v94
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_245_v95
sw $t4,0($t0)
# Original instruction: addiu v96,$fp,-12
addiu $t5,$fp,-12
la $t0,label_239_v96
sw $t5,0($t0)
# Original instruction: lw v97,0(v96)
la $t5,label_239_v96
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_246_v97
sw $t4,0($t0)
# Original instruction: li v98,1
li $t5,1
la $t0,label_243_v98
sw $t5,0($t0)
# Original instruction: mul v97,v97,v98
la $t3,label_246_v97
lw $t3,0($t3)
la $t4,label_243_v98
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_246_v97
sw $t3,0($t0)
# Original instruction: add v93,v95,v97
la $t5,label_245_v95
lw $t5,0($t5)
la $t4,label_246_v97
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_250_v93
sw $t3,0($t0)
# Original instruction: li v99,0
li $t5,0
la $t0,label_249_v99
sw $t5,0($t0)
# Original instruction: sb v99,0(v93)
la $t5,label_249_v99
lw $t5,0($t5)
la $t4,label_250_v93
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu v100,$fp,-16
addiu $t5,$fp,-16
la $t0,label_252_v100
sw $t5,0($t0)
# Original instruction: lw v101,0(v100)
la $t5,label_252_v100
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_255_v101
sw $t4,0($t0)
# Original instruction: addi v102,$fp,4
addi $t5,$fp,4
la $t0,label_256_v102
sw $t5,0($t0)
# Original instruction: sw v101,0(v102)
la $t5,label_255_v101
lw $t5,0($t5)
la $t4,label_256_v102
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j concatenate_epilogue
j concatenate_epilogue
concatenate_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_211_v83
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_255_v101
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_41_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_167_v64
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_187_v71
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_56_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_60_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_82_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_139_v51
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_128_v41
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_100_v33
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_59_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_29_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_152_v56
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_239_v96
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_151_v54
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_221_v89
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_158_v59
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_88_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_107_v37
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_208_v81
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_195_v75
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_174_v65
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_252_v100
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_236_v94
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_164_v62
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_223_v86
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_103_v35
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_256_v102
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_246_v97
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_230_v91
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_162_v60
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_171_v66
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_76_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_34_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_38_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_154_v52
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_126_v45
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_54_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_173_v63
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_51_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_217_v87
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_201_v78
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_37_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_212_v79
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_91_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_104_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_177_v68
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_191_v73
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_205_v80
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_209_v82
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_234_v92
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_189_v67
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_101_v34
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_184_v72
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_64_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_180_v70
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_198_v76
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_136_v49
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_224_v88
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_31_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_116_v42
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_245_v95
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_214_v85
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_243_v98
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_66_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_93_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_192_v61
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_111_v39
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_123_v46
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_69_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_114_v36
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_125_v43
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_42_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_89_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_149_v57
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_33_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_110_v38
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_47_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_97_v32
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_28_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_157_v58
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_145_v55
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_140_v50
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_94_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_79_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_249_v99
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_226_v84
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_202_v74
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_186_v69
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_73_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_131_v47
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_113_v40
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_142_v53
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_119_v44
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_75_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_229_v90
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_86_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_132_v48
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_53_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_199_v77
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_250_v93
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_44_v10
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
# Original instruction: addiu v103,$fp,-4
addiu $t5,$fp,-4
la $t0,label_260_v103
sw $t5,0($t0)
# Original instruction: la v104,label_0_str
la $t5,label_0_str
la $t0,label_259_v104
sw $t5,0($t0)
# Original instruction: sw v104,0(v103)
la $t5,label_259_v104
lw $t5,0($t5)
la $t4,label_260_v103
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v105,$fp,-8
addiu $t5,$fp,-8
la $t0,label_264_v105
sw $t5,0($t0)
# Original instruction: la v106,label_1_str
la $t5,label_1_str
la $t0,label_263_v106
sw $t5,0($t0)
# Original instruction: sw v106,0(v105)
la $t5,label_263_v106
lw $t5,0($t5)
la $t4,label_264_v105
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v107,$fp,-12
addiu $t5,$fp,-12
la $t0,label_282_v107
sw $t5,0($t0)
# Original instruction: addiu v108,$fp,-4
addiu $t5,$fp,-4
la $t0,label_267_v108
sw $t5,0($t0)
# Original instruction: lw v109,0(v108)
la $t5,label_267_v108
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_270_v109
sw $t4,0($t0)
# Original instruction: addiu v110,$sp,-4
addiu $t5,$sp,-4
la $t0,label_271_v110
sw $t5,0($t0)
# Original instruction: sw v109,0(v110)
la $t5,label_270_v109
lw $t5,0($t5)
la $t4,label_271_v110
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v111,$fp,-8
addiu $t5,$fp,-8
la $t0,label_273_v111
sw $t5,0($t0)
# Original instruction: lw v112,0(v111)
la $t5,label_273_v111
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_276_v112
sw $t4,0($t0)
# Original instruction: addiu v113,$sp,-8
addiu $t5,$sp,-8
la $t0,label_277_v113
sw $t5,0($t0)
# Original instruction: sw v112,0(v113)
la $t5,label_276_v112
lw $t5,0($t5)
la $t4,label_277_v113
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal concatenate
jal concatenate
# Original instruction: addi v114,$sp,0
addi $t5,$sp,0
la $t0,label_279_v114
sw $t5,0($t0)
# Original instruction: lw v115,0(v114)
la $t5,label_279_v114
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_281_v115
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
# Original instruction: sw v115,0(v107)
la $t5,label_281_v115
lw $t5,0($t5)
la $t4,label_282_v107
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v116,$fp,-12
addiu $t5,$fp,-12
la $t0,label_284_v116
sw $t5,0($t0)
# Original instruction: lw v117,0(v116)
la $t5,label_284_v116
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_287_v117
sw $t4,0($t0)
# Original instruction: addiu v118,$sp,-4
addiu $t5,$sp,-4
la $t0,label_288_v118
sw $t5,0($t0)
# Original instruction: sw v117,0(v118)
la $t5,label_287_v117
lw $t5,0($t5)
la $t4,label_288_v118
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v119,label_2_str
la $t5,label_2_str
la $t0,label_291_v119
sw $t5,0($t0)
# Original instruction: addiu v120,$sp,-4
addiu $t5,$sp,-4
la $t0,label_292_v120
sw $t5,0($t0)
# Original instruction: sw v119,0(v120)
la $t5,label_291_v119
lw $t5,0($t5)
la $t4,label_292_v120
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

