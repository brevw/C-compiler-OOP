.data
label_0_str:
.asciiz " "
.align 2
label_1_str:
.asciiz "\n"
.align 2
# Allocated labels for virtual registers
label_114_v42:
.space 4
label_73_v21:
.space 4
label_48_v10:
.space 4
label_70_v22:
.space 4
label_117_v39:
.space 4
label_110_v40:
.space 4
label_90_v30:
.space 4
label_60_v19:
.space 4
label_100_v33:
.space 4
label_79_v24:
.space 4
label_78_v23:
.space 4
label_32_v4:
.space 4
label_101_v35:
.space 4
label_98_v34:
.space 4
label_63_v18:
.space 4
label_46_v11:
.space 4
label_95_v32:
.space 4
label_49_v12:
.space 4
label_116_v43:
.space 4
label_75_v14:
.space 4
label_56_v17:
.space 4
label_122_v46:
.space 4
label_107_v38:
.space 4
label_72_v15:
.space 4
label_125_v47:
.space 4
label_26_v1:
.space 4
label_27_v0:
.space 4
label_92_v31:
.space 4
label_113_v41:
.space 4
label_89_v29:
.space 4
label_127_v48:
.space 4
label_62_v16:
.space 4
label_103_v36:
.space 4
label_29_v2:
.space 4
label_86_v28:
.space 4
label_40_v8:
.space 4
label_41_v7:
.space 4
label_124_v45:
.space 4
label_51_v13:
.space 4
label_83_v26:
.space 4
label_119_v44:
.space 4
label_106_v37:
.space 4
label_37_v6:
.space 4
label_93_v27:
.space 4
label_34_v3:
.space 4
label_43_v9:
.space 4
label_82_v25:
.space 4
label_35_v5:
.space 4
label_66_v20:
.space 4
# Allocated labels for virtual registers
label_283_v110:
.space 4
label_202_v74:
.space 4
label_318_v125:
.space 4
label_175_v68:
.space 4
label_282_v106:
.space 4
label_240_v95:
.space 4
label_195_v76:
.space 4
label_226_v88:
.space 4
label_222_v82:
.space 4
label_246_v96:
.space 4
label_146_v56:
.space 4
label_134_v51:
.space 4
label_174_v67:
.space 4
label_295_v116:
.space 4
label_280_v111:
.space 4
label_166_v64:
.space 4
label_303_v118:
.space 4
label_262_v98:
.space 4
label_319_v126:
.space 4
label_267_v97:
.space 4
label_272_v109:
.space 4
label_183_v70:
.space 4
label_143_v54:
.space 4
label_275_v108:
.space 4
label_234_v91:
.space 4
label_307_v113:
.space 4
label_180_v71:
.space 4
label_252_v101:
.space 4
label_292_v117:
.space 4
label_142_v50:
.space 4
label_306_v120:
.space 4
label_155_v60:
.space 4
label_255_v100:
.space 4
label_311_v122:
.space 4
label_314_v123:
.space 4
label_232_v93:
.space 4
label_274_v107:
.space 4
label_206_v80:
.space 4
label_215_v84:
.space 4
label_162_v58:
.space 4
label_220_v87:
.space 4
label_135_v52:
.space 4
label_163_v62:
.space 4
label_160_v63:
.space 4
label_254_v99:
.space 4
label_147_v49:
.space 4
label_223_v86:
.space 4
label_300_v119:
.space 4
label_227_v81:
.space 4
label_200_v79:
.space 4
label_194_v75:
.space 4
label_172_v69:
.space 4
label_287_v105:
.space 4
label_286_v112:
.space 4
label_140_v55:
.space 4
label_182_v66:
.space 4
label_242_v90:
.space 4
label_310_v121:
.space 4
label_302_v114:
.space 4
label_263_v102:
.space 4
label_203_v78:
.space 4
label_186_v72:
.space 4
label_235_v92:
.space 4
label_207_v73:
.space 4
label_294_v115:
.space 4
label_154_v59:
.space 4
label_266_v104:
.space 4
label_315_v124:
.space 4
label_187_v65:
.space 4
label_132_v53:
.space 4
label_247_v89:
.space 4
label_152_v61:
.space 4
label_167_v57:
.space 4
label_212_v85:
.space 4
label_243_v94:
.space 4
label_260_v103:
.space 4
label_192_v77:
.space 4
label_214_v83:
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
la $t0,label_114_v42
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_73_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_48_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_70_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_117_v39
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_110_v40
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_90_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_60_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_100_v33
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_79_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_101_v35
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_98_v34
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_63_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_95_v32
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_116_v43
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_75_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_122_v46
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_107_v38
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_72_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_125_v47
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_27_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_92_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_113_v41
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_127_v48
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_62_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_103_v36
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_86_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_124_v45
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_83_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_119_v44
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_106_v37
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_37_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_93_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_34_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_43_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_82_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_35_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_66_v20
lw $t0,0($t0)
addi $sp,$sp,-4
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
# Original instruction: addiu v11,$fp,4
addiu $t5,$fp,4
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
# Original instruction: addiu v16,$fp,12
addiu $t5,$fp,12
la $t0,label_62_v16
sw $t5,0($t0)
# Original instruction: lw v16,0(v16)
la $t4,label_62_v16
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_62_v16
sw $t4,0($t0)
# Original instruction: addiu v17,$fp,-8
addiu $t5,$fp,-8
la $t0,label_56_v17
sw $t5,0($t0)
# Original instruction: lw v18,0(v17)
la $t5,label_56_v17
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_63_v18
sw $t4,0($t0)
# Original instruction: li v19,12
li $t5,12
la $t0,label_60_v19
sw $t5,0($t0)
# Original instruction: mul v18,v18,v19
la $t3,label_63_v18
lw $t3,0($t3)
la $t4,label_60_v19
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_63_v18
sw $t3,0($t0)
# Original instruction: add v15,v16,v18
la $t5,label_62_v16
lw $t5,0($t5)
la $t4,label_63_v18
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_72_v15
sw $t3,0($t0)
# Original instruction: addiu v20,$fp,-12
addiu $t5,$fp,-12
la $t0,label_66_v20
sw $t5,0($t0)
# Original instruction: lw v21,0(v20)
la $t5,label_66_v20
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_73_v21
sw $t4,0($t0)
# Original instruction: li v22,4
li $t5,4
la $t0,label_70_v22
sw $t5,0($t0)
# Original instruction: mul v21,v21,v22
la $t3,label_73_v21
lw $t3,0($t3)
la $t4,label_70_v22
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_73_v21
sw $t3,0($t0)
# Original instruction: add v14,v15,v21
la $t5,label_72_v15
lw $t5,0($t5)
la $t4,label_73_v21
lw $t4,0($t4)
add $t3,$t5,$t4
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
# Original instruction: addiu v34,$fp,4
addiu $t5,$fp,4
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
addi $sp,$sp,4
la $t1,label_66_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_35_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_82_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_43_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_34_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_93_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_37_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_106_v37
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_119_v44
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_83_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_51_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_124_v45
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_41_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_40_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_86_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_29_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_103_v36
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_62_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_127_v48
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_89_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_113_v41
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_92_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_27_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_26_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_125_v47
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_72_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_107_v38
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_122_v46
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_56_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_75_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_116_v43
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_49_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_95_v32
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_46_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_63_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_98_v34
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_101_v35
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_32_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_78_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_79_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_100_v33
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_60_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_90_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_110_v40
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_117_v39
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_70_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_48_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_73_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_114_v42
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
la $t0,label_134_v51
sw $t5,0($t0)
# Original instruction: li v52,0
li $t5,0
la $t0,label_135_v52
sw $t5,0($t0)
# Original instruction: li v53,12
li $t5,12
la $t0,label_132_v53
sw $t5,0($t0)
# Original instruction: mul v52,v52,v53
la $t3,label_135_v52
lw $t3,0($t3)
la $t4,label_132_v53
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_135_v52
sw $t3,0($t0)
# Original instruction: add v50,v51,v52
la $t5,label_134_v51
lw $t5,0($t5)
la $t4,label_135_v52
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_142_v50
sw $t3,0($t0)
# Original instruction: li v54,0
li $t5,0
la $t0,label_143_v54
sw $t5,0($t0)
# Original instruction: li v55,4
li $t5,4
la $t0,label_140_v55
sw $t5,0($t0)
# Original instruction: mul v54,v54,v55
la $t3,label_143_v54
lw $t3,0($t3)
la $t4,label_140_v55
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_143_v54
sw $t3,0($t0)
# Original instruction: add v49,v50,v54
la $t5,label_142_v50
lw $t5,0($t5)
la $t4,label_143_v54
lw $t4,0($t4)
add $t3,$t5,$t4
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
la $t0,label_154_v59
sw $t5,0($t0)
# Original instruction: li v60,0
li $t5,0
la $t0,label_155_v60
sw $t5,0($t0)
# Original instruction: li v61,12
li $t5,12
la $t0,label_152_v61
sw $t5,0($t0)
# Original instruction: mul v60,v60,v61
la $t3,label_155_v60
lw $t3,0($t3)
la $t4,label_152_v61
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_155_v60
sw $t3,0($t0)
# Original instruction: add v58,v59,v60
la $t5,label_154_v59
lw $t5,0($t5)
la $t4,label_155_v60
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_162_v58
sw $t3,0($t0)
# Original instruction: li v62,1
li $t5,1
la $t0,label_163_v62
sw $t5,0($t0)
# Original instruction: li v63,4
li $t5,4
la $t0,label_160_v63
sw $t5,0($t0)
# Original instruction: mul v62,v62,v63
la $t3,label_163_v62
lw $t3,0($t3)
la $t4,label_160_v63
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_163_v62
sw $t3,0($t0)
# Original instruction: add v57,v58,v62
la $t5,label_162_v58
lw $t5,0($t5)
la $t4,label_163_v62
lw $t4,0($t4)
add $t3,$t5,$t4
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
la $t0,label_174_v67
sw $t5,0($t0)
# Original instruction: li v68,0
li $t5,0
la $t0,label_175_v68
sw $t5,0($t0)
# Original instruction: li v69,12
li $t5,12
la $t0,label_172_v69
sw $t5,0($t0)
# Original instruction: mul v68,v68,v69
la $t3,label_175_v68
lw $t3,0($t3)
la $t4,label_172_v69
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_175_v68
sw $t3,0($t0)
# Original instruction: add v66,v67,v68
la $t5,label_174_v67
lw $t5,0($t5)
la $t4,label_175_v68
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_182_v66
sw $t3,0($t0)
# Original instruction: li v70,2
li $t5,2
la $t0,label_183_v70
sw $t5,0($t0)
# Original instruction: li v71,4
li $t5,4
la $t0,label_180_v71
sw $t5,0($t0)
# Original instruction: mul v70,v70,v71
la $t3,label_183_v70
lw $t3,0($t3)
la $t4,label_180_v71
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_183_v70
sw $t3,0($t0)
# Original instruction: add v65,v66,v70
la $t5,label_182_v66
lw $t5,0($t5)
la $t4,label_183_v70
lw $t4,0($t4)
add $t3,$t5,$t4
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
la $t0,label_194_v75
sw $t5,0($t0)
# Original instruction: li v76,1
li $t5,1
la $t0,label_195_v76
sw $t5,0($t0)
# Original instruction: li v77,12
li $t5,12
la $t0,label_192_v77
sw $t5,0($t0)
# Original instruction: mul v76,v76,v77
la $t3,label_195_v76
lw $t3,0($t3)
la $t4,label_192_v77
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_195_v76
sw $t3,0($t0)
# Original instruction: add v74,v75,v76
la $t5,label_194_v75
lw $t5,0($t5)
la $t4,label_195_v76
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_202_v74
sw $t3,0($t0)
# Original instruction: li v78,0
li $t5,0
la $t0,label_203_v78
sw $t5,0($t0)
# Original instruction: li v79,4
li $t5,4
la $t0,label_200_v79
sw $t5,0($t0)
# Original instruction: mul v78,v78,v79
la $t3,label_203_v78
lw $t3,0($t3)
la $t4,label_200_v79
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_203_v78
sw $t3,0($t0)
# Original instruction: add v73,v74,v78
la $t5,label_202_v74
lw $t5,0($t5)
la $t4,label_203_v78
lw $t4,0($t4)
add $t3,$t5,$t4
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
la $t0,label_214_v83
sw $t5,0($t0)
# Original instruction: li v84,1
li $t5,1
la $t0,label_215_v84
sw $t5,0($t0)
# Original instruction: li v85,12
li $t5,12
la $t0,label_212_v85
sw $t5,0($t0)
# Original instruction: mul v84,v84,v85
la $t3,label_215_v84
lw $t3,0($t3)
la $t4,label_212_v85
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_215_v84
sw $t3,0($t0)
# Original instruction: add v82,v83,v84
la $t5,label_214_v83
lw $t5,0($t5)
la $t4,label_215_v84
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_222_v82
sw $t3,0($t0)
# Original instruction: li v86,1
li $t5,1
la $t0,label_223_v86
sw $t5,0($t0)
# Original instruction: li v87,4
li $t5,4
la $t0,label_220_v87
sw $t5,0($t0)
# Original instruction: mul v86,v86,v87
la $t3,label_223_v86
lw $t3,0($t3)
la $t4,label_220_v87
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_223_v86
sw $t3,0($t0)
# Original instruction: add v81,v82,v86
la $t5,label_222_v82
lw $t5,0($t5)
la $t4,label_223_v86
lw $t4,0($t4)
add $t3,$t5,$t4
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
la $t0,label_234_v91
sw $t5,0($t0)
# Original instruction: li v92,1
li $t5,1
la $t0,label_235_v92
sw $t5,0($t0)
# Original instruction: li v93,12
li $t5,12
la $t0,label_232_v93
sw $t5,0($t0)
# Original instruction: mul v92,v92,v93
la $t3,label_235_v92
lw $t3,0($t3)
la $t4,label_232_v93
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_235_v92
sw $t3,0($t0)
# Original instruction: add v90,v91,v92
la $t5,label_234_v91
lw $t5,0($t5)
la $t4,label_235_v92
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_242_v90
sw $t3,0($t0)
# Original instruction: li v94,2
li $t5,2
la $t0,label_243_v94
sw $t5,0($t0)
# Original instruction: li v95,4
li $t5,4
la $t0,label_240_v95
sw $t5,0($t0)
# Original instruction: mul v94,v94,v95
la $t3,label_243_v94
lw $t3,0($t3)
la $t4,label_240_v95
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_243_v94
sw $t3,0($t0)
# Original instruction: add v89,v90,v94
la $t5,label_242_v90
lw $t5,0($t5)
la $t4,label_243_v94
lw $t4,0($t4)
add $t3,$t5,$t4
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
la $t0,label_254_v99
sw $t5,0($t0)
# Original instruction: li v100,2
li $t5,2
la $t0,label_255_v100
sw $t5,0($t0)
# Original instruction: li v101,12
li $t5,12
la $t0,label_252_v101
sw $t5,0($t0)
# Original instruction: mul v100,v100,v101
la $t3,label_255_v100
lw $t3,0($t3)
la $t4,label_252_v101
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_255_v100
sw $t3,0($t0)
# Original instruction: add v98,v99,v100
la $t5,label_254_v99
lw $t5,0($t5)
la $t4,label_255_v100
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_262_v98
sw $t3,0($t0)
# Original instruction: li v102,0
li $t5,0
la $t0,label_263_v102
sw $t5,0($t0)
# Original instruction: li v103,4
li $t5,4
la $t0,label_260_v103
sw $t5,0($t0)
# Original instruction: mul v102,v102,v103
la $t3,label_263_v102
lw $t3,0($t3)
la $t4,label_260_v103
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_263_v102
sw $t3,0($t0)
# Original instruction: add v97,v98,v102
la $t5,label_262_v98
lw $t5,0($t5)
la $t4,label_263_v102
lw $t4,0($t4)
add $t3,$t5,$t4
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
la $t0,label_274_v107
sw $t5,0($t0)
# Original instruction: li v108,2
li $t5,2
la $t0,label_275_v108
sw $t5,0($t0)
# Original instruction: li v109,12
li $t5,12
la $t0,label_272_v109
sw $t5,0($t0)
# Original instruction: mul v108,v108,v109
la $t3,label_275_v108
lw $t3,0($t3)
la $t4,label_272_v109
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_275_v108
sw $t3,0($t0)
# Original instruction: add v106,v107,v108
la $t5,label_274_v107
lw $t5,0($t5)
la $t4,label_275_v108
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_282_v106
sw $t3,0($t0)
# Original instruction: li v110,1
li $t5,1
la $t0,label_283_v110
sw $t5,0($t0)
# Original instruction: li v111,4
li $t5,4
la $t0,label_280_v111
sw $t5,0($t0)
# Original instruction: mul v110,v110,v111
la $t3,label_283_v110
lw $t3,0($t3)
la $t4,label_280_v111
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_283_v110
sw $t3,0($t0)
# Original instruction: add v105,v106,v110
la $t5,label_282_v106
lw $t5,0($t5)
la $t4,label_283_v110
lw $t4,0($t4)
add $t3,$t5,$t4
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
la $t0,label_294_v115
sw $t5,0($t0)
# Original instruction: li v116,2
li $t5,2
la $t0,label_295_v116
sw $t5,0($t0)
# Original instruction: li v117,12
li $t5,12
la $t0,label_292_v117
sw $t5,0($t0)
# Original instruction: mul v116,v116,v117
la $t3,label_295_v116
lw $t3,0($t3)
la $t4,label_292_v117
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_295_v116
sw $t3,0($t0)
# Original instruction: add v114,v115,v116
la $t5,label_294_v115
lw $t5,0($t5)
la $t4,label_295_v116
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_302_v114
sw $t3,0($t0)
# Original instruction: li v118,2
li $t5,2
la $t0,label_303_v118
sw $t5,0($t0)
# Original instruction: li v119,4
li $t5,4
la $t0,label_300_v119
sw $t5,0($t0)
# Original instruction: mul v118,v118,v119
la $t3,label_303_v118
lw $t3,0($t3)
la $t4,label_300_v119
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_303_v118
sw $t3,0($t0)
# Original instruction: add v113,v114,v118
la $t5,label_302_v114
lw $t5,0($t5)
la $t4,label_303_v118
lw $t4,0($t4)
add $t3,$t5,$t4
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
# Original instruction: addiu v121,$fp,-36
addiu $t5,$fp,-36
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
# Original instruction: li v125,3
li $t5,3
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

