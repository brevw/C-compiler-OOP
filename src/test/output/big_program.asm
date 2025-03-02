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
label_144_v53:
.space 4
label_221_v88:
.space 4
label_230_v86:
.space 4
label_111_v38:
.space 4
label_257_v101:
.space 4
label_115_v40:
.space 4
label_205_v79:
.space 4
label_227_v87:
.space 4
label_148_v54:
.space 4
label_44_v8:
.space 4
label_164_v57:
.space 4
label_124_v44:
.space 4
label_192_v71:
.space 4
label_252_v94:
.space 4
label_214_v83:
.space 4
label_53_v13:
.space 4
label_193_v73:
.space 4
label_207_v80:
.space 4
label_135_v51:
.space 4
label_168_v63:
.space 4
label_211_v82:
.space 4
label_121_v43:
.space 4
label_162_v60:
.space 4
label_172_v64:
.space 4
label_128_v42:
.space 4
label_175_v67:
.space 4
label_182_v68:
.space 4
label_138_v50:
.space 4
label_38_v5:
.space 4
label_254_v100:
.space 4
label_30_v2:
.space 4
label_233_v91:
.space 4
label_89_v30:
.space 4
label_74_v18:
.space 4
label_234_v92:
.space 4
label_215_v84:
.space 4
label_152_v55:
.space 4
label_125_v45:
.space 4
label_69_v22:
.space 4
label_62_v16:
.space 4
label_100_v35:
.space 4
label_161_v58:
.space 4
label_218_v81:
.space 4
label_131_v49:
.space 4
label_37_v4:
.space 4
label_85_v28:
.space 4
label_118_v37:
.space 4
label_65_v20:
.space 4
label_245_v98:
.space 4
label_197_v75:
.space 4
label_72_v21:
.space 4
label_248_v97:
.space 4
label_198_v65:
.space 4
label_48_v10:
.space 4
label_143_v52:
.space 4
label_71_v19:
.space 4
label_241_v96:
.space 4
label_96_v33:
.space 4
label_247_v95:
.space 4
label_92_v29:
.space 4
label_54_v9:
.space 4
label_204_v78:
.space 4
label_155_v59:
.space 4
label_186_v72:
.space 4
label_238_v93:
.space 4
label_137_v48:
.space 4
label_140_v47:
.space 4
label_195_v70:
.space 4
label_103_v34:
.space 4
label_58_v14:
.space 4
label_190_v74:
.space 4
label_29_v1:
.space 4
label_26_v0:
.space 4
label_228_v89:
.space 4
label_251_v99:
.space 4
label_105_v31:
.space 4
label_78_v24:
.space 4
label_201_v77:
.space 4
label_91_v27:
.space 4
label_108_v26:
.space 4
label_35_v6:
.space 4
label_40_v3:
.space 4
label_117_v41:
.space 4
label_217_v85:
.space 4
label_167_v62:
.space 4
label_102_v32:
.space 4
label_61_v17:
.space 4
label_49_v11:
.space 4
label_151_v56:
.space 4
label_51_v12:
.space 4
label_107_v36:
.space 4
label_181_v66:
.space 4
label_159_v61:
.space 4
label_258_v102:
.space 4
label_77_v23:
.space 4
label_179_v69:
.space 4
label_57_v15:
.space 4
label_225_v90:
.space 4
label_114_v39:
.space 4
label_43_v7:
.space 4
label_127_v46:
.space 4
label_208_v76:
.space 4
label_82_v25:
.space 4
# Allocated labels for virtual registers
label_275_v111:
.space 4
label_289_v117:
.space 4
label_266_v105:
.space 4
label_294_v120:
.space 4
label_293_v119:
.space 4
label_290_v118:
.space 4
label_265_v106:
.space 4
label_284_v107:
.space 4
label_281_v114:
.space 4
label_269_v108:
.space 4
label_278_v112:
.space 4
label_286_v116:
.space 4
label_279_v113:
.space 4
label_261_v104:
.space 4
label_272_v109:
.space 4
label_262_v103:
.space 4
label_283_v115:
.space 4
label_273_v110:
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
la $t0,label_144_v53
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_221_v88
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_230_v86
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_111_v38
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_257_v101
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_115_v40
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_205_v79
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_227_v87
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_148_v54
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_44_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_164_v57
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_124_v44
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_192_v71
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_252_v94
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_214_v83
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_53_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_193_v73
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_207_v80
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_135_v51
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_168_v63
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_211_v82
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_121_v43
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_162_v60
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_172_v64
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_128_v42
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_175_v67
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_182_v68
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_138_v50
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_254_v100
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_30_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_233_v91
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_74_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_234_v92
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_215_v84
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_152_v55
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_125_v45
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_69_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_62_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_100_v35
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_161_v58
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_218_v81
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_131_v49
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_37_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_85_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_118_v37
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_65_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_245_v98
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_197_v75
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_72_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_248_v97
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_198_v65
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_48_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_143_v52
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_71_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_241_v96
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_96_v33
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_247_v95
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_92_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_54_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_204_v78
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_155_v59
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_186_v72
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_238_v93
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_137_v48
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_140_v47
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_195_v70
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_103_v34
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_58_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_190_v74
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_228_v89
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_251_v99
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_105_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_201_v77
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_91_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_108_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_35_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_117_v41
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_217_v85
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_167_v62
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_102_v32
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_61_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_151_v56
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_107_v36
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_181_v66
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_159_v61
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_258_v102
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_77_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_179_v69
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_57_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_225_v90
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_114_v39
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_43_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_127_v46
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_208_v76
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_82_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v0,$fp,12
addiu $t5,$fp,12
la $t0,label_26_v0
sw $t5,0($t0)
# Original instruction: lw v1,0(v0)
la $t5,label_26_v0
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_29_v1
sw $t4,0($t0)
# Original instruction: addiu v2,$sp,-4
addiu $t5,$sp,-4
la $t0,label_30_v2
sw $t5,0($t0)
# Original instruction: sw v1,0(v2)
la $t5,label_29_v1
lw $t5,0($t5)
la $t4,label_30_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v4,$fp,12
addiu $t5,$fp,12
la $t0,label_37_v4
sw $t5,0($t0)
# Original instruction: li v5,0
li $t5,0
la $t0,label_38_v5
sw $t5,0($t0)
# Original instruction: li v6,1
li $t5,1
la $t0,label_35_v6
sw $t5,0($t0)
# Original instruction: mul v5,v5,v6
la $t3,label_38_v5
lw $t3,0($t3)
la $t4,label_35_v6
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_38_v5
sw $t3,0($t0)
# Original instruction: add v3,v4,v5
la $t5,label_37_v4
lw $t5,0($t5)
la $t4,label_38_v5
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_40_v3
sw $t3,0($t0)
# Original instruction: lb v7,0(v3)
la $t5,label_40_v3
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_43_v7
sw $t4,0($t0)
# Original instruction: addiu v8,$sp,-4
addiu $t5,$sp,-4
la $t0,label_44_v8
sw $t5,0($t0)
# Original instruction: sb v7,0(v8)
la $t5,label_43_v7
lw $t5,0($t5)
la $t4,label_44_v8
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v9,$fp,-16
addiu $t5,$fp,-16
la $t0,label_54_v9
sw $t5,0($t0)
# Original instruction: li v10,100
li $t5,100
la $t0,label_48_v10
sw $t5,0($t0)
# Original instruction: addiu v11,$sp,-4
addiu $t5,$sp,-4
la $t0,label_49_v11
sw $t5,0($t0)
# Original instruction: sw v10,0(v11)
la $t5,label_48_v10
lw $t5,0($t5)
la $t4,label_49_v11
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
# Original instruction: addi v12,$sp,0
addi $t5,$sp,0
la $t0,label_51_v12
sw $t5,0($t0)
# Original instruction: lw v13,0(v12)
la $t5,label_51_v12
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_53_v13
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sw v13,0(v9)
la $t5,label_53_v13
lw $t5,0($t5)
la $t4,label_54_v9
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v14,$fp,-8
addiu $t5,$fp,-8
la $t0,label_58_v14
sw $t5,0($t0)
# Original instruction: li v15,0
li $t5,0
la $t0,label_57_v15
sw $t5,0($t0)
# Original instruction: sw v15,0(v14)
la $t5,label_57_v15
lw $t5,0($t5)
la $t4,label_58_v14
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v16,$fp,-12
addiu $t5,$fp,-12
la $t0,label_62_v16
sw $t5,0($t0)
# Original instruction: li v17,0
li $t5,0
la $t0,label_61_v17
sw $t5,0($t0)
# Original instruction: sw v17,0(v16)
la $t5,label_61_v17
lw $t5,0($t5)
la $t4,label_62_v16
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v19,$fp,12
addiu $t5,$fp,12
la $t0,label_71_v19
sw $t5,0($t0)
# Original instruction: addiu v20,$fp,-8
addiu $t5,$fp,-8
la $t0,label_65_v20
sw $t5,0($t0)
# Original instruction: lw v21,0(v20)
la $t5,label_65_v20
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_72_v21
sw $t4,0($t0)
# Original instruction: li v22,1
li $t5,1
la $t0,label_69_v22
sw $t5,0($t0)
# Original instruction: mul v21,v21,v22
la $t3,label_72_v21
lw $t3,0($t3)
la $t4,label_69_v22
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_72_v21
sw $t3,0($t0)
# Original instruction: add v18,v19,v21
la $t5,label_71_v19
lw $t5,0($t5)
la $t4,label_72_v21
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_74_v18
sw $t3,0($t0)
# Original instruction: lb v23,0(v18)
la $t5,label_74_v18
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_77_v23
sw $t4,0($t0)
# Original instruction: li v24,0
li $t5,0
la $t0,label_78_v24
sw $t5,0($t0)
# Original instruction: xor v25,v23,v24
la $t5,label_77_v23
lw $t5,0($t5)
la $t4,label_78_v24
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_82_v25
sw $t3,0($t0)
# Original instruction: sltu v25,$zero,v25
la $t4,label_82_v25
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_82_v25
sw $t4,0($t0)
# Original instruction: beqz v25,label_7_next
la $t5,label_82_v25
lw $t5,0($t5)
beqz $t5,label_7_next
label_9_body:
# Original instruction: addiu v27,$fp,-16
addiu $t5,$fp,-16
la $t0,label_91_v27
sw $t5,0($t0)
# Original instruction: addiu v28,$fp,-12
addiu $t5,$fp,-12
la $t0,label_85_v28
sw $t5,0($t0)
# Original instruction: lw v29,0(v28)
la $t5,label_85_v28
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_92_v29
sw $t4,0($t0)
# Original instruction: li v30,1
li $t5,1
la $t0,label_89_v30
sw $t5,0($t0)
# Original instruction: mul v29,v29,v30
la $t3,label_92_v29
lw $t3,0($t3)
la $t4,label_89_v30
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_92_v29
sw $t3,0($t0)
# Original instruction: add v26,v27,v29
la $t5,label_91_v27
lw $t5,0($t5)
la $t4,label_92_v29
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_108_v26
sw $t3,0($t0)
# Original instruction: addiu v32,$fp,12
addiu $t5,$fp,12
la $t0,label_102_v32
sw $t5,0($t0)
# Original instruction: addiu v33,$fp,-8
addiu $t5,$fp,-8
la $t0,label_96_v33
sw $t5,0($t0)
# Original instruction: lw v34,0(v33)
la $t5,label_96_v33
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_103_v34
sw $t4,0($t0)
# Original instruction: li v35,1
li $t5,1
la $t0,label_100_v35
sw $t5,0($t0)
# Original instruction: mul v34,v34,v35
la $t3,label_103_v34
lw $t3,0($t3)
la $t4,label_100_v35
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_103_v34
sw $t3,0($t0)
# Original instruction: add v31,v32,v34
la $t5,label_102_v32
lw $t5,0($t5)
la $t4,label_103_v34
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_105_v31
sw $t3,0($t0)
# Original instruction: lb v36,0(v31)
la $t5,label_105_v31
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_107_v36
sw $t4,0($t0)
# Original instruction: sb v36,0(v26)
la $t5,label_107_v36
lw $t5,0($t5)
la $t4,label_108_v26
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu v37,$fp,-8
addiu $t5,$fp,-8
la $t0,label_118_v37
sw $t5,0($t0)
# Original instruction: addiu v38,$fp,-8
addiu $t5,$fp,-8
la $t0,label_111_v38
sw $t5,0($t0)
# Original instruction: lw v39,0(v38)
la $t5,label_111_v38
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_114_v39
sw $t4,0($t0)
# Original instruction: li v40,1
li $t5,1
la $t0,label_115_v40
sw $t5,0($t0)
# Original instruction: add v41,v39,v40
la $t5,label_114_v39
lw $t5,0($t5)
la $t4,label_115_v40
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_117_v41
sw $t3,0($t0)
# Original instruction: sw v41,0(v37)
la $t5,label_117_v41
lw $t5,0($t5)
la $t4,label_118_v37
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v42,$fp,-12
addiu $t5,$fp,-12
la $t0,label_128_v42
sw $t5,0($t0)
# Original instruction: addiu v43,$fp,-12
addiu $t5,$fp,-12
la $t0,label_121_v43
sw $t5,0($t0)
# Original instruction: lw v44,0(v43)
la $t5,label_121_v43
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_124_v44
sw $t4,0($t0)
# Original instruction: li v45,1
li $t5,1
la $t0,label_125_v45
sw $t5,0($t0)
# Original instruction: add v46,v44,v45
la $t5,label_124_v44
lw $t5,0($t5)
la $t4,label_125_v45
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_127_v46
sw $t3,0($t0)
# Original instruction: sw v46,0(v42)
la $t5,label_127_v46
lw $t5,0($t5)
la $t4,label_128_v42
lw $t4,0($t4)
sw $t5,0($t4)
label_8_posttest:
# Original instruction: addiu v48,$fp,12
addiu $t5,$fp,12
la $t0,label_137_v48
sw $t5,0($t0)
# Original instruction: addiu v49,$fp,-8
addiu $t5,$fp,-8
la $t0,label_131_v49
sw $t5,0($t0)
# Original instruction: lw v50,0(v49)
la $t5,label_131_v49
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_138_v50
sw $t4,0($t0)
# Original instruction: li v51,1
li $t5,1
la $t0,label_135_v51
sw $t5,0($t0)
# Original instruction: mul v50,v50,v51
la $t3,label_138_v50
lw $t3,0($t3)
la $t4,label_135_v51
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_138_v50
sw $t3,0($t0)
# Original instruction: add v47,v48,v50
la $t5,label_137_v48
lw $t5,0($t5)
la $t4,label_138_v50
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_140_v47
sw $t3,0($t0)
# Original instruction: lb v52,0(v47)
la $t5,label_140_v47
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_143_v52
sw $t4,0($t0)
# Original instruction: li v53,0
li $t5,0
la $t0,label_144_v53
sw $t5,0($t0)
# Original instruction: xor v54,v52,v53
la $t5,label_143_v52
lw $t5,0($t5)
la $t4,label_144_v53
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_148_v54
sw $t3,0($t0)
# Original instruction: sltu v54,$zero,v54
la $t4,label_148_v54
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_148_v54
sw $t4,0($t0)
# Original instruction: bnez v54,label_9_body
la $t5,label_148_v54
lw $t5,0($t5)
bnez $t5,label_9_body
label_7_next:
# Original instruction: addiu v55,$fp,-8
addiu $t5,$fp,-8
la $t0,label_152_v55
sw $t5,0($t0)
# Original instruction: li v56,0
li $t5,0
la $t0,label_151_v56
sw $t5,0($t0)
# Original instruction: sw v56,0(v55)
la $t5,label_151_v56
lw $t5,0($t5)
la $t4,label_152_v55
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v58,$fp,8
addiu $t5,$fp,8
la $t0,label_161_v58
sw $t5,0($t0)
# Original instruction: addiu v59,$fp,-8
addiu $t5,$fp,-8
la $t0,label_155_v59
sw $t5,0($t0)
# Original instruction: lw v60,0(v59)
la $t5,label_155_v59
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_162_v60
sw $t4,0($t0)
# Original instruction: li v61,1
li $t5,1
la $t0,label_159_v61
sw $t5,0($t0)
# Original instruction: mul v60,v60,v61
la $t3,label_162_v60
lw $t3,0($t3)
la $t4,label_159_v61
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_162_v60
sw $t3,0($t0)
# Original instruction: add v57,v58,v60
la $t5,label_161_v58
lw $t5,0($t5)
la $t4,label_162_v60
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_164_v57
sw $t3,0($t0)
# Original instruction: lb v62,0(v57)
la $t5,label_164_v57
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_167_v62
sw $t4,0($t0)
# Original instruction: li v63,0
li $t5,0
la $t0,label_168_v63
sw $t5,0($t0)
# Original instruction: xor v64,v62,v63
la $t5,label_167_v62
lw $t5,0($t5)
la $t4,label_168_v63
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_172_v64
sw $t3,0($t0)
# Original instruction: sltu v64,$zero,v64
la $t4,label_172_v64
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_172_v64
sw $t4,0($t0)
# Original instruction: beqz v64,label_10_next
la $t5,label_172_v64
lw $t5,0($t5)
beqz $t5,label_10_next
label_12_body:
# Original instruction: addiu v66,$fp,-16
addiu $t5,$fp,-16
la $t0,label_181_v66
sw $t5,0($t0)
# Original instruction: addiu v67,$fp,-12
addiu $t5,$fp,-12
la $t0,label_175_v67
sw $t5,0($t0)
# Original instruction: lw v68,0(v67)
la $t5,label_175_v67
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_182_v68
sw $t4,0($t0)
# Original instruction: li v69,1
li $t5,1
la $t0,label_179_v69
sw $t5,0($t0)
# Original instruction: mul v68,v68,v69
la $t3,label_182_v68
lw $t3,0($t3)
la $t4,label_179_v69
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_182_v68
sw $t3,0($t0)
# Original instruction: add v65,v66,v68
la $t5,label_181_v66
lw $t5,0($t5)
la $t4,label_182_v68
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_198_v65
sw $t3,0($t0)
# Original instruction: addiu v71,$fp,8
addiu $t5,$fp,8
la $t0,label_192_v71
sw $t5,0($t0)
# Original instruction: addiu v72,$fp,-8
addiu $t5,$fp,-8
la $t0,label_186_v72
sw $t5,0($t0)
# Original instruction: lw v73,0(v72)
la $t5,label_186_v72
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_193_v73
sw $t4,0($t0)
# Original instruction: li v74,1
li $t5,1
la $t0,label_190_v74
sw $t5,0($t0)
# Original instruction: mul v73,v73,v74
la $t3,label_193_v73
lw $t3,0($t3)
la $t4,label_190_v74
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_193_v73
sw $t3,0($t0)
# Original instruction: add v70,v71,v73
la $t5,label_192_v71
lw $t5,0($t5)
la $t4,label_193_v73
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_195_v70
sw $t3,0($t0)
# Original instruction: lb v75,0(v70)
la $t5,label_195_v70
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_197_v75
sw $t4,0($t0)
# Original instruction: sb v75,0(v65)
la $t5,label_197_v75
lw $t5,0($t5)
la $t4,label_198_v65
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu v76,$fp,-8
addiu $t5,$fp,-8
la $t0,label_208_v76
sw $t5,0($t0)
# Original instruction: addiu v77,$fp,-8
addiu $t5,$fp,-8
la $t0,label_201_v77
sw $t5,0($t0)
# Original instruction: lw v78,0(v77)
la $t5,label_201_v77
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_204_v78
sw $t4,0($t0)
# Original instruction: li v79,1
li $t5,1
la $t0,label_205_v79
sw $t5,0($t0)
# Original instruction: add v80,v78,v79
la $t5,label_204_v78
lw $t5,0($t5)
la $t4,label_205_v79
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_207_v80
sw $t3,0($t0)
# Original instruction: sw v80,0(v76)
la $t5,label_207_v80
lw $t5,0($t5)
la $t4,label_208_v76
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v81,$fp,-12
addiu $t5,$fp,-12
la $t0,label_218_v81
sw $t5,0($t0)
# Original instruction: addiu v82,$fp,-12
addiu $t5,$fp,-12
la $t0,label_211_v82
sw $t5,0($t0)
# Original instruction: lw v83,0(v82)
la $t5,label_211_v82
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_214_v83
sw $t4,0($t0)
# Original instruction: li v84,1
li $t5,1
la $t0,label_215_v84
sw $t5,0($t0)
# Original instruction: add v85,v83,v84
la $t5,label_214_v83
lw $t5,0($t5)
la $t4,label_215_v84
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_217_v85
sw $t3,0($t0)
# Original instruction: sw v85,0(v81)
la $t5,label_217_v85
lw $t5,0($t5)
la $t4,label_218_v81
lw $t4,0($t4)
sw $t5,0($t4)
label_11_posttest:
# Original instruction: addiu v87,$fp,8
addiu $t5,$fp,8
la $t0,label_227_v87
sw $t5,0($t0)
# Original instruction: addiu v88,$fp,-8
addiu $t5,$fp,-8
la $t0,label_221_v88
sw $t5,0($t0)
# Original instruction: lw v89,0(v88)
la $t5,label_221_v88
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_228_v89
sw $t4,0($t0)
# Original instruction: li v90,1
li $t5,1
la $t0,label_225_v90
sw $t5,0($t0)
# Original instruction: mul v89,v89,v90
la $t3,label_228_v89
lw $t3,0($t3)
la $t4,label_225_v90
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_228_v89
sw $t3,0($t0)
# Original instruction: add v86,v87,v89
la $t5,label_227_v87
lw $t5,0($t5)
la $t4,label_228_v89
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_230_v86
sw $t3,0($t0)
# Original instruction: lb v91,0(v86)
la $t5,label_230_v86
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_233_v91
sw $t4,0($t0)
# Original instruction: li v92,0
li $t5,0
la $t0,label_234_v92
sw $t5,0($t0)
# Original instruction: xor v93,v91,v92
la $t5,label_233_v91
lw $t5,0($t5)
la $t4,label_234_v92
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_238_v93
sw $t3,0($t0)
# Original instruction: sltu v93,$zero,v93
la $t4,label_238_v93
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_238_v93
sw $t4,0($t0)
# Original instruction: bnez v93,label_12_body
la $t5,label_238_v93
lw $t5,0($t5)
bnez $t5,label_12_body
label_10_next:
# Original instruction: addiu v95,$fp,-16
addiu $t5,$fp,-16
la $t0,label_247_v95
sw $t5,0($t0)
# Original instruction: addiu v96,$fp,-12
addiu $t5,$fp,-12
la $t0,label_241_v96
sw $t5,0($t0)
# Original instruction: lw v97,0(v96)
la $t5,label_241_v96
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_248_v97
sw $t4,0($t0)
# Original instruction: li v98,1
li $t5,1
la $t0,label_245_v98
sw $t5,0($t0)
# Original instruction: mul v97,v97,v98
la $t3,label_248_v97
lw $t3,0($t3)
la $t4,label_245_v98
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_248_v97
sw $t3,0($t0)
# Original instruction: add v94,v95,v97
la $t5,label_247_v95
lw $t5,0($t5)
la $t4,label_248_v97
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_252_v94
sw $t3,0($t0)
# Original instruction: li v99,0
li $t5,0
la $t0,label_251_v99
sw $t5,0($t0)
# Original instruction: sb v99,0(v94)
la $t5,label_251_v99
lw $t5,0($t5)
la $t4,label_252_v94
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu v100,$fp,-16
addiu $t5,$fp,-16
la $t0,label_254_v100
sw $t5,0($t0)
# Original instruction: lw v101,0(v100)
la $t5,label_254_v100
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_257_v101
sw $t4,0($t0)
# Original instruction: addi v102,$fp,4
addi $t5,$fp,4
la $t0,label_258_v102
sw $t5,0($t0)
# Original instruction: sw v101,0(v102)
la $t5,label_257_v101
lw $t5,0($t5)
la $t4,label_258_v102
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j concatenate_epilogue
j concatenate_epilogue
concatenate_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_82_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_208_v76
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_127_v46
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_43_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_114_v39
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_225_v90
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_57_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_179_v69
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_77_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_258_v102
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_159_v61
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_181_v66
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_107_v36
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_51_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_151_v56
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_49_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_61_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_102_v32
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_167_v62
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_217_v85
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_117_v41
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_40_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_35_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_108_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_91_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_201_v77
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_78_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_105_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_251_v99
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_228_v89
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_26_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_29_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_190_v74
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_58_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_103_v34
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_195_v70
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_140_v47
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_137_v48
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_238_v93
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_186_v72
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_155_v59
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_204_v78
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_54_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_92_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_247_v95
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_96_v33
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_241_v96
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_71_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_143_v52
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_48_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_198_v65
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_248_v97
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_72_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_197_v75
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_245_v98
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_65_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_118_v37
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_85_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_37_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_131_v49
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_218_v81
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_161_v58
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_100_v35
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_62_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_69_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_125_v45
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_152_v55
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_215_v84
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_234_v92
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_74_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_89_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_233_v91
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_30_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_254_v100
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_38_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_138_v50
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_182_v68
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_175_v67
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_128_v42
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_172_v64
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_162_v60
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_121_v43
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_211_v82
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_168_v63
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_135_v51
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_207_v80
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_193_v73
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_53_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_214_v83
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_252_v94
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_192_v71
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_124_v44
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_164_v57
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_44_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_148_v54
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_227_v87
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_205_v79
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_115_v40
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_257_v101
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_111_v38
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_230_v86
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_221_v88
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_144_v53
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
la $t0,label_262_v103
sw $t5,0($t0)
# Original instruction: la v104,label_0_str
la $t5,label_0_str
la $t0,label_261_v104
sw $t5,0($t0)
# Original instruction: sw v104,0(v103)
la $t5,label_261_v104
lw $t5,0($t5)
la $t4,label_262_v103
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v105,$fp,-8
addiu $t5,$fp,-8
la $t0,label_266_v105
sw $t5,0($t0)
# Original instruction: la v106,label_1_str
la $t5,label_1_str
la $t0,label_265_v106
sw $t5,0($t0)
# Original instruction: sw v106,0(v105)
la $t5,label_265_v106
lw $t5,0($t5)
la $t4,label_266_v105
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v107,$fp,-12
addiu $t5,$fp,-12
la $t0,label_284_v107
sw $t5,0($t0)
# Original instruction: addiu v108,$fp,-4
addiu $t5,$fp,-4
la $t0,label_269_v108
sw $t5,0($t0)
# Original instruction: lw v109,0(v108)
la $t5,label_269_v108
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_272_v109
sw $t4,0($t0)
# Original instruction: addiu v110,$sp,-4
addiu $t5,$sp,-4
la $t0,label_273_v110
sw $t5,0($t0)
# Original instruction: sw v109,0(v110)
la $t5,label_272_v109
lw $t5,0($t5)
la $t4,label_273_v110
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v111,$fp,-8
addiu $t5,$fp,-8
la $t0,label_275_v111
sw $t5,0($t0)
# Original instruction: lw v112,0(v111)
la $t5,label_275_v111
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_278_v112
sw $t4,0($t0)
# Original instruction: addiu v113,$sp,-8
addiu $t5,$sp,-8
la $t0,label_279_v113
sw $t5,0($t0)
# Original instruction: sw v112,0(v113)
la $t5,label_278_v112
lw $t5,0($t5)
la $t4,label_279_v113
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
la $t0,label_281_v114
sw $t5,0($t0)
# Original instruction: lw v115,0(v114)
la $t5,label_281_v114
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_283_v115
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
# Original instruction: sw v115,0(v107)
la $t5,label_283_v115
lw $t5,0($t5)
la $t4,label_284_v107
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v116,$fp,-12
addiu $t5,$fp,-12
la $t0,label_286_v116
sw $t5,0($t0)
# Original instruction: lw v117,0(v116)
la $t5,label_286_v116
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_289_v117
sw $t4,0($t0)
# Original instruction: addiu v118,$sp,-4
addiu $t5,$sp,-4
la $t0,label_290_v118
sw $t5,0($t0)
# Original instruction: sw v117,0(v118)
la $t5,label_289_v117
lw $t5,0($t5)
la $t4,label_290_v118
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
la $t0,label_293_v119
sw $t5,0($t0)
# Original instruction: addiu v120,$sp,-4
addiu $t5,$sp,-4
la $t0,label_294_v120
sw $t5,0($t0)
# Original instruction: sw v119,0(v120)
la $t5,label_293_v119
lw $t5,0($t5)
la $t4,label_294_v120
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

