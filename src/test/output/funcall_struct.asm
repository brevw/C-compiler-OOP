.data
label_0_str:
.asciiz "Point 1: ("
.align 2
label_1_str:
.asciiz ", "
.align 2
label_2_str:
.asciiz ")\n"
.align 2
label_3_str:
.asciiz "Point 2: ("
.align 2
label_4_str:
.asciiz "Squared Distance: "
.align 2
label_5_str:
.asciiz "\n"
.align 2
# Allocated labels for virtual registers
label_36_v6:
.space 4
label_62_v17:
.space 4
label_38_v7:
.space 4
label_75_v25:
.space 4
label_78_v26:
.space 4
label_57_v16:
.space 4
label_79_v27:
.space 4
label_35_v3:
.space 4
label_54_v15:
.space 4
label_63_v19:
.space 4
label_44_v9:
.space 4
label_42_v10:
.space 4
label_39_v0:
.space 4
label_71_v22:
.space 4
label_66_v21:
.space 4
label_74_v20:
.space 4
label_52_v14:
.space 4
label_28_v1:
.space 4
label_47_v13:
.space 4
label_60_v18:
.space 4
label_55_v8:
.space 4
label_69_v23:
.space 4
label_49_v12:
.space 4
label_26_v2:
.space 4
label_51_v11:
.space 4
label_72_v24:
.space 4
label_33_v4:
.space 4
label_31_v5:
.space 4
# Allocated labels for virtual registers
label_130_v52:
.space 4
label_111_v43:
.space 4
label_83_v29:
.space 4
label_87_v30:
.space 4
label_123_v49:
.space 4
label_127_v50:
.space 4
label_148_v60:
.space 4
label_118_v46:
.space 4
label_158_v63:
.space 4
label_110_v42:
.space 4
label_102_v38:
.space 4
label_139_v57:
.space 4
label_169_v68:
.space 4
label_131_v53:
.space 4
label_156_v61:
.space 4
label_159_v62:
.space 4
label_85_v31:
.space 4
label_119_v47:
.space 4
label_97_v37:
.space 4
label_125_v51:
.space 4
label_135_v55:
.space 4
label_91_v33:
.space 4
label_138_v56:
.space 4
label_94_v34:
.space 4
label_168_v67:
.space 4
label_113_v45:
.space 4
label_134_v54:
.space 4
label_99_v36:
.space 4
label_95_v35:
.space 4
label_149_v59:
.space 4
label_103_v39:
.space 4
label_165_v66:
.space 4
label_106_v40:
.space 4
label_115_v44:
.space 4
label_146_v58:
.space 4
label_122_v48:
.space 4
label_107_v41:
.space 4
label_82_v28:
.space 4
label_161_v64:
.space 4
label_90_v32:
.space 4
label_164_v65:
.space 4
# Allocated labels for virtual registers
label_187_v75:
.space 4
label_192_v80:
.space 4
label_200_v81:
.space 4
label_189_v79:
.space 4
label_210_v84:
.space 4
label_177_v73:
.space 4
label_212_v86:
.space 4
label_171_v70:
.space 4
label_181_v72:
.space 4
label_180_v74:
.space 4
label_202_v83:
.space 4
label_203_v82:
.space 4
label_174_v71:
.space 4
label_183_v76:
.space 4
label_186_v77:
.space 4
label_213_v85:
.space 4
label_175_v69:
.space 4
label_193_v78:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
calculate_distance:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: pushRegisters
la $t0,label_36_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_62_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_75_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_57_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_79_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_35_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_54_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_63_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_44_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_42_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_39_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_71_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_66_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_74_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_52_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_47_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_60_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_55_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_69_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_72_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_33_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_31_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v0,$fp,-4
addiu $t5,$fp,-4
la $t0,label_39_v0
sw $t5,0($t0)
# Original instruction: addiu v2,$fp,8
addiu $t5,$fp,8
la $t0,label_26_v2
sw $t5,0($t0)
# Original instruction: addi v1,v2,0
la $t5,label_26_v2
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_28_v1
sw $t4,0($t0)
# Original instruction: lw v3,0(v1)
la $t5,label_28_v1
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_35_v3
sw $t4,0($t0)
# Original instruction: addiu v5,$fp,16
addiu $t5,$fp,16
la $t0,label_31_v5
sw $t5,0($t0)
# Original instruction: addi v4,v5,0
la $t5,label_31_v5
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_33_v4
sw $t4,0($t0)
# Original instruction: lw v6,0(v4)
la $t5,label_33_v4
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_36_v6
sw $t4,0($t0)
# Original instruction: sub v7,v3,v6
la $t5,label_35_v3
lw $t5,0($t5)
la $t4,label_36_v6
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_38_v7
sw $t3,0($t0)
# Original instruction: sw v7,0(v0)
la $t5,label_38_v7
lw $t5,0($t5)
la $t4,label_39_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v8,$fp,-8
addiu $t5,$fp,-8
la $t0,label_55_v8
sw $t5,0($t0)
# Original instruction: addiu v10,$fp,8
addiu $t5,$fp,8
la $t0,label_42_v10
sw $t5,0($t0)
# Original instruction: addi v9,v10,4
la $t5,label_42_v10
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_44_v9
sw $t4,0($t0)
# Original instruction: lw v11,0(v9)
la $t5,label_44_v9
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_51_v11
sw $t4,0($t0)
# Original instruction: addiu v13,$fp,16
addiu $t5,$fp,16
la $t0,label_47_v13
sw $t5,0($t0)
# Original instruction: addi v12,v13,4
la $t5,label_47_v13
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_49_v12
sw $t4,0($t0)
# Original instruction: lw v14,0(v12)
la $t5,label_49_v12
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_52_v14
sw $t4,0($t0)
# Original instruction: sub v15,v11,v14
la $t5,label_51_v11
lw $t5,0($t5)
la $t4,label_52_v14
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_54_v15
sw $t3,0($t0)
# Original instruction: sw v15,0(v8)
la $t5,label_54_v15
lw $t5,0($t5)
la $t4,label_55_v8
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v16,$fp,-4
addiu $t5,$fp,-4
la $t0,label_57_v16
sw $t5,0($t0)
# Original instruction: lw v17,0(v16)
la $t5,label_57_v16
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_62_v17
sw $t4,0($t0)
# Original instruction: addiu v18,$fp,-4
addiu $t5,$fp,-4
la $t0,label_60_v18
sw $t5,0($t0)
# Original instruction: lw v19,0(v18)
la $t5,label_60_v18
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_63_v19
sw $t4,0($t0)
# Original instruction: mul v20,v17,v19
la $t5,label_62_v17
lw $t5,0($t5)
la $t4,label_63_v19
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_74_v20
sw $t3,0($t0)
# Original instruction: addiu v21,$fp,-8
addiu $t5,$fp,-8
la $t0,label_66_v21
sw $t5,0($t0)
# Original instruction: lw v22,0(v21)
la $t5,label_66_v21
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_71_v22
sw $t4,0($t0)
# Original instruction: addiu v23,$fp,-8
addiu $t5,$fp,-8
la $t0,label_69_v23
sw $t5,0($t0)
# Original instruction: lw v24,0(v23)
la $t5,label_69_v23
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_72_v24
sw $t4,0($t0)
# Original instruction: mul v25,v22,v24
la $t5,label_71_v22
lw $t5,0($t5)
la $t4,label_72_v24
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_75_v25
sw $t3,0($t0)
# Original instruction: add v26,v20,v25
la $t5,label_74_v20
lw $t5,0($t5)
la $t4,label_75_v25
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_78_v26
sw $t3,0($t0)
# Original instruction: addi v27,$fp,4
addi $t5,$fp,4
la $t0,label_79_v27
sw $t5,0($t0)
# Original instruction: sw v26,0(v27)
la $t5,label_78_v26
lw $t5,0($t5)
la $t4,label_79_v27
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j calculate_distance_epilogue
j calculate_distance_epilogue
calculate_distance_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_31_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_33_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_72_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_51_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_26_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_49_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_69_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_55_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_60_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_47_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_28_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_52_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_74_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_66_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_71_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_39_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_42_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_44_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_63_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_54_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_35_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_79_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_57_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_78_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_75_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_38_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_62_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_36_v6
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
print_distance:
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
la $t0,label_130_v52
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_111_v43
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_83_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_87_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_123_v49
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_127_v50
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_148_v60
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_118_v46
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_158_v63
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_110_v42
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_102_v38
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_139_v57
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_169_v68
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_131_v53
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_156_v61
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_159_v62
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_85_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_119_v47
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_97_v37
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_125_v51
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_135_v55
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_91_v33
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_138_v56
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_94_v34
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_168_v67
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_113_v45
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_134_v54
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_99_v36
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_95_v35
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_149_v59
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_103_v39
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_165_v66
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_106_v40
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_115_v44
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_146_v58
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_122_v48
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_107_v41
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_82_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_161_v64
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_90_v32
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_164_v65
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: la v28,label_0_str
la $t5,label_0_str
la $t0,label_82_v28
sw $t5,0($t0)
# Original instruction: addiu v29,$sp,-4
addiu $t5,$sp,-4
la $t0,label_83_v29
sw $t5,0($t0)
# Original instruction: sw v28,0(v29)
la $t5,label_82_v28
lw $t5,0($t5)
la $t4,label_83_v29
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v31,$fp,12
addiu $t5,$fp,12
la $t0,label_85_v31
sw $t5,0($t0)
# Original instruction: addi v30,v31,0
la $t5,label_85_v31
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_87_v30
sw $t4,0($t0)
# Original instruction: lw v32,0(v30)
la $t5,label_87_v30
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_90_v32
sw $t4,0($t0)
# Original instruction: addiu v33,$sp,-4
addiu $t5,$sp,-4
la $t0,label_91_v33
sw $t5,0($t0)
# Original instruction: sw v32,0(v33)
la $t5,label_90_v32
lw $t5,0($t5)
la $t4,label_91_v33
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v34,label_1_str
la $t5,label_1_str
la $t0,label_94_v34
sw $t5,0($t0)
# Original instruction: addiu v35,$sp,-4
addiu $t5,$sp,-4
la $t0,label_95_v35
sw $t5,0($t0)
# Original instruction: sw v34,0(v35)
la $t5,label_94_v34
lw $t5,0($t5)
la $t4,label_95_v35
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v37,$fp,12
addiu $t5,$fp,12
la $t0,label_97_v37
sw $t5,0($t0)
# Original instruction: addi v36,v37,4
la $t5,label_97_v37
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_99_v36
sw $t4,0($t0)
# Original instruction: lw v38,0(v36)
la $t5,label_99_v36
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_102_v38
sw $t4,0($t0)
# Original instruction: addiu v39,$sp,-4
addiu $t5,$sp,-4
la $t0,label_103_v39
sw $t5,0($t0)
# Original instruction: sw v38,0(v39)
la $t5,label_102_v38
lw $t5,0($t5)
la $t4,label_103_v39
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v40,label_2_str
la $t5,label_2_str
la $t0,label_106_v40
sw $t5,0($t0)
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
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v42,label_3_str
la $t5,label_3_str
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
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v45,$fp,4
addiu $t5,$fp,4
la $t0,label_113_v45
sw $t5,0($t0)
# Original instruction: addi v44,v45,0
la $t5,label_113_v45
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_115_v44
sw $t4,0($t0)
# Original instruction: lw v46,0(v44)
la $t5,label_115_v44
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_118_v46
sw $t4,0($t0)
# Original instruction: addiu v47,$sp,-4
addiu $t5,$sp,-4
la $t0,label_119_v47
sw $t5,0($t0)
# Original instruction: sw v46,0(v47)
la $t5,label_118_v46
lw $t5,0($t5)
la $t4,label_119_v47
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v48,label_1_str
la $t5,label_1_str
la $t0,label_122_v48
sw $t5,0($t0)
# Original instruction: addiu v49,$sp,-4
addiu $t5,$sp,-4
la $t0,label_123_v49
sw $t5,0($t0)
# Original instruction: sw v48,0(v49)
la $t5,label_122_v48
lw $t5,0($t5)
la $t4,label_123_v49
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v51,$fp,4
addiu $t5,$fp,4
la $t0,label_125_v51
sw $t5,0($t0)
# Original instruction: addi v50,v51,4
la $t5,label_125_v51
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_127_v50
sw $t4,0($t0)
# Original instruction: lw v52,0(v50)
la $t5,label_127_v50
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_130_v52
sw $t4,0($t0)
# Original instruction: addiu v53,$sp,-4
addiu $t5,$sp,-4
la $t0,label_131_v53
sw $t5,0($t0)
# Original instruction: sw v52,0(v53)
la $t5,label_130_v52
lw $t5,0($t5)
la $t4,label_131_v53
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v54,label_2_str
la $t5,label_2_str
la $t0,label_134_v54
sw $t5,0($t0)
# Original instruction: addiu v55,$sp,-4
addiu $t5,$sp,-4
la $t0,label_135_v55
sw $t5,0($t0)
# Original instruction: sw v54,0(v55)
la $t5,label_134_v54
lw $t5,0($t5)
la $t4,label_135_v55
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v56,label_4_str
la $t5,label_4_str
la $t0,label_138_v56
sw $t5,0($t0)
# Original instruction: addiu v57,$sp,-4
addiu $t5,$sp,-4
la $t0,label_139_v57
sw $t5,0($t0)
# Original instruction: sw v56,0(v57)
la $t5,label_138_v56
lw $t5,0($t5)
la $t4,label_139_v57
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v58,$fp,12
addiu $t5,$fp,12
la $t0,label_146_v58
sw $t5,0($t0)
# Original instruction: addiu v59,$sp,-8
addiu $t5,$sp,-8
la $t0,label_149_v59
sw $t5,0($t0)
# Original instruction: lw v60,0(v58)
la $t5,label_146_v58
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_148_v60
sw $t4,0($t0)
# Original instruction: sw v60,0(v59)
la $t5,label_148_v60
lw $t5,0($t5)
la $t4,label_149_v59
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: lw v60,4(v58)
la $t5,label_146_v58
lw $t5,0($t5)
lw $t4,4($t5)
la $t0,label_148_v60
sw $t4,0($t0)
# Original instruction: sw v60,4(v59)
la $t5,label_148_v60
lw $t5,0($t5)
la $t4,label_149_v59
lw $t4,0($t4)
sw $t5,4($t4)
# Original instruction: addiu v61,$fp,4
addiu $t5,$fp,4
la $t0,label_156_v61
sw $t5,0($t0)
# Original instruction: addiu v62,$sp,-16
addiu $t5,$sp,-16
la $t0,label_159_v62
sw $t5,0($t0)
# Original instruction: lw v63,0(v61)
la $t5,label_156_v61
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_158_v63
sw $t4,0($t0)
# Original instruction: sw v63,0(v62)
la $t5,label_158_v63
lw $t5,0($t5)
la $t4,label_159_v62
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: lw v63,4(v61)
la $t5,label_156_v61
lw $t5,0($t5)
lw $t4,4($t5)
la $t0,label_158_v63
sw $t4,0($t0)
# Original instruction: sw v63,4(v62)
la $t5,label_158_v63
lw $t5,0($t5)
la $t4,label_159_v62
lw $t4,0($t4)
sw $t5,4($t4)
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal calculate_distance
jal calculate_distance
# Original instruction: addi v64,$sp,0
addi $t5,$sp,0
la $t0,label_161_v64
sw $t5,0($t0)
# Original instruction: lw v65,0(v64)
la $t5,label_161_v64
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_164_v65
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,20
addiu $sp,$sp,20
# Original instruction: addiu v66,$sp,-4
addiu $t5,$sp,-4
la $t0,label_165_v66
sw $t5,0($t0)
# Original instruction: sw v65,0(v66)
la $t5,label_164_v65
lw $t5,0($t5)
la $t4,label_165_v66
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v67,label_5_str
la $t5,label_5_str
la $t0,label_168_v67
sw $t5,0($t0)
# Original instruction: addiu v68,$sp,-4
addiu $t5,$sp,-4
la $t0,label_169_v68
sw $t5,0($t0)
# Original instruction: sw v67,0(v68)
la $t5,label_168_v67
lw $t5,0($t5)
la $t4,label_169_v68
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
print_distance_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_164_v65
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_90_v32
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_161_v64
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_82_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_107_v41
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_122_v48
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_146_v58
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_115_v44
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_106_v40
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_165_v66
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_103_v39
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_149_v59
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_95_v35
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_99_v36
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_134_v54
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_113_v45
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_168_v67
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_94_v34
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_138_v56
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_91_v33
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_135_v55
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_125_v51
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_97_v37
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_119_v47
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_85_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_159_v62
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_156_v61
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_131_v53
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_169_v68
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_139_v57
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_102_v38
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_110_v42
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_158_v63
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_118_v46
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_148_v60
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_127_v50
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_123_v49
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_87_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_83_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_111_v43
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_130_v52
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
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: addiu v70,$fp,-8
addiu $t5,$fp,-8
la $t0,label_171_v70
sw $t5,0($t0)
# Original instruction: addi v69,v70,0
la $t5,label_171_v70
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_175_v69
sw $t4,0($t0)
# Original instruction: li v71,1
li $t5,1
la $t0,label_174_v71
sw $t5,0($t0)
# Original instruction: sw v71,0(v69)
la $t5,label_174_v71
lw $t5,0($t5)
la $t4,label_175_v69
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v73,$fp,-8
addiu $t5,$fp,-8
la $t0,label_177_v73
sw $t5,0($t0)
# Original instruction: addi v72,v73,4
la $t5,label_177_v73
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_181_v72
sw $t4,0($t0)
# Original instruction: li v74,2
li $t5,2
la $t0,label_180_v74
sw $t5,0($t0)
# Original instruction: sw v74,0(v72)
la $t5,label_180_v74
lw $t5,0($t5)
la $t4,label_181_v72
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v76,$fp,-16
addiu $t5,$fp,-16
la $t0,label_183_v76
sw $t5,0($t0)
# Original instruction: addi v75,v76,0
la $t5,label_183_v76
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_187_v75
sw $t4,0($t0)
# Original instruction: li v77,4
li $t5,4
la $t0,label_186_v77
sw $t5,0($t0)
# Original instruction: sw v77,0(v75)
la $t5,label_186_v77
lw $t5,0($t5)
la $t4,label_187_v75
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v79,$fp,-16
addiu $t5,$fp,-16
la $t0,label_189_v79
sw $t5,0($t0)
# Original instruction: addi v78,v79,4
la $t5,label_189_v79
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_193_v78
sw $t4,0($t0)
# Original instruction: li v80,6
li $t5,6
la $t0,label_192_v80
sw $t5,0($t0)
# Original instruction: sw v80,0(v78)
la $t5,label_192_v80
lw $t5,0($t5)
la $t4,label_193_v78
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v81,$fp,-8
addiu $t5,$fp,-8
la $t0,label_200_v81
sw $t5,0($t0)
# Original instruction: addiu v82,$sp,-8
addiu $t5,$sp,-8
la $t0,label_203_v82
sw $t5,0($t0)
# Original instruction: lw v83,0(v81)
la $t5,label_200_v81
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_202_v83
sw $t4,0($t0)
# Original instruction: sw v83,0(v82)
la $t5,label_202_v83
lw $t5,0($t5)
la $t4,label_203_v82
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: lw v83,4(v81)
la $t5,label_200_v81
lw $t5,0($t5)
lw $t4,4($t5)
la $t0,label_202_v83
sw $t4,0($t0)
# Original instruction: sw v83,4(v82)
la $t5,label_202_v83
lw $t5,0($t5)
la $t4,label_203_v82
lw $t4,0($t4)
sw $t5,4($t4)
# Original instruction: addiu v84,$fp,-16
addiu $t5,$fp,-16
la $t0,label_210_v84
sw $t5,0($t0)
# Original instruction: addiu v85,$sp,-16
addiu $t5,$sp,-16
la $t0,label_213_v85
sw $t5,0($t0)
# Original instruction: lw v86,0(v84)
la $t5,label_210_v84
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_212_v86
sw $t4,0($t0)
# Original instruction: sw v86,0(v85)
la $t5,label_212_v86
lw $t5,0($t5)
la $t4,label_213_v85
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: lw v86,4(v84)
la $t5,label_210_v84
lw $t5,0($t5)
lw $t4,4($t5)
la $t0,label_212_v86
sw $t4,0($t0)
# Original instruction: sw v86,4(v85)
la $t5,label_212_v86
lw $t5,0($t5)
la $t4,label_213_v85
lw $t4,0($t4)
sw $t5,4($t4)
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: jal print_distance
jal print_distance
# Original instruction: addiu $sp,$sp,16
addiu $sp,$sp,16
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

