.data
label_0_str:
.asciiz ", "
.align 2
# Allocated labels for virtual registers
label_80_v27:
.space 4
label_32_v6:
.space 4
label_56_v17:
.space 4
label_35_v7:
.space 4
label_75_v25:
.space 4
label_76_v26:
.space 4
label_55_v16:
.space 4
label_78_v28:
.space 4
label_23_v4:
.space 4
label_52_v15:
.space 4
label_65_v19:
.space 4
label_45_v10:
.space 4
label_38_v11:
.space 4
label_18_v2:
.space 4
label_68_v18:
.space 4
label_63_v22:
.space 4
label_66_v21:
.space 4
label_51_v14:
.space 4
label_26_v3:
.space 4
label_43_v13:
.space 4
label_58_v20:
.space 4
label_84_v30:
.space 4
label_83_v29:
.space 4
label_36_v8:
.space 4
label_71_v23:
.space 4
label_48_v9:
.space 4
label_25_v1:
.space 4
label_46_v12:
.space 4
label_72_v24:
.space 4
label_31_v5:
.space 4
label_28_v0:
.space 4
# Allocated labels for virtual registers
label_179_v74:
.space 4
label_98_v31:
.space 4
label_162_v64:
.space 4
label_181_v71:
.space 4
label_209_v85:
.space 4
label_112_v37:
.space 4
label_199_v81:
.space 4
label_100_v39:
.space 4
label_141_v53:
.space 4
label_119_v47:
.space 4
label_161_v62:
.space 4
label_86_v33:
.space 4
label_91_v35:
.space 4
label_154_v63:
.space 4
label_105_v41:
.space 4
label_167_v66:
.space 4
label_114_v45:
.space 4
label_132_v49:
.space 4
label_111_v42:
.space 4
label_168_v67:
.space 4
label_128_v50:
.space 4
label_139_v56:
.space 4
label_97_v36:
.space 4
label_191_v77:
.space 4
label_94_v34:
.space 4
label_121_v44:
.space 4
label_194_v80:
.space 4
label_147_v57:
.space 4
label_207_v83:
.space 4
label_126_v43:
.space 4
label_148_v58:
.space 4
label_151_v59:
.space 4
label_134_v54:
.space 4
label_200_v82:
.space 4
label_210_v84:
.space 4
label_122_v46:
.space 4
label_187_v75:
.space 4
label_174_v72:
.space 4
label_159_v65:
.space 4
label_108_v40:
.space 4
label_131_v51:
.space 4
label_107_v38:
.space 4
label_164_v61:
.space 4
label_184_v70:
.space 4
label_172_v69:
.space 4
label_188_v76:
.space 4
label_142_v55:
.space 4
label_171_v68:
.space 4
label_93_v32:
.space 4
label_125_v48:
.space 4
label_144_v52:
.space 4
label_152_v60:
.space 4
label_196_v79:
.space 4
label_182_v73:
.space 4
label_192_v78:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
print_struct:
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
la $t0,label_80_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_35_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_75_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_76_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_55_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_23_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_52_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_65_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_45_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_18_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_68_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_63_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_66_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_43_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_58_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_84_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_83_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_36_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_71_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_48_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_25_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_72_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_31_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v2,$fp,4
addiu $t5,$fp,4
la $t0,label_18_v2
sw $t5,0($t0)
# Original instruction: addi v1,v2,0
la $t5,label_18_v2
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_25_v1
sw $t4,0($t0)
# Original instruction: li v3,0
li $t5,0
la $t0,label_26_v3
sw $t5,0($t0)
# Original instruction: li v4,1
li $t5,1
la $t0,label_23_v4
sw $t5,0($t0)
# Original instruction: mul v3,v3,v4
la $t3,label_26_v3
lw $t3,0($t3)
la $t4,label_23_v4
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_26_v3
sw $t3,0($t0)
# Original instruction: add v0,v1,v3
la $t5,label_25_v1
lw $t5,0($t5)
la $t4,label_26_v3
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_28_v0
sw $t3,0($t0)
# Original instruction: lb v5,0(v0)
la $t5,label_28_v0
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_31_v5
sw $t4,0($t0)
# Original instruction: addiu v6,$sp,-4
addiu $t5,$sp,-4
la $t0,label_32_v6
sw $t5,0($t0)
# Original instruction: sb v5,0(v6)
la $t5,label_31_v5
lw $t5,0($t5)
la $t4,label_32_v6
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v7,label_0_str
la $t5,label_0_str
la $t0,label_35_v7
sw $t5,0($t0)
# Original instruction: addiu v8,$sp,-4
addiu $t5,$sp,-4
la $t0,label_36_v8
sw $t5,0($t0)
# Original instruction: sw v7,0(v8)
la $t5,label_35_v7
lw $t5,0($t5)
la $t4,label_36_v8
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
la $t0,label_38_v11
sw $t5,0($t0)
# Original instruction: addi v10,v11,0
la $t5,label_38_v11
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_45_v10
sw $t4,0($t0)
# Original instruction: li v12,1
li $t5,1
la $t0,label_46_v12
sw $t5,0($t0)
# Original instruction: li v13,1
li $t5,1
la $t0,label_43_v13
sw $t5,0($t0)
# Original instruction: mul v12,v12,v13
la $t3,label_46_v12
lw $t3,0($t3)
la $t4,label_43_v13
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_46_v12
sw $t3,0($t0)
# Original instruction: add v9,v10,v12
la $t5,label_45_v10
lw $t5,0($t5)
la $t4,label_46_v12
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_48_v9
sw $t3,0($t0)
# Original instruction: lb v14,0(v9)
la $t5,label_48_v9
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_51_v14
sw $t4,0($t0)
# Original instruction: addiu v15,$sp,-4
addiu $t5,$sp,-4
la $t0,label_52_v15
sw $t5,0($t0)
# Original instruction: sb v14,0(v15)
la $t5,label_51_v14
lw $t5,0($t5)
la $t4,label_52_v15
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v16,label_0_str
la $t5,label_0_str
la $t0,label_55_v16
sw $t5,0($t0)
# Original instruction: addiu v17,$sp,-4
addiu $t5,$sp,-4
la $t0,label_56_v17
sw $t5,0($t0)
# Original instruction: sw v16,0(v17)
la $t5,label_55_v16
lw $t5,0($t5)
la $t4,label_56_v17
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v20,$fp,4
addiu $t5,$fp,4
la $t0,label_58_v20
sw $t5,0($t0)
# Original instruction: addi v19,v20,0
la $t5,label_58_v20
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_65_v19
sw $t4,0($t0)
# Original instruction: li v21,2
li $t5,2
la $t0,label_66_v21
sw $t5,0($t0)
# Original instruction: li v22,1
li $t5,1
la $t0,label_63_v22
sw $t5,0($t0)
# Original instruction: mul v21,v21,v22
la $t3,label_66_v21
lw $t3,0($t3)
la $t4,label_63_v22
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_66_v21
sw $t3,0($t0)
# Original instruction: add v18,v19,v21
la $t5,label_65_v19
lw $t5,0($t5)
la $t4,label_66_v21
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_68_v18
sw $t3,0($t0)
# Original instruction: lb v23,0(v18)
la $t5,label_68_v18
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_71_v23
sw $t4,0($t0)
# Original instruction: addiu v24,$sp,-4
addiu $t5,$sp,-4
la $t0,label_72_v24
sw $t5,0($t0)
# Original instruction: sb v23,0(v24)
la $t5,label_71_v23
lw $t5,0($t5)
la $t4,label_72_v24
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v25,label_0_str
la $t5,label_0_str
la $t0,label_75_v25
sw $t5,0($t0)
# Original instruction: addiu v26,$sp,-4
addiu $t5,$sp,-4
la $t0,label_76_v26
sw $t5,0($t0)
# Original instruction: sw v25,0(v26)
la $t5,label_75_v25
lw $t5,0($t5)
la $t4,label_76_v26
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v28,$fp,4
addiu $t5,$fp,4
la $t0,label_78_v28
sw $t5,0($t0)
# Original instruction: addi v27,v28,4
la $t5,label_78_v28
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_80_v27
sw $t4,0($t0)
# Original instruction: lw v29,0(v27)
la $t5,label_80_v27
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_83_v29
sw $t4,0($t0)
# Original instruction: addiu v30,$sp,-4
addiu $t5,$sp,-4
la $t0,label_84_v30
sw $t5,0($t0)
# Original instruction: sw v29,0(v30)
la $t5,label_83_v29
lw $t5,0($t5)
la $t4,label_84_v30
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
print_struct_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_28_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_31_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_72_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_46_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_25_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_48_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_71_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_36_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_83_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_84_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_58_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_43_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_26_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_51_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_66_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_63_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_68_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_18_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_38_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_45_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_65_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_52_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_23_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_78_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_55_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_76_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_75_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_35_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_56_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_32_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_80_v27
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
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addiu v33,$fp,-8
addiu $t5,$fp,-8
la $t0,label_86_v33
sw $t5,0($t0)
# Original instruction: addi v32,v33,0
la $t5,label_86_v33
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_93_v32
sw $t4,0($t0)
# Original instruction: li v34,0
li $t5,0
la $t0,label_94_v34
sw $t5,0($t0)
# Original instruction: li v35,1
li $t5,1
la $t0,label_91_v35
sw $t5,0($t0)
# Original instruction: mul v34,v34,v35
la $t3,label_94_v34
lw $t3,0($t3)
la $t4,label_91_v35
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_94_v34
sw $t3,0($t0)
# Original instruction: add v31,v32,v34
la $t5,label_93_v32
lw $t5,0($t5)
la $t4,label_94_v34
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_98_v31
sw $t3,0($t0)
# Original instruction: li v36,97
li $t5,97
la $t0,label_97_v36
sw $t5,0($t0)
# Original instruction: sb v36,0(v31)
la $t5,label_97_v36
lw $t5,0($t5)
la $t4,label_98_v31
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu v39,$fp,-8
addiu $t5,$fp,-8
la $t0,label_100_v39
sw $t5,0($t0)
# Original instruction: addi v38,v39,0
la $t5,label_100_v39
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_107_v38
sw $t4,0($t0)
# Original instruction: li v40,1
li $t5,1
la $t0,label_108_v40
sw $t5,0($t0)
# Original instruction: li v41,1
li $t5,1
la $t0,label_105_v41
sw $t5,0($t0)
# Original instruction: mul v40,v40,v41
la $t3,label_108_v40
lw $t3,0($t3)
la $t4,label_105_v41
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_108_v40
sw $t3,0($t0)
# Original instruction: add v37,v38,v40
la $t5,label_107_v38
lw $t5,0($t5)
la $t4,label_108_v40
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_112_v37
sw $t3,0($t0)
# Original instruction: li v42,98
li $t5,98
la $t0,label_111_v42
sw $t5,0($t0)
# Original instruction: sb v42,0(v37)
la $t5,label_111_v42
lw $t5,0($t5)
la $t4,label_112_v37
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu v45,$fp,-8
addiu $t5,$fp,-8
la $t0,label_114_v45
sw $t5,0($t0)
# Original instruction: addi v44,v45,0
la $t5,label_114_v45
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_121_v44
sw $t4,0($t0)
# Original instruction: li v46,2
li $t5,2
la $t0,label_122_v46
sw $t5,0($t0)
# Original instruction: li v47,1
li $t5,1
la $t0,label_119_v47
sw $t5,0($t0)
# Original instruction: mul v46,v46,v47
la $t3,label_122_v46
lw $t3,0($t3)
la $t4,label_119_v47
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_122_v46
sw $t3,0($t0)
# Original instruction: add v43,v44,v46
la $t5,label_121_v44
lw $t5,0($t5)
la $t4,label_122_v46
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_126_v43
sw $t3,0($t0)
# Original instruction: li v48,99
li $t5,99
la $t0,label_125_v48
sw $t5,0($t0)
# Original instruction: sb v48,0(v43)
la $t5,label_125_v48
lw $t5,0($t5)
la $t4,label_126_v43
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu v50,$fp,-8
addiu $t5,$fp,-8
la $t0,label_128_v50
sw $t5,0($t0)
# Original instruction: addi v49,v50,4
la $t5,label_128_v50
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_132_v49
sw $t4,0($t0)
# Original instruction: li v51,10
li $t5,10
la $t0,label_131_v51
sw $t5,0($t0)
# Original instruction: sw v51,0(v49)
la $t5,label_131_v51
lw $t5,0($t5)
la $t4,label_132_v49
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v54,$fp,-8
addiu $t5,$fp,-8
la $t0,label_134_v54
sw $t5,0($t0)
# Original instruction: addi v53,v54,0
la $t5,label_134_v54
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_141_v53
sw $t4,0($t0)
# Original instruction: li v55,0
li $t5,0
la $t0,label_142_v55
sw $t5,0($t0)
# Original instruction: li v56,1
li $t5,1
la $t0,label_139_v56
sw $t5,0($t0)
# Original instruction: mul v55,v55,v56
la $t3,label_142_v55
lw $t3,0($t3)
la $t4,label_139_v56
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_142_v55
sw $t3,0($t0)
# Original instruction: add v52,v53,v55
la $t5,label_141_v53
lw $t5,0($t5)
la $t4,label_142_v55
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_144_v52
sw $t3,0($t0)
# Original instruction: lb v57,0(v52)
la $t5,label_144_v52
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_147_v57
sw $t4,0($t0)
# Original instruction: addiu v58,$sp,-4
addiu $t5,$sp,-4
la $t0,label_148_v58
sw $t5,0($t0)
# Original instruction: sb v57,0(v58)
la $t5,label_147_v57
lw $t5,0($t5)
la $t4,label_148_v58
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v59,label_0_str
la $t5,label_0_str
la $t0,label_151_v59
sw $t5,0($t0)
# Original instruction: addiu v60,$sp,-4
addiu $t5,$sp,-4
la $t0,label_152_v60
sw $t5,0($t0)
# Original instruction: sw v59,0(v60)
la $t5,label_151_v59
lw $t5,0($t5)
la $t4,label_152_v60
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v63,$fp,-8
addiu $t5,$fp,-8
la $t0,label_154_v63
sw $t5,0($t0)
# Original instruction: addi v62,v63,0
la $t5,label_154_v63
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_161_v62
sw $t4,0($t0)
# Original instruction: li v64,1
li $t5,1
la $t0,label_162_v64
sw $t5,0($t0)
# Original instruction: li v65,1
li $t5,1
la $t0,label_159_v65
sw $t5,0($t0)
# Original instruction: mul v64,v64,v65
la $t3,label_162_v64
lw $t3,0($t3)
la $t4,label_159_v65
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_162_v64
sw $t3,0($t0)
# Original instruction: add v61,v62,v64
la $t5,label_161_v62
lw $t5,0($t5)
la $t4,label_162_v64
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_164_v61
sw $t3,0($t0)
# Original instruction: lb v66,0(v61)
la $t5,label_164_v61
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_167_v66
sw $t4,0($t0)
# Original instruction: addiu v67,$sp,-4
addiu $t5,$sp,-4
la $t0,label_168_v67
sw $t5,0($t0)
# Original instruction: sb v66,0(v67)
la $t5,label_167_v66
lw $t5,0($t5)
la $t4,label_168_v67
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v68,label_0_str
la $t5,label_0_str
la $t0,label_171_v68
sw $t5,0($t0)
# Original instruction: addiu v69,$sp,-4
addiu $t5,$sp,-4
la $t0,label_172_v69
sw $t5,0($t0)
# Original instruction: sw v68,0(v69)
la $t5,label_171_v68
lw $t5,0($t5)
la $t4,label_172_v69
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v72,$fp,-8
addiu $t5,$fp,-8
la $t0,label_174_v72
sw $t5,0($t0)
# Original instruction: addi v71,v72,0
la $t5,label_174_v72
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_181_v71
sw $t4,0($t0)
# Original instruction: li v73,2
li $t5,2
la $t0,label_182_v73
sw $t5,0($t0)
# Original instruction: li v74,1
li $t5,1
la $t0,label_179_v74
sw $t5,0($t0)
# Original instruction: mul v73,v73,v74
la $t3,label_182_v73
lw $t3,0($t3)
la $t4,label_179_v74
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_182_v73
sw $t3,0($t0)
# Original instruction: add v70,v71,v73
la $t5,label_181_v71
lw $t5,0($t5)
la $t4,label_182_v73
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_184_v70
sw $t3,0($t0)
# Original instruction: lb v75,0(v70)
la $t5,label_184_v70
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_187_v75
sw $t4,0($t0)
# Original instruction: addiu v76,$sp,-4
addiu $t5,$sp,-4
la $t0,label_188_v76
sw $t5,0($t0)
# Original instruction: sb v75,0(v76)
la $t5,label_187_v75
lw $t5,0($t5)
la $t4,label_188_v76
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v77,label_0_str
la $t5,label_0_str
la $t0,label_191_v77
sw $t5,0($t0)
# Original instruction: addiu v78,$sp,-4
addiu $t5,$sp,-4
la $t0,label_192_v78
sw $t5,0($t0)
# Original instruction: sw v77,0(v78)
la $t5,label_191_v77
lw $t5,0($t5)
la $t4,label_192_v78
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v80,$fp,-8
addiu $t5,$fp,-8
la $t0,label_194_v80
sw $t5,0($t0)
# Original instruction: addi v79,v80,4
la $t5,label_194_v80
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_196_v79
sw $t4,0($t0)
# Original instruction: lw v81,0(v79)
la $t5,label_196_v79
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_199_v81
sw $t4,0($t0)
# Original instruction: addiu v82,$sp,-4
addiu $t5,$sp,-4
la $t0,label_200_v82
sw $t5,0($t0)
# Original instruction: sw v81,0(v82)
la $t5,label_199_v81
lw $t5,0($t5)
la $t4,label_200_v82
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v83,$fp,-8
addiu $t5,$fp,-8
la $t0,label_207_v83
sw $t5,0($t0)
# Original instruction: addiu v84,$sp,-8
addiu $t5,$sp,-8
la $t0,label_210_v84
sw $t5,0($t0)
# Original instruction: lw v85,0(v83)
la $t5,label_207_v83
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_209_v85
sw $t4,0($t0)
# Original instruction: sw v85,0(v84)
la $t5,label_209_v85
lw $t5,0($t5)
la $t4,label_210_v84
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: lw v85,4(v83)
la $t5,label_207_v83
lw $t5,0($t5)
lw $t4,4($t5)
la $t0,label_209_v85
sw $t4,0($t0)
# Original instruction: sw v85,4(v84)
la $t5,label_209_v85
lw $t5,0($t5)
la $t4,label_210_v84
lw $t4,0($t4)
sw $t5,4($t4)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: jal print_struct
jal print_struct
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
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

