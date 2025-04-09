.data
label_0_str:
.asciiz " "
.align 2
label_1_str:
.asciiz "\n"
.align 2
# Allocated labels for virtual registers
label_119_v44:
.space 4
label_75_v14:
.space 4
label_49_v12:
.space 4
label_78_v23:
.space 4
label_113_v41:
.space 4
label_114_v42:
.space 4
label_95_v32:
.space 4
label_66_v20:
.space 4
label_101_v35:
.space 4
label_83_v26:
.space 4
label_82_v25:
.space 4
label_37_v6:
.space 4
label_106_v37:
.space 4
label_103_v36:
.space 4
label_73_v15:
.space 4
label_51_v13:
.space 4
label_98_v34:
.space 4
label_63_v16:
.space 4
label_27_v0:
.space 4
label_124_v45:
.space 4
label_79_v24:
.space 4
label_60_v19:
.space 4
label_127_v48:
.space 4
label_110_v40:
.space 4
label_69_v21:
.space 4
label_34_v3:
.space 4
label_29_v2:
.space 4
label_100_v33:
.space 4
label_116_v43:
.space 4
label_92_v31:
.space 4
label_59_v18:
.space 4
label_107_v38:
.space 4
label_32_v4:
.space 4
label_90_v30:
.space 4
label_48_v10:
.space 4
label_43_v9:
.space 4
label_125_v47:
.space 4
label_56_v17:
.space 4
label_86_v28:
.space 4
label_122_v46:
.space 4
label_26_v1:
.space 4
label_117_v39:
.space 4
label_40_v8:
.space 4
label_89_v29:
.space 4
label_35_v5:
.space 4
label_46_v11:
.space 4
label_93_v27:
.space 4
label_41_v7:
.space 4
label_70_v22:
.space 4
# Allocated labels for virtual registers
label_287_v105:
.space 4
label_200_v79:
.space 4
label_183_v66:
.space 4
label_280_v111:
.space 4
label_246_v96:
.space 4
label_203_v74:
.space 4
label_231_v92:
.space 4
label_220_v87:
.space 4
label_251_v100:
.space 4
label_151_v60:
.space 4
label_132_v53:
.space 4
label_172_v69:
.space 4
label_303_v114:
.space 4
label_286_v112:
.space 4
label_171_v68:
.space 4
label_307_v113:
.space 4
label_260_v103:
.space 4
label_275_v107:
.space 4
label_279_v110:
.space 4
label_187_v65:
.space 4
label_147_v49:
.space 4
label_283_v106:
.space 4
label_232_v93:
.space 4
label_310_v121:
.space 4
label_186_v72:
.space 4
label_259_v102:
.space 4
label_299_v118:
.space 4
label_140_v55:
.space 4
label_311_v122:
.space 4
label_163_v58:
.space 4
label_263_v98:
.space 4
label_315_v124:
.space 4
label_318_v125:
.space 4
label_239_v94:
.space 4
label_272_v109:
.space 4
label_211_v84:
.space 4
label_135_v51:
.space 4
label_223_v82:
.space 4
label_160_v63:
.space 4
label_226_v88:
.space 4
label_143_v50:
.space 4
label_167_v57:
.space 4
label_166_v64:
.space 4
label_252_v101:
.space 4
label_155_v59:
.space 4
label_227_v81:
.space 4
label_306_v120:
.space 4
label_235_v91:
.space 4
label_131_v52:
.space 4
label_206_v80:
.space 4
label_192_v77:
.space 4
label_179_v70:
.space 4
label_295_v115:
.space 4
label_291_v116:
.space 4
label_146_v56:
.space 4
label_180_v71:
.space 4
label_240_v95:
.space 4
label_314_v123:
.space 4
label_300_v119:
.space 4
label_267_v97:
.space 4
label_207_v73:
.space 4
label_191_v76:
.space 4
label_243_v90:
.space 4
label_215_v83:
.space 4
label_292_v117:
.space 4
label_152_v61:
.space 4
label_271_v108:
.space 4
label_319_v126:
.space 4
label_195_v75:
.space 4
label_139_v54:
.space 4
label_255_v99:
.space 4
label_159_v62:
.space 4
label_175_v67:
.space 4
label_219_v86:
.space 4
label_247_v89:
.space 4
label_266_v104:
.space 4
label_199_v78:
.space 4
label_212_v85:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
print_2d_array:
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
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: pushRegisters
la $t0,label_119_v44
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_75_v14
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v12
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v23
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_113_v41
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_114_v42
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_95_v32
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_66_v20
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_101_v35
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_83_v26
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_82_v25
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_37_v6
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_106_v37
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_103_v36
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_73_v15
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v13
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_98_v34
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_63_v16
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_27_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_124_v45
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_79_v24
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_60_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_127_v48
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_110_v40
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_69_v21
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_34_v3
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v2
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_100_v33
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_116_v43
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_92_v31
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_59_v18
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_107_v38
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_90_v30
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_48_v10
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_43_v9
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_125_v47
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v17
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_86_v28
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_122_v46
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_117_v39
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v8
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v29
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_35_v5
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v11
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_93_v27
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v7
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_70_v22
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_27_v0
sw $t5,0($t0)
# Original instruction: li v1,0
li $t5,0
la $t0,label_26_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_26_v1
lw $t5,0($t5)
la $t4,label_27_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v2,$fp,-8
addiu $t5,$fp,-8
la $t0,label_29_v2
sw $t5,0($t0)
# Original instruction: lw v3,0(v2)
la $t5,label_29_v2
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_34_v3
sw $t4,0($t0)
# Original instruction: addiu v4,$fp,8
addiu $t5,$fp,8
la $t0,label_32_v4
sw $t5,0($t0)
# Original instruction: lw v5,0(v4)
la $t5,label_32_v4
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_35_v5
sw $t4,0($t0)
# Original instruction: slt v6,v3,v5
la $t5,label_34_v3
lw $t5,0($t5)
la $t4,label_35_v5
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_37_v6
sw $t3,0($t0)
# Original instruction: beqz v6,label_3_next
la $t5,label_37_v6
lw $t5,0($t5)
beqz $t5,label_3_next
label_5_body:
# Original instruction: addiu v7,$fp,-12
addiu $t5,$fp,-12
la $t0,label_41_v7
sw $t5,0($t0)
# Original instruction: li v8,0
li $t5,0
la $t0,label_40_v8
sw $t5,0($t0)
# Original instruction: sw v8,0(v7)
la $t5,label_40_v8
lw $t5,0($t5)
la $t4,label_41_v7
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v9,$fp,-12
addiu $t5,$fp,-12
la $t0,label_43_v9
sw $t5,0($t0)
# Original instruction: lw v10,0(v9)
la $t5,label_43_v9
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_48_v10
sw $t4,0($t0)
# Original instruction: addiu v11,$fp,12
addiu $t5,$fp,12
la $t0,label_46_v11
sw $t5,0($t0)
# Original instruction: lw v12,0(v11)
la $t5,label_46_v11
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_49_v12
sw $t4,0($t0)
# Original instruction: slt v13,v10,v12
la $t5,label_48_v10
lw $t5,0($t5)
la $t4,label_49_v12
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_51_v13
sw $t3,0($t0)
# Original instruction: beqz v13,label_6_next
la $t5,label_51_v13
lw $t5,0($t5)
beqz $t5,label_6_next
label_8_body:
# Original instruction: addiu v16,$fp,4
addiu $t5,$fp,4
la $t0,label_63_v16
sw $t5,0($t0)
# Original instruction: lw v16,0(v16)
la $t4,label_63_v16
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_63_v16
sw $t4,0($t0)
# Original instruction: addiu v17,$fp,-8
addiu $t5,$fp,-8
la $t0,label_56_v17
sw $t5,0($t0)
# Original instruction: lw v18,0(v17)
la $t5,label_56_v17
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_59_v18
sw $t4,0($t0)
# Original instruction: li v19,12
li $t5,12
la $t0,label_60_v19
sw $t5,0($t0)
# Original instruction: mul v15,v18,v19
la $t5,label_59_v18
lw $t5,0($t5)
la $t4,label_60_v19
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_73_v15
sw $t3,0($t0)
# Original instruction: add v15,v15,v16
la $t3,label_73_v15
lw $t3,0($t3)
la $t4,label_63_v16
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_73_v15
sw $t3,0($t0)
# Original instruction: addiu v20,$fp,-12
addiu $t5,$fp,-12
la $t0,label_66_v20
sw $t5,0($t0)
# Original instruction: lw v21,0(v20)
la $t5,label_66_v20
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_69_v21
sw $t4,0($t0)
# Original instruction: li v22,4
li $t5,4
la $t0,label_70_v22
sw $t5,0($t0)
# Original instruction: mul v14,v21,v22
la $t5,label_69_v21
lw $t5,0($t5)
la $t4,label_70_v22
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_75_v14
sw $t3,0($t0)
# Original instruction: add v14,v14,v15
la $t3,label_75_v14
lw $t3,0($t3)
la $t4,label_73_v15
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_75_v14
sw $t3,0($t0)
# Original instruction: lw v23,0(v14)
la $t5,label_75_v14
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_78_v23
sw $t4,0($t0)
# Original instruction: addiu v24,$sp,-4
addiu $t5,$sp,-4
la $t0,label_79_v24
sw $t5,0($t0)
# Original instruction: sw v23,0(v24)
la $t5,label_78_v23
lw $t5,0($t5)
la $t4,label_79_v24
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v25,label_0_str
la $t5,label_0_str
la $t0,label_82_v25
sw $t5,0($t0)
# Original instruction: addiu v26,$sp,-4
addiu $t5,$sp,-4
la $t0,label_83_v26
sw $t5,0($t0)
# Original instruction: sw v25,0(v26)
la $t5,label_82_v25
lw $t5,0($t5)
la $t4,label_83_v26
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v27,$fp,-12
addiu $t5,$fp,-12
la $t0,label_93_v27
sw $t5,0($t0)
# Original instruction: addiu v28,$fp,-12
addiu $t5,$fp,-12
la $t0,label_86_v28
sw $t5,0($t0)
# Original instruction: lw v29,0(v28)
la $t5,label_86_v28
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_89_v29
sw $t4,0($t0)
# Original instruction: li v30,1
li $t5,1
la $t0,label_90_v30
sw $t5,0($t0)
# Original instruction: add v31,v29,v30
la $t5,label_89_v29
lw $t5,0($t5)
la $t4,label_90_v30
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_92_v31
sw $t3,0($t0)
# Original instruction: sw v31,0(v27)
la $t5,label_92_v31
lw $t5,0($t5)
la $t4,label_93_v27
lw $t4,0($t4)
sw $t5,0($t4)
label_7_posttest:
# Original instruction: addiu v32,$fp,-12
addiu $t5,$fp,-12
la $t0,label_95_v32
sw $t5,0($t0)
# Original instruction: lw v33,0(v32)
la $t5,label_95_v32
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_100_v33
sw $t4,0($t0)
# Original instruction: addiu v34,$fp,12
addiu $t5,$fp,12
la $t0,label_98_v34
sw $t5,0($t0)
# Original instruction: lw v35,0(v34)
la $t5,label_98_v34
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_101_v35
sw $t4,0($t0)
# Original instruction: slt v36,v33,v35
la $t5,label_100_v33
lw $t5,0($t5)
la $t4,label_101_v35
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_103_v36
sw $t3,0($t0)
# Original instruction: bnez v36,label_8_body
la $t5,label_103_v36
lw $t5,0($t5)
bnez $t5,label_8_body
label_6_next:
# Original instruction: la v37,label_1_str
la $t5,label_1_str
la $t0,label_106_v37
sw $t5,0($t0)
# Original instruction: addiu v38,$sp,-4
addiu $t5,$sp,-4
la $t0,label_107_v38
sw $t5,0($t0)
# Original instruction: sw v37,0(v38)
la $t5,label_106_v37
lw $t5,0($t5)
la $t4,label_107_v38
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v39,$fp,-8
addiu $t5,$fp,-8
la $t0,label_117_v39
sw $t5,0($t0)
# Original instruction: addiu v40,$fp,-8
addiu $t5,$fp,-8
la $t0,label_110_v40
sw $t5,0($t0)
# Original instruction: lw v41,0(v40)
la $t5,label_110_v40
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_113_v41
sw $t4,0($t0)
# Original instruction: li v42,1
li $t5,1
la $t0,label_114_v42
sw $t5,0($t0)
# Original instruction: add v43,v41,v42
la $t5,label_113_v41
lw $t5,0($t5)
la $t4,label_114_v42
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_116_v43
sw $t3,0($t0)
# Original instruction: sw v43,0(v39)
la $t5,label_116_v43
lw $t5,0($t5)
la $t4,label_117_v39
lw $t4,0($t4)
sw $t5,0($t4)
label_4_posttest:
# Original instruction: addiu v44,$fp,-8
addiu $t5,$fp,-8
la $t0,label_119_v44
sw $t5,0($t0)
# Original instruction: lw v45,0(v44)
la $t5,label_119_v44
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_124_v45
sw $t4,0($t0)
# Original instruction: addiu v46,$fp,8
addiu $t5,$fp,8
la $t0,label_122_v46
sw $t5,0($t0)
# Original instruction: lw v47,0(v46)
la $t5,label_122_v46
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_125_v47
sw $t4,0($t0)
# Original instruction: slt v48,v45,v47
la $t5,label_124_v45
lw $t5,0($t5)
la $t4,label_125_v47
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_127_v48
sw $t3,0($t0)
# Original instruction: bnez v48,label_5_body
la $t5,label_127_v48
lw $t5,0($t5)
bnez $t5,label_5_body
label_3_next:
print_2d_array_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_70_v22
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_41_v7
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_93_v27
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_46_v11
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_35_v5
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_89_v29
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_40_v8
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_117_v39
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_26_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_122_v46
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_86_v28
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_56_v17
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_125_v47
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_43_v9
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_48_v10
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_90_v30
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_32_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_107_v38
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_59_v18
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_92_v31
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_116_v43
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_100_v33
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_29_v2
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_34_v3
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_69_v21
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_110_v40
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_127_v48
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_60_v19
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_79_v24
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_124_v45
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_27_v0
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_63_v16
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_98_v34
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_51_v13
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_73_v15
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_103_v36
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_106_v37
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_37_v6
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_82_v25
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_83_v26
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_101_v35
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_66_v20
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_95_v32
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_114_v42
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_113_v41
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_78_v23
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_49_v12
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_75_v14
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_119_v44
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
# Original instruction: addiu $sp,$sp,-36
addiu $sp,$sp,-36
# Original instruction: addiu v51,$fp,-36
addiu $t5,$fp,-36
la $t0,label_135_v51
sw $t5,0($t0)
# Original instruction: li v52,0
li $t5,0
la $t0,label_131_v52
sw $t5,0($t0)
# Original instruction: li v53,12
li $t5,12
la $t0,label_132_v53
sw $t5,0($t0)
# Original instruction: mul v50,v52,v53
la $t5,label_131_v52
lw $t5,0($t5)
la $t4,label_132_v53
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_143_v50
sw $t3,0($t0)
# Original instruction: add v50,v50,v51
la $t3,label_143_v50
lw $t3,0($t3)
la $t4,label_135_v51
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_143_v50
sw $t3,0($t0)
# Original instruction: li v54,0
li $t5,0
la $t0,label_139_v54
sw $t5,0($t0)
# Original instruction: li v55,4
li $t5,4
la $t0,label_140_v55
sw $t5,0($t0)
# Original instruction: mul v49,v54,v55
la $t5,label_139_v54
lw $t5,0($t5)
la $t4,label_140_v55
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_147_v49
sw $t3,0($t0)
# Original instruction: add v49,v49,v50
la $t3,label_147_v49
lw $t3,0($t3)
la $t4,label_143_v50
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_147_v49
sw $t3,0($t0)
# Original instruction: li v56,1
li $t5,1
la $t0,label_146_v56
sw $t5,0($t0)
# Original instruction: sw v56,0(v49)
la $t5,label_146_v56
lw $t5,0($t5)
la $t4,label_147_v49
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v59,$fp,-36
addiu $t5,$fp,-36
la $t0,label_155_v59
sw $t5,0($t0)
# Original instruction: li v60,0
li $t5,0
la $t0,label_151_v60
sw $t5,0($t0)
# Original instruction: li v61,12
li $t5,12
la $t0,label_152_v61
sw $t5,0($t0)
# Original instruction: mul v58,v60,v61
la $t5,label_151_v60
lw $t5,0($t5)
la $t4,label_152_v61
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_163_v58
sw $t3,0($t0)
# Original instruction: add v58,v58,v59
la $t3,label_163_v58
lw $t3,0($t3)
la $t4,label_155_v59
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_163_v58
sw $t3,0($t0)
# Original instruction: li v62,1
li $t5,1
la $t0,label_159_v62
sw $t5,0($t0)
# Original instruction: li v63,4
li $t5,4
la $t0,label_160_v63
sw $t5,0($t0)
# Original instruction: mul v57,v62,v63
la $t5,label_159_v62
lw $t5,0($t5)
la $t4,label_160_v63
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_167_v57
sw $t3,0($t0)
# Original instruction: add v57,v57,v58
la $t3,label_167_v57
lw $t3,0($t3)
la $t4,label_163_v58
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_167_v57
sw $t3,0($t0)
# Original instruction: li v64,2
li $t5,2
la $t0,label_166_v64
sw $t5,0($t0)
# Original instruction: sw v64,0(v57)
la $t5,label_166_v64
lw $t5,0($t5)
la $t4,label_167_v57
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v67,$fp,-36
addiu $t5,$fp,-36
la $t0,label_175_v67
sw $t5,0($t0)
# Original instruction: li v68,0
li $t5,0
la $t0,label_171_v68
sw $t5,0($t0)
# Original instruction: li v69,12
li $t5,12
la $t0,label_172_v69
sw $t5,0($t0)
# Original instruction: mul v66,v68,v69
la $t5,label_171_v68
lw $t5,0($t5)
la $t4,label_172_v69
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_183_v66
sw $t3,0($t0)
# Original instruction: add v66,v66,v67
la $t3,label_183_v66
lw $t3,0($t3)
la $t4,label_175_v67
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_183_v66
sw $t3,0($t0)
# Original instruction: li v70,2
li $t5,2
la $t0,label_179_v70
sw $t5,0($t0)
# Original instruction: li v71,4
li $t5,4
la $t0,label_180_v71
sw $t5,0($t0)
# Original instruction: mul v65,v70,v71
la $t5,label_179_v70
lw $t5,0($t5)
la $t4,label_180_v71
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_187_v65
sw $t3,0($t0)
# Original instruction: add v65,v65,v66
la $t3,label_187_v65
lw $t3,0($t3)
la $t4,label_183_v66
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_187_v65
sw $t3,0($t0)
# Original instruction: li v72,3
li $t5,3
la $t0,label_186_v72
sw $t5,0($t0)
# Original instruction: sw v72,0(v65)
la $t5,label_186_v72
lw $t5,0($t5)
la $t4,label_187_v65
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v75,$fp,-36
addiu $t5,$fp,-36
la $t0,label_195_v75
sw $t5,0($t0)
# Original instruction: li v76,1
li $t5,1
la $t0,label_191_v76
sw $t5,0($t0)
# Original instruction: li v77,12
li $t5,12
la $t0,label_192_v77
sw $t5,0($t0)
# Original instruction: mul v74,v76,v77
la $t5,label_191_v76
lw $t5,0($t5)
la $t4,label_192_v77
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_203_v74
sw $t3,0($t0)
# Original instruction: add v74,v74,v75
la $t3,label_203_v74
lw $t3,0($t3)
la $t4,label_195_v75
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_203_v74
sw $t3,0($t0)
# Original instruction: li v78,0
li $t5,0
la $t0,label_199_v78
sw $t5,0($t0)
# Original instruction: li v79,4
li $t5,4
la $t0,label_200_v79
sw $t5,0($t0)
# Original instruction: mul v73,v78,v79
la $t5,label_199_v78
lw $t5,0($t5)
la $t4,label_200_v79
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_207_v73
sw $t3,0($t0)
# Original instruction: add v73,v73,v74
la $t3,label_207_v73
lw $t3,0($t3)
la $t4,label_203_v74
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_207_v73
sw $t3,0($t0)
# Original instruction: li v80,4
li $t5,4
la $t0,label_206_v80
sw $t5,0($t0)
# Original instruction: sw v80,0(v73)
la $t5,label_206_v80
lw $t5,0($t5)
la $t4,label_207_v73
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v83,$fp,-36
addiu $t5,$fp,-36
la $t0,label_215_v83
sw $t5,0($t0)
# Original instruction: li v84,1
li $t5,1
la $t0,label_211_v84
sw $t5,0($t0)
# Original instruction: li v85,12
li $t5,12
la $t0,label_212_v85
sw $t5,0($t0)
# Original instruction: mul v82,v84,v85
la $t5,label_211_v84
lw $t5,0($t5)
la $t4,label_212_v85
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_223_v82
sw $t3,0($t0)
# Original instruction: add v82,v82,v83
la $t3,label_223_v82
lw $t3,0($t3)
la $t4,label_215_v83
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_223_v82
sw $t3,0($t0)
# Original instruction: li v86,1
li $t5,1
la $t0,label_219_v86
sw $t5,0($t0)
# Original instruction: li v87,4
li $t5,4
la $t0,label_220_v87
sw $t5,0($t0)
# Original instruction: mul v81,v86,v87
la $t5,label_219_v86
lw $t5,0($t5)
la $t4,label_220_v87
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_227_v81
sw $t3,0($t0)
# Original instruction: add v81,v81,v82
la $t3,label_227_v81
lw $t3,0($t3)
la $t4,label_223_v82
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_227_v81
sw $t3,0($t0)
# Original instruction: li v88,5
li $t5,5
la $t0,label_226_v88
sw $t5,0($t0)
# Original instruction: sw v88,0(v81)
la $t5,label_226_v88
lw $t5,0($t5)
la $t4,label_227_v81
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v91,$fp,-36
addiu $t5,$fp,-36
la $t0,label_235_v91
sw $t5,0($t0)
# Original instruction: li v92,1
li $t5,1
la $t0,label_231_v92
sw $t5,0($t0)
# Original instruction: li v93,12
li $t5,12
la $t0,label_232_v93
sw $t5,0($t0)
# Original instruction: mul v90,v92,v93
la $t5,label_231_v92
lw $t5,0($t5)
la $t4,label_232_v93
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_243_v90
sw $t3,0($t0)
# Original instruction: add v90,v90,v91
la $t3,label_243_v90
lw $t3,0($t3)
la $t4,label_235_v91
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_243_v90
sw $t3,0($t0)
# Original instruction: li v94,2
li $t5,2
la $t0,label_239_v94
sw $t5,0($t0)
# Original instruction: li v95,4
li $t5,4
la $t0,label_240_v95
sw $t5,0($t0)
# Original instruction: mul v89,v94,v95
la $t5,label_239_v94
lw $t5,0($t5)
la $t4,label_240_v95
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_247_v89
sw $t3,0($t0)
# Original instruction: add v89,v89,v90
la $t3,label_247_v89
lw $t3,0($t3)
la $t4,label_243_v90
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_247_v89
sw $t3,0($t0)
# Original instruction: li v96,6
li $t5,6
la $t0,label_246_v96
sw $t5,0($t0)
# Original instruction: sw v96,0(v89)
la $t5,label_246_v96
lw $t5,0($t5)
la $t4,label_247_v89
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v99,$fp,-36
addiu $t5,$fp,-36
la $t0,label_255_v99
sw $t5,0($t0)
# Original instruction: li v100,2
li $t5,2
la $t0,label_251_v100
sw $t5,0($t0)
# Original instruction: li v101,12
li $t5,12
la $t0,label_252_v101
sw $t5,0($t0)
# Original instruction: mul v98,v100,v101
la $t5,label_251_v100
lw $t5,0($t5)
la $t4,label_252_v101
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_263_v98
sw $t3,0($t0)
# Original instruction: add v98,v98,v99
la $t3,label_263_v98
lw $t3,0($t3)
la $t4,label_255_v99
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_263_v98
sw $t3,0($t0)
# Original instruction: li v102,0
li $t5,0
la $t0,label_259_v102
sw $t5,0($t0)
# Original instruction: li v103,4
li $t5,4
la $t0,label_260_v103
sw $t5,0($t0)
# Original instruction: mul v97,v102,v103
la $t5,label_259_v102
lw $t5,0($t5)
la $t4,label_260_v103
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_267_v97
sw $t3,0($t0)
# Original instruction: add v97,v97,v98
la $t3,label_267_v97
lw $t3,0($t3)
la $t4,label_263_v98
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_267_v97
sw $t3,0($t0)
# Original instruction: li v104,7
li $t5,7
la $t0,label_266_v104
sw $t5,0($t0)
# Original instruction: sw v104,0(v97)
la $t5,label_266_v104
lw $t5,0($t5)
la $t4,label_267_v97
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v107,$fp,-36
addiu $t5,$fp,-36
la $t0,label_275_v107
sw $t5,0($t0)
# Original instruction: li v108,2
li $t5,2
la $t0,label_271_v108
sw $t5,0($t0)
# Original instruction: li v109,12
li $t5,12
la $t0,label_272_v109
sw $t5,0($t0)
# Original instruction: mul v106,v108,v109
la $t5,label_271_v108
lw $t5,0($t5)
la $t4,label_272_v109
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_283_v106
sw $t3,0($t0)
# Original instruction: add v106,v106,v107
la $t3,label_283_v106
lw $t3,0($t3)
la $t4,label_275_v107
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_283_v106
sw $t3,0($t0)
# Original instruction: li v110,1
li $t5,1
la $t0,label_279_v110
sw $t5,0($t0)
# Original instruction: li v111,4
li $t5,4
la $t0,label_280_v111
sw $t5,0($t0)
# Original instruction: mul v105,v110,v111
la $t5,label_279_v110
lw $t5,0($t5)
la $t4,label_280_v111
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_287_v105
sw $t3,0($t0)
# Original instruction: add v105,v105,v106
la $t3,label_287_v105
lw $t3,0($t3)
la $t4,label_283_v106
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_287_v105
sw $t3,0($t0)
# Original instruction: li v112,8
li $t5,8
la $t0,label_286_v112
sw $t5,0($t0)
# Original instruction: sw v112,0(v105)
la $t5,label_286_v112
lw $t5,0($t5)
la $t4,label_287_v105
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v115,$fp,-36
addiu $t5,$fp,-36
la $t0,label_295_v115
sw $t5,0($t0)
# Original instruction: li v116,2
li $t5,2
la $t0,label_291_v116
sw $t5,0($t0)
# Original instruction: li v117,12
li $t5,12
la $t0,label_292_v117
sw $t5,0($t0)
# Original instruction: mul v114,v116,v117
la $t5,label_291_v116
lw $t5,0($t5)
la $t4,label_292_v117
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_303_v114
sw $t3,0($t0)
# Original instruction: add v114,v114,v115
la $t3,label_303_v114
lw $t3,0($t3)
la $t4,label_295_v115
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_303_v114
sw $t3,0($t0)
# Original instruction: li v118,2
li $t5,2
la $t0,label_299_v118
sw $t5,0($t0)
# Original instruction: li v119,4
li $t5,4
la $t0,label_300_v119
sw $t5,0($t0)
# Original instruction: mul v113,v118,v119
la $t5,label_299_v118
lw $t5,0($t5)
la $t4,label_300_v119
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_307_v113
sw $t3,0($t0)
# Original instruction: add v113,v113,v114
la $t3,label_307_v113
lw $t3,0($t3)
la $t4,label_303_v114
lw $t4,0($t4)
add $t3,$t3,$t4
la $t0,label_307_v113
sw $t3,0($t0)
# Original instruction: li v120,9
li $t5,9
la $t0,label_306_v120
sw $t5,0($t0)
# Original instruction: sw v120,0(v113)
la $t5,label_306_v120
lw $t5,0($t5)
la $t4,label_307_v113
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: li v121,3
li $t5,3
la $t0,label_310_v121
sw $t5,0($t0)
# Original instruction: addiu v122,$sp,-4
addiu $t5,$sp,-4
la $t0,label_311_v122
sw $t5,0($t0)
# Original instruction: sw v121,0(v122)
la $t5,label_310_v121
lw $t5,0($t5)
la $t4,label_311_v122
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: li v123,3
li $t5,3
la $t0,label_314_v123
sw $t5,0($t0)
# Original instruction: addiu v124,$sp,-8
addiu $t5,$sp,-8
la $t0,label_315_v124
sw $t5,0($t0)
# Original instruction: sw v123,0(v124)
la $t5,label_314_v123
lw $t5,0($t5)
la $t4,label_315_v124
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v125,$fp,-36
addiu $t5,$fp,-36
la $t0,label_318_v125
sw $t5,0($t0)
# Original instruction: addiu v126,$sp,-12
addiu $t5,$sp,-12
la $t0,label_319_v126
sw $t5,0($t0)
# Original instruction: sw v125,0(v126)
la $t5,label_318_v125
lw $t5,0($t5)
la $t4,label_319_v126
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: jal print_2d_array
jal print_2d_array
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

