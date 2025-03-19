.data
a11:
.space 1
.align 2
a12:
.space 1
.align 2
a13:
.space 1
.align 2
a21:
.space 1
.align 2
a22:
.space 1
.align 2
a23:
.space 1
.align 2
a31:
.space 1
.align 2
a32:
.space 1
.align 2
a33:
.space 1
.align 2
empty:
.space 1
.align 2
label_10_str:
.asciiz "\n"
.align 2
label_11_str:
.asciiz "     1   2   3\n"
.align 2
label_12_str:
.asciiz "   +---+---+---+\n"
.align 2
label_13_str:
.asciiz "a  | "
.align 2
label_14_str:
.asciiz " | "
.align 2
label_15_str:
.asciiz " |\n"
.align 2
label_16_str:
.asciiz "b  | "
.align 2
label_17_str:
.asciiz "c  | "
.align 2
label_18_str:
.asciiz "Player "
.align 2
label_19_str:
.asciiz " has won!\n"
.align 2
label_20_str:
.asciiz " select move (e.g. a2)>"
.align 2
label_21_str:
.asciiz "That is not a valid move!\n"
.align 2
label_22_str:
.asciiz "That move is not possible!\n"
.align 2
label_23_str:
.asciiz "It\'s a draw!\n"
.align 2
label_24_str:
.asciiz "Play again? (y/n)> "
.align 2
# Allocated labels for virtual registers

.text
reset:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
# Original instruction: la v0,a11
la $t1,a11
# Original instruction: la v1,empty
la $t0,empty
# Original instruction: lb v2,0(v1)
lb $t0,0($t0)
# Original instruction: sb v2,0(v0)
sb $t0,0($t1)
# Original instruction: la v3,a12
la $t1,a12
# Original instruction: la v4,empty
la $t0,empty
# Original instruction: lb v5,0(v4)
lb $t0,0($t0)
# Original instruction: sb v5,0(v3)
sb $t0,0($t1)
# Original instruction: la v6,a13
la $t1,a13
# Original instruction: la v7,empty
la $t0,empty
# Original instruction: lb v8,0(v7)
lb $t0,0($t0)
# Original instruction: sb v8,0(v6)
sb $t0,0($t1)
# Original instruction: la v9,a21
la $t1,a21
# Original instruction: la v10,empty
la $t0,empty
# Original instruction: lb v11,0(v10)
lb $t0,0($t0)
# Original instruction: sb v11,0(v9)
sb $t0,0($t1)
# Original instruction: la v12,a22
la $t1,a22
# Original instruction: la v13,empty
la $t0,empty
# Original instruction: lb v14,0(v13)
lb $t0,0($t0)
# Original instruction: sb v14,0(v12)
sb $t0,0($t1)
# Original instruction: la v15,a23
la $t1,a23
# Original instruction: la v16,empty
la $t0,empty
# Original instruction: lb v17,0(v16)
lb $t0,0($t0)
# Original instruction: sb v17,0(v15)
sb $t0,0($t1)
# Original instruction: la v18,a31
la $t1,a31
# Original instruction: la v19,empty
la $t0,empty
# Original instruction: lb v20,0(v19)
lb $t0,0($t0)
# Original instruction: sb v20,0(v18)
sb $t0,0($t1)
# Original instruction: la v21,a32
la $t1,a32
# Original instruction: la v22,empty
la $t0,empty
# Original instruction: lb v23,0(v22)
lb $t0,0($t0)
# Original instruction: sb v23,0(v21)
sb $t0,0($t1)
# Original instruction: la v24,a33
la $t1,a33
# Original instruction: la v25,empty
la $t0,empty
# Original instruction: lb v26,0(v25)
lb $t0,0($t0)
# Original instruction: sb v26,0(v24)
sb $t0,0($t1)
reset_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
full:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
# Original instruction: addiu v27,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v28,0
li $t0,0
# Original instruction: sw v28,0(v27)
sw $t0,0($t1)
# Original instruction: la v29,a11
la $t0,a11
# Original instruction: lb v30,0(v29)
lb $t1,0($t0)
# Original instruction: la v31,empty
la $t0,empty
# Original instruction: lb v32,0(v31)
lb $t0,0($t0)
# Original instruction: xor v33,v30,v32
xor $t0,$t1,$t0
# Original instruction: sltu v33,$zero,v33
sltu $t0,$zero,$t0
# Original instruction: beqz v33,label_28_END
beqz $t0,label_28_END
# Original instruction: addiu v34,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v35,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v36,0(v35)
lw $t0,0($t0)
# Original instruction: li v37,1
li $t1,1
# Original instruction: add v38,v36,v37
add $t0,$t0,$t1
# Original instruction: sw v38,0(v34)
sw $t0,0($t2)
label_28_END:
# Original instruction: la v39,a21
la $t0,a21
# Original instruction: lb v40,0(v39)
lb $t1,0($t0)
# Original instruction: la v41,empty
la $t0,empty
# Original instruction: lb v42,0(v41)
lb $t0,0($t0)
# Original instruction: xor v43,v40,v42
xor $t0,$t1,$t0
# Original instruction: sltu v43,$zero,v43
sltu $t0,$zero,$t0
# Original instruction: beqz v43,label_29_END
beqz $t0,label_29_END
# Original instruction: addiu v44,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v45,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v46,0(v45)
lw $t0,0($t0)
# Original instruction: li v47,1
li $t1,1
# Original instruction: add v48,v46,v47
add $t0,$t0,$t1
# Original instruction: sw v48,0(v44)
sw $t0,0($t2)
label_29_END:
# Original instruction: la v49,a31
la $t0,a31
# Original instruction: lb v50,0(v49)
lb $t1,0($t0)
# Original instruction: la v51,empty
la $t0,empty
# Original instruction: lb v52,0(v51)
lb $t0,0($t0)
# Original instruction: xor v53,v50,v52
xor $t0,$t1,$t0
# Original instruction: sltu v53,$zero,v53
sltu $t0,$zero,$t0
# Original instruction: beqz v53,label_30_END
beqz $t0,label_30_END
# Original instruction: addiu v54,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v55,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v56,0(v55)
lw $t1,0($t0)
# Original instruction: li v57,1
li $t0,1
# Original instruction: add v58,v56,v57
add $t0,$t1,$t0
# Original instruction: sw v58,0(v54)
sw $t0,0($t2)
label_30_END:
# Original instruction: la v59,a12
la $t0,a12
# Original instruction: lb v60,0(v59)
lb $t1,0($t0)
# Original instruction: la v61,empty
la $t0,empty
# Original instruction: lb v62,0(v61)
lb $t0,0($t0)
# Original instruction: xor v63,v60,v62
xor $t0,$t1,$t0
# Original instruction: sltu v63,$zero,v63
sltu $t0,$zero,$t0
# Original instruction: beqz v63,label_31_END
beqz $t0,label_31_END
# Original instruction: addiu v64,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v65,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v66,0(v65)
lw $t0,0($t0)
# Original instruction: li v67,1
li $t1,1
# Original instruction: add v68,v66,v67
add $t0,$t0,$t1
# Original instruction: sw v68,0(v64)
sw $t0,0($t2)
label_31_END:
# Original instruction: la v69,a22
la $t0,a22
# Original instruction: lb v70,0(v69)
lb $t1,0($t0)
# Original instruction: la v71,empty
la $t0,empty
# Original instruction: lb v72,0(v71)
lb $t0,0($t0)
# Original instruction: xor v73,v70,v72
xor $t0,$t1,$t0
# Original instruction: sltu v73,$zero,v73
sltu $t0,$zero,$t0
# Original instruction: beqz v73,label_32_END
beqz $t0,label_32_END
# Original instruction: addiu v74,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v75,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v76,0(v75)
lw $t0,0($t0)
# Original instruction: li v77,1
li $t1,1
# Original instruction: add v78,v76,v77
add $t0,$t0,$t1
# Original instruction: sw v78,0(v74)
sw $t0,0($t2)
label_32_END:
# Original instruction: la v79,a32
la $t0,a32
# Original instruction: lb v80,0(v79)
lb $t1,0($t0)
# Original instruction: la v81,empty
la $t0,empty
# Original instruction: lb v82,0(v81)
lb $t0,0($t0)
# Original instruction: xor v83,v80,v82
xor $t0,$t1,$t0
# Original instruction: sltu v83,$zero,v83
sltu $t0,$zero,$t0
# Original instruction: beqz v83,label_33_END
beqz $t0,label_33_END
# Original instruction: addiu v84,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v85,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v86,0(v85)
lw $t1,0($t0)
# Original instruction: li v87,1
li $t0,1
# Original instruction: add v88,v86,v87
add $t0,$t1,$t0
# Original instruction: sw v88,0(v84)
sw $t0,0($t2)
label_33_END:
# Original instruction: la v89,a13
la $t0,a13
# Original instruction: lb v90,0(v89)
lb $t1,0($t0)
# Original instruction: la v91,empty
la $t0,empty
# Original instruction: lb v92,0(v91)
lb $t0,0($t0)
# Original instruction: xor v93,v90,v92
xor $t0,$t1,$t0
# Original instruction: sltu v93,$zero,v93
sltu $t0,$zero,$t0
# Original instruction: beqz v93,label_34_END
beqz $t0,label_34_END
# Original instruction: addiu v94,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v95,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v96,0(v95)
lw $t0,0($t0)
# Original instruction: li v97,1
li $t1,1
# Original instruction: add v98,v96,v97
add $t0,$t0,$t1
# Original instruction: sw v98,0(v94)
sw $t0,0($t2)
label_34_END:
# Original instruction: la v99,a23
la $t0,a23
# Original instruction: lb v100,0(v99)
lb $t1,0($t0)
# Original instruction: la v101,empty
la $t0,empty
# Original instruction: lb v102,0(v101)
lb $t0,0($t0)
# Original instruction: xor v103,v100,v102
xor $t0,$t1,$t0
# Original instruction: sltu v103,$zero,v103
sltu $t0,$zero,$t0
# Original instruction: beqz v103,label_35_END
beqz $t0,label_35_END
# Original instruction: addiu v104,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v105,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v106,0(v105)
lw $t1,0($t0)
# Original instruction: li v107,1
li $t0,1
# Original instruction: add v108,v106,v107
add $t0,$t1,$t0
# Original instruction: sw v108,0(v104)
sw $t0,0($t2)
label_35_END:
# Original instruction: la v109,a33
la $t0,a33
# Original instruction: lb v110,0(v109)
lb $t1,0($t0)
# Original instruction: la v111,empty
la $t0,empty
# Original instruction: lb v112,0(v111)
lb $t0,0($t0)
# Original instruction: xor v113,v110,v112
xor $t0,$t1,$t0
# Original instruction: sltu v113,$zero,v113
sltu $t0,$zero,$t0
# Original instruction: beqz v113,label_36_END
beqz $t0,label_36_END
# Original instruction: addiu v114,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v115,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v116,0(v115)
lw $t1,0($t0)
# Original instruction: li v117,1
li $t0,1
# Original instruction: add v118,v116,v117
add $t0,$t1,$t0
# Original instruction: sw v118,0(v114)
sw $t0,0($t2)
label_36_END:
# Original instruction: addiu v119,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v120,0(v119)
lw $t0,0($t0)
# Original instruction: li v121,9
li $t1,9
# Original instruction: xor v122,v120,v121
xor $t0,$t0,$t1
# Original instruction: sltiu v122,v122,1
sltiu $t0,$t0,1
# Original instruction: beqz v122,label_37_ELSE
beqz $t0,label_37_ELSE
# Original instruction: li v123,1
li $t0,1
# Original instruction: addi v124,$fp,4
addi $t1,$fp,4
# Original instruction: sw v123,0(v124)
sw $t0,0($t1)
# Original instruction: j full_epilogue
j full_epilogue
# Original instruction: j label_38_END
j label_38_END
label_37_ELSE:
# Original instruction: li v125,0
li $t1,0
# Original instruction: addi v126,$fp,4
addi $t0,$fp,4
# Original instruction: sw v125,0(v126)
sw $t1,0($t0)
# Original instruction: j full_epilogue
j full_epilogue
label_38_END:
full_epilogue:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
set:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
# Original instruction: addiu v127,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v128,1
li $t1,1
# Original instruction: sw v128,0(v127)
sw $t1,0($t0)
# Original instruction: addiu v129,$fp,16
addiu $t0,$fp,16
# Original instruction: lb v130,0(v129)
lb $t1,0($t0)
# Original instruction: li v131,97
li $t0,97
# Original instruction: xor v132,v130,v131
xor $t0,$t1,$t0
# Original instruction: sltiu v132,v132,1
sltiu $t0,$t0,1
# Original instruction: beqz v132,label_41_ELSE
beqz $t0,label_41_ELSE
# Original instruction: addiu v133,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v134,0(v133)
lw $t1,0($t0)
# Original instruction: li v135,1
li $t0,1
# Original instruction: xor v136,v134,v135
xor $t0,$t1,$t0
# Original instruction: sltiu v136,v136,1
sltiu $t0,$t0,1
# Original instruction: beqz v136,label_43_ELSE
beqz $t0,label_43_ELSE
# Original instruction: la v137,a11
la $t0,a11
# Original instruction: lb v138,0(v137)
lb $t1,0($t0)
# Original instruction: la v139,empty
la $t0,empty
# Original instruction: lb v140,0(v139)
lb $t0,0($t0)
# Original instruction: xor v141,v138,v140
xor $t0,$t1,$t0
# Original instruction: sltiu v141,v141,1
sltiu $t0,$t0,1
# Original instruction: beqz v141,label_45_ELSE
beqz $t0,label_45_ELSE
# Original instruction: la v142,a11
la $t1,a11
# Original instruction: addiu v143,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v144,0(v143)
lb $t0,0($t0)
# Original instruction: sb v144,0(v142)
sb $t0,0($t1)
# Original instruction: j label_46_END
j label_46_END
label_45_ELSE:
# Original instruction: addiu v145,$fp,-4
addiu $t2,$fp,-4
# Original instruction: li v146,0
li $t0,0
# Original instruction: li v147,1
li $t1,1
# Original instruction: sub v148,v146,v147
sub $t0,$t0,$t1
# Original instruction: sw v148,0(v145)
sw $t0,0($t2)
label_46_END:
# Original instruction: j label_44_END
j label_44_END
label_43_ELSE:
# Original instruction: addiu v149,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v150,0(v149)
lw $t1,0($t0)
# Original instruction: li v151,2
li $t0,2
# Original instruction: xor v152,v150,v151
xor $t0,$t1,$t0
# Original instruction: sltiu v152,v152,1
sltiu $t0,$t0,1
# Original instruction: beqz v152,label_47_ELSE
beqz $t0,label_47_ELSE
# Original instruction: la v153,a12
la $t0,a12
# Original instruction: lb v154,0(v153)
lb $t1,0($t0)
# Original instruction: la v155,empty
la $t0,empty
# Original instruction: lb v156,0(v155)
lb $t0,0($t0)
# Original instruction: xor v157,v154,v156
xor $t0,$t1,$t0
# Original instruction: sltiu v157,v157,1
sltiu $t0,$t0,1
# Original instruction: beqz v157,label_49_ELSE
beqz $t0,label_49_ELSE
# Original instruction: la v158,a12
la $t1,a12
# Original instruction: addiu v159,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v160,0(v159)
lb $t0,0($t0)
# Original instruction: sb v160,0(v158)
sb $t0,0($t1)
# Original instruction: j label_50_END
j label_50_END
label_49_ELSE:
# Original instruction: addiu v161,$fp,-4
addiu $t2,$fp,-4
# Original instruction: li v162,0
li $t0,0
# Original instruction: li v163,1
li $t1,1
# Original instruction: sub v164,v162,v163
sub $t0,$t0,$t1
# Original instruction: sw v164,0(v161)
sw $t0,0($t2)
label_50_END:
# Original instruction: j label_48_END
j label_48_END
label_47_ELSE:
# Original instruction: addiu v165,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v166,0(v165)
lw $t0,0($t0)
# Original instruction: li v167,3
li $t1,3
# Original instruction: xor v168,v166,v167
xor $t0,$t0,$t1
# Original instruction: sltiu v168,v168,1
sltiu $t0,$t0,1
# Original instruction: beqz v168,label_51_ELSE
beqz $t0,label_51_ELSE
# Original instruction: la v169,a13
la $t0,a13
# Original instruction: lb v170,0(v169)
lb $t1,0($t0)
# Original instruction: la v171,empty
la $t0,empty
# Original instruction: lb v172,0(v171)
lb $t0,0($t0)
# Original instruction: xor v173,v170,v172
xor $t0,$t1,$t0
# Original instruction: sltiu v173,v173,1
sltiu $t0,$t0,1
# Original instruction: beqz v173,label_53_ELSE
beqz $t0,label_53_ELSE
# Original instruction: la v174,a13
la $t1,a13
# Original instruction: addiu v175,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v176,0(v175)
lb $t0,0($t0)
# Original instruction: sb v176,0(v174)
sb $t0,0($t1)
# Original instruction: j label_54_END
j label_54_END
label_53_ELSE:
# Original instruction: addiu v177,$fp,-4
addiu $t2,$fp,-4
# Original instruction: li v178,0
li $t1,0
# Original instruction: li v179,1
li $t0,1
# Original instruction: sub v180,v178,v179
sub $t0,$t1,$t0
# Original instruction: sw v180,0(v177)
sw $t0,0($t2)
label_54_END:
# Original instruction: j label_52_END
j label_52_END
label_51_ELSE:
# Original instruction: addiu v181,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v182,0
li $t0,0
# Original instruction: sw v182,0(v181)
sw $t0,0($t1)
label_52_END:
label_48_END:
label_44_END:
# Original instruction: j label_42_END
j label_42_END
label_41_ELSE:
# Original instruction: addiu v183,$fp,16
addiu $t0,$fp,16
# Original instruction: lb v184,0(v183)
lb $t0,0($t0)
# Original instruction: li v185,98
li $t1,98
# Original instruction: xor v186,v184,v185
xor $t0,$t0,$t1
# Original instruction: sltiu v186,v186,1
sltiu $t0,$t0,1
# Original instruction: beqz v186,label_55_ELSE
beqz $t0,label_55_ELSE
# Original instruction: addiu v187,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v188,0(v187)
lw $t0,0($t0)
# Original instruction: li v189,1
li $t1,1
# Original instruction: xor v190,v188,v189
xor $t0,$t0,$t1
# Original instruction: sltiu v190,v190,1
sltiu $t0,$t0,1
# Original instruction: beqz v190,label_57_ELSE
beqz $t0,label_57_ELSE
# Original instruction: la v191,a21
la $t0,a21
# Original instruction: lb v192,0(v191)
lb $t1,0($t0)
# Original instruction: la v193,empty
la $t0,empty
# Original instruction: lb v194,0(v193)
lb $t0,0($t0)
# Original instruction: xor v195,v192,v194
xor $t0,$t1,$t0
# Original instruction: sltiu v195,v195,1
sltiu $t0,$t0,1
# Original instruction: beqz v195,label_59_ELSE
beqz $t0,label_59_ELSE
# Original instruction: la v196,a21
la $t1,a21
# Original instruction: addiu v197,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v198,0(v197)
lb $t0,0($t0)
# Original instruction: sb v198,0(v196)
sb $t0,0($t1)
# Original instruction: j label_60_END
j label_60_END
label_59_ELSE:
# Original instruction: addiu v199,$fp,-4
addiu $t2,$fp,-4
# Original instruction: li v200,0
li $t1,0
# Original instruction: li v201,1
li $t0,1
# Original instruction: sub v202,v200,v201
sub $t0,$t1,$t0
# Original instruction: sw v202,0(v199)
sw $t0,0($t2)
label_60_END:
# Original instruction: j label_58_END
j label_58_END
label_57_ELSE:
# Original instruction: addiu v203,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v204,0(v203)
lw $t0,0($t0)
# Original instruction: li v205,2
li $t1,2
# Original instruction: xor v206,v204,v205
xor $t0,$t0,$t1
# Original instruction: sltiu v206,v206,1
sltiu $t0,$t0,1
# Original instruction: beqz v206,label_61_ELSE
beqz $t0,label_61_ELSE
# Original instruction: la v207,a22
la $t0,a22
# Original instruction: lb v208,0(v207)
lb $t1,0($t0)
# Original instruction: la v209,empty
la $t0,empty
# Original instruction: lb v210,0(v209)
lb $t0,0($t0)
# Original instruction: xor v211,v208,v210
xor $t0,$t1,$t0
# Original instruction: sltiu v211,v211,1
sltiu $t0,$t0,1
# Original instruction: beqz v211,label_63_ELSE
beqz $t0,label_63_ELSE
# Original instruction: la v212,a22
la $t1,a22
# Original instruction: addiu v213,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v214,0(v213)
lb $t0,0($t0)
# Original instruction: sb v214,0(v212)
sb $t0,0($t1)
# Original instruction: j label_64_END
j label_64_END
label_63_ELSE:
# Original instruction: addiu v215,$fp,-4
addiu $t2,$fp,-4
# Original instruction: li v216,0
li $t0,0
# Original instruction: li v217,1
li $t1,1
# Original instruction: sub v218,v216,v217
sub $t0,$t0,$t1
# Original instruction: sw v218,0(v215)
sw $t0,0($t2)
label_64_END:
# Original instruction: j label_62_END
j label_62_END
label_61_ELSE:
# Original instruction: addiu v219,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v220,0(v219)
lw $t0,0($t0)
# Original instruction: li v221,3
li $t1,3
# Original instruction: xor v222,v220,v221
xor $t0,$t0,$t1
# Original instruction: sltiu v222,v222,1
sltiu $t0,$t0,1
# Original instruction: beqz v222,label_65_ELSE
beqz $t0,label_65_ELSE
# Original instruction: la v223,a23
la $t0,a23
# Original instruction: lb v224,0(v223)
lb $t1,0($t0)
# Original instruction: la v225,empty
la $t0,empty
# Original instruction: lb v226,0(v225)
lb $t0,0($t0)
# Original instruction: xor v227,v224,v226
xor $t0,$t1,$t0
# Original instruction: sltiu v227,v227,1
sltiu $t0,$t0,1
# Original instruction: beqz v227,label_67_ELSE
beqz $t0,label_67_ELSE
# Original instruction: la v228,a23
la $t1,a23
# Original instruction: addiu v229,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v230,0(v229)
lb $t0,0($t0)
# Original instruction: sb v230,0(v228)
sb $t0,0($t1)
# Original instruction: j label_68_END
j label_68_END
label_67_ELSE:
# Original instruction: addiu v231,$fp,-4
addiu $t2,$fp,-4
# Original instruction: li v232,0
li $t0,0
# Original instruction: li v233,1
li $t1,1
# Original instruction: sub v234,v232,v233
sub $t0,$t0,$t1
# Original instruction: sw v234,0(v231)
sw $t0,0($t2)
label_68_END:
# Original instruction: j label_66_END
j label_66_END
label_65_ELSE:
# Original instruction: addiu v235,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v236,0
li $t1,0
# Original instruction: sw v236,0(v235)
sw $t1,0($t0)
label_66_END:
label_62_END:
label_58_END:
# Original instruction: j label_56_END
j label_56_END
label_55_ELSE:
# Original instruction: addiu v237,$fp,16
addiu $t0,$fp,16
# Original instruction: lb v238,0(v237)
lb $t1,0($t0)
# Original instruction: li v239,99
li $t0,99
# Original instruction: xor v240,v238,v239
xor $t0,$t1,$t0
# Original instruction: sltiu v240,v240,1
sltiu $t0,$t0,1
# Original instruction: beqz v240,label_69_ELSE
beqz $t0,label_69_ELSE
# Original instruction: addiu v241,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v242,0(v241)
lw $t1,0($t0)
# Original instruction: li v243,1
li $t0,1
# Original instruction: xor v244,v242,v243
xor $t0,$t1,$t0
# Original instruction: sltiu v244,v244,1
sltiu $t0,$t0,1
# Original instruction: beqz v244,label_71_ELSE
beqz $t0,label_71_ELSE
# Original instruction: la v245,a31
la $t0,a31
# Original instruction: lb v246,0(v245)
lb $t1,0($t0)
# Original instruction: la v247,empty
la $t0,empty
# Original instruction: lb v248,0(v247)
lb $t0,0($t0)
# Original instruction: xor v249,v246,v248
xor $t0,$t1,$t0
# Original instruction: sltiu v249,v249,1
sltiu $t0,$t0,1
# Original instruction: beqz v249,label_73_ELSE
beqz $t0,label_73_ELSE
# Original instruction: la v250,a31
la $t1,a31
# Original instruction: addiu v251,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v252,0(v251)
lb $t0,0($t0)
# Original instruction: sb v252,0(v250)
sb $t0,0($t1)
# Original instruction: j label_74_END
j label_74_END
label_73_ELSE:
# Original instruction: addiu v253,$fp,-4
addiu $t2,$fp,-4
# Original instruction: li v254,0
li $t1,0
# Original instruction: li v255,1
li $t0,1
# Original instruction: sub v256,v254,v255
sub $t0,$t1,$t0
# Original instruction: sw v256,0(v253)
sw $t0,0($t2)
label_74_END:
# Original instruction: j label_72_END
j label_72_END
label_71_ELSE:
# Original instruction: addiu v257,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v258,0(v257)
lw $t0,0($t0)
# Original instruction: li v259,2
li $t1,2
# Original instruction: xor v260,v258,v259
xor $t0,$t0,$t1
# Original instruction: sltiu v260,v260,1
sltiu $t0,$t0,1
# Original instruction: beqz v260,label_75_ELSE
beqz $t0,label_75_ELSE
# Original instruction: la v261,a32
la $t0,a32
# Original instruction: lb v262,0(v261)
lb $t1,0($t0)
# Original instruction: la v263,empty
la $t0,empty
# Original instruction: lb v264,0(v263)
lb $t0,0($t0)
# Original instruction: xor v265,v262,v264
xor $t0,$t1,$t0
# Original instruction: sltiu v265,v265,1
sltiu $t0,$t0,1
# Original instruction: beqz v265,label_77_ELSE
beqz $t0,label_77_ELSE
# Original instruction: la v266,a32
la $t1,a32
# Original instruction: addiu v267,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v268,0(v267)
lb $t0,0($t0)
# Original instruction: sb v268,0(v266)
sb $t0,0($t1)
# Original instruction: j label_78_END
j label_78_END
label_77_ELSE:
# Original instruction: addiu v269,$fp,-4
addiu $t2,$fp,-4
# Original instruction: li v270,0
li $t1,0
# Original instruction: li v271,1
li $t0,1
# Original instruction: sub v272,v270,v271
sub $t0,$t1,$t0
# Original instruction: sw v272,0(v269)
sw $t0,0($t2)
label_78_END:
# Original instruction: j label_76_END
j label_76_END
label_75_ELSE:
# Original instruction: addiu v273,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v274,0(v273)
lw $t1,0($t0)
# Original instruction: li v275,3
li $t0,3
# Original instruction: xor v276,v274,v275
xor $t0,$t1,$t0
# Original instruction: sltiu v276,v276,1
sltiu $t0,$t0,1
# Original instruction: beqz v276,label_79_ELSE
beqz $t0,label_79_ELSE
# Original instruction: la v277,a33
la $t0,a33
# Original instruction: lb v278,0(v277)
lb $t1,0($t0)
# Original instruction: la v279,empty
la $t0,empty
# Original instruction: lb v280,0(v279)
lb $t0,0($t0)
# Original instruction: xor v281,v278,v280
xor $t0,$t1,$t0
# Original instruction: sltiu v281,v281,1
sltiu $t0,$t0,1
# Original instruction: beqz v281,label_81_ELSE
beqz $t0,label_81_ELSE
# Original instruction: la v282,a33
la $t1,a33
# Original instruction: addiu v283,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v284,0(v283)
lb $t0,0($t0)
# Original instruction: sb v284,0(v282)
sb $t0,0($t1)
# Original instruction: j label_82_END
j label_82_END
label_81_ELSE:
# Original instruction: addiu v285,$fp,-4
addiu $t2,$fp,-4
# Original instruction: li v286,0
li $t0,0
# Original instruction: li v287,1
li $t1,1
# Original instruction: sub v288,v286,v287
sub $t0,$t0,$t1
# Original instruction: sw v288,0(v285)
sw $t0,0($t2)
label_82_END:
# Original instruction: j label_80_END
j label_80_END
label_79_ELSE:
# Original instruction: addiu v289,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v290,0
li $t0,0
# Original instruction: sw v290,0(v289)
sw $t0,0($t1)
label_80_END:
label_76_END:
label_72_END:
# Original instruction: j label_70_END
j label_70_END
label_69_ELSE:
# Original instruction: addiu v291,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v292,0
li $t1,0
# Original instruction: sw v292,0(v291)
sw $t1,0($t0)
label_70_END:
label_56_END:
label_42_END:
# Original instruction: addiu v293,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v294,0(v293)
lw $t0,0($t0)
# Original instruction: addi v295,$fp,4
addi $t1,$fp,4
# Original instruction: sw v294,0(v295)
sw $t0,0($t1)
# Original instruction: j set_epilogue
j set_epilogue
set_epilogue:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
printGame:
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
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
# Original instruction: la v296,label_10_str
la $t1,label_10_str
# Original instruction: addiu v297,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v296,0(v297)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v298,label_11_str
la $t1,label_11_str
# Original instruction: addiu v299,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v298,0(v299)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v300,label_12_str
la $t1,label_12_str
# Original instruction: addiu v301,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v300,0(v301)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v302,label_13_str
la $t1,label_13_str
# Original instruction: addiu v303,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v302,0(v303)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v304,a11
la $t0,a11
# Original instruction: lb v305,0(v304)
lb $t1,0($t0)
# Original instruction: addiu v306,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sb v305,0(v306)
sb $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v307,label_14_str
la $t0,label_14_str
# Original instruction: addiu v308,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v307,0(v308)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v309,a12
la $t0,a12
# Original instruction: lb v310,0(v309)
lb $t0,0($t0)
# Original instruction: addiu v311,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sb v310,0(v311)
sb $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v312,label_14_str
la $t1,label_14_str
# Original instruction: addiu v313,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v312,0(v313)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v314,a13
la $t0,a13
# Original instruction: lb v315,0(v314)
lb $t1,0($t0)
# Original instruction: addiu v316,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sb v315,0(v316)
sb $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v317,label_15_str
la $t1,label_15_str
# Original instruction: addiu v318,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v317,0(v318)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v319,label_12_str
la $t1,label_12_str
# Original instruction: addiu v320,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v319,0(v320)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v321,label_16_str
la $t0,label_16_str
# Original instruction: addiu v322,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v321,0(v322)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v323,a21
la $t0,a21
# Original instruction: lb v324,0(v323)
lb $t0,0($t0)
# Original instruction: addiu v325,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sb v324,0(v325)
sb $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v326,label_14_str
la $t1,label_14_str
# Original instruction: addiu v327,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v326,0(v327)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v328,a22
la $t0,a22
# Original instruction: lb v329,0(v328)
lb $t1,0($t0)
# Original instruction: addiu v330,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sb v329,0(v330)
sb $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v331,label_14_str
la $t0,label_14_str
# Original instruction: addiu v332,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v331,0(v332)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v333,a23
la $t0,a23
# Original instruction: lb v334,0(v333)
lb $t1,0($t0)
# Original instruction: addiu v335,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sb v334,0(v335)
sb $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v336,label_15_str
la $t1,label_15_str
# Original instruction: addiu v337,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v336,0(v337)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v338,label_12_str
la $t1,label_12_str
# Original instruction: addiu v339,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v338,0(v339)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v340,label_17_str
la $t0,label_17_str
# Original instruction: addiu v341,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v340,0(v341)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v342,a31
la $t0,a31
# Original instruction: lb v343,0(v342)
lb $t0,0($t0)
# Original instruction: addiu v344,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sb v343,0(v344)
sb $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v345,label_14_str
la $t1,label_14_str
# Original instruction: addiu v346,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v345,0(v346)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v347,a32
la $t0,a32
# Original instruction: lb v348,0(v347)
lb $t1,0($t0)
# Original instruction: addiu v349,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sb v348,0(v349)
sb $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v350,label_14_str
la $t0,label_14_str
# Original instruction: addiu v351,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v350,0(v351)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v352,a33
la $t0,a33
# Original instruction: lb v353,0(v352)
lb $t1,0($t0)
# Original instruction: addiu v354,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sb v353,0(v354)
sb $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v355,label_15_str
la $t1,label_15_str
# Original instruction: addiu v356,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v355,0(v356)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v357,label_12_str
la $t0,label_12_str
# Original instruction: addiu v358,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v357,0(v358)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v359,label_10_str
la $t1,label_10_str
# Original instruction: addiu v360,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v359,0(v360)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
printGame_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
printWinner:
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
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
# Original instruction: la v361,label_18_str
la $t0,label_18_str
# Original instruction: addiu v362,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v361,0(v362)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v363,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v364,0(v363)
lw $t1,0($t0)
# Original instruction: addiu v365,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v364,0(v365)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v366,label_19_str
la $t0,label_19_str
# Original instruction: addiu v367,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v366,0(v367)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
printWinner_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
switchPlayer:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
# Original instruction: addiu v368,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v369,0(v368)
lw $t0,0($t0)
# Original instruction: li v370,1
li $t1,1
# Original instruction: xor v371,v369,v370
xor $t0,$t0,$t1
# Original instruction: sltiu v371,v371,1
sltiu $t0,$t0,1
# Original instruction: beqz v371,label_92_ELSE
beqz $t0,label_92_ELSE
# Original instruction: li v372,2
li $t1,2
# Original instruction: addi v373,$fp,4
addi $t0,$fp,4
# Original instruction: sw v372,0(v373)
sw $t1,0($t0)
# Original instruction: j switchPlayer_epilogue
j switchPlayer_epilogue
# Original instruction: j label_93_END
j label_93_END
label_92_ELSE:
# Original instruction: li v374,1
li $t1,1
# Original instruction: addi v375,$fp,4
addi $t0,$fp,4
# Original instruction: sw v374,0(v375)
sw $t1,0($t0)
# Original instruction: j switchPlayer_epilogue
j switchPlayer_epilogue
label_93_END:
switchPlayer_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
get_mark:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
# Original instruction: addiu v376,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v377,0(v376)
lw $t0,0($t0)
# Original instruction: li v378,1
li $t1,1
# Original instruction: xor v379,v377,v378
xor $t0,$t0,$t1
# Original instruction: sltiu v379,v379,1
sltiu $t0,$t0,1
# Original instruction: beqz v379,label_96_ELSE
beqz $t0,label_96_ELSE
# Original instruction: li v380,88
li $t1,88
# Original instruction: addi v381,$fp,4
addi $t0,$fp,4
# Original instruction: sb v380,0(v381)
sb $t1,0($t0)
# Original instruction: j get_mark_epilogue
j get_mark_epilogue
# Original instruction: j label_97_END
j label_97_END
label_96_ELSE:
# Original instruction: li v382,79
li $t1,79
# Original instruction: addi v383,$fp,4
addi $t0,$fp,4
# Original instruction: sb v382,0(v383)
sb $t1,0($t0)
# Original instruction: j get_mark_epilogue
j get_mark_epilogue
label_97_END:
get_mark_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
selectmove:
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
# Original instruction: addiu $sp,$sp,-20
addiu $sp,$sp,-20
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
# Original instruction: addiu v384,$fp,-16
addiu $t0,$fp,-16
# Original instruction: li v385,1
li $t1,1
# Original instruction: sw v385,0(v384)
sw $t1,0($t0)
# Original instruction: addiu v386,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v387,0(v386)
lw $t0,0($t0)
# Original instruction: beqz v387,label_100_next
beqz $t0,label_100_next
label_102_body:
# Original instruction: la v388,label_18_str
la $t0,label_18_str
# Original instruction: addiu v389,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v388,0(v389)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v390,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v391,0(v390)
lw $t0,0($t0)
# Original instruction: addiu v392,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v391,0(v392)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v393,label_20_str
la $t0,label_20_str
# Original instruction: addiu v394,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v393,0(v394)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v395,$fp,-8
addiu $t1,$fp,-8
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_c
jal read_c
# Original instruction: addi v396,$sp,0
addi $t0,$sp,0
# Original instruction: lb v397,0(v396)
lb $t0,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sb v397,0(v395)
sb $t0,0($t1)
# Original instruction: addiu v398,$fp,-12
addiu $t1,$fp,-12
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: addi v399,$sp,0
addi $t0,$sp,0
# Original instruction: lw v400,0(v399)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sw v400,0(v398)
sw $t0,0($t1)
# Original instruction: addiu v401,$fp,-24
addiu $t2,$fp,-24
# Original instruction: addiu v402,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v403,0(v402)
lw $t1,0($t0)
# Original instruction: addiu v404,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v403,0(v404)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal get_mark
jal get_mark
# Original instruction: addi v405,$sp,0
addi $t0,$sp,0
# Original instruction: lb v406,0(v405)
lb $t0,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sb v406,0(v401)
sb $t0,0($t2)
# Original instruction: addiu v407,$fp,-20
addiu $t2,$fp,-20
# Original instruction: addiu v408,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lb v409,0(v408)
lb $t0,0($t0)
# Original instruction: addiu v410,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sb v409,0(v410)
sb $t0,0($t1)
# Original instruction: addiu v411,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v412,0(v411)
lw $t1,0($t0)
# Original instruction: addiu v413,$sp,-8
addiu $t0,$sp,-8
# Original instruction: sw v412,0(v413)
sw $t1,0($t0)
# Original instruction: addiu v414,$fp,-24
addiu $t0,$fp,-24
# Original instruction: lb v415,0(v414)
lb $t1,0($t0)
# Original instruction: addiu v416,$sp,-12
addiu $t0,$sp,-12
# Original instruction: sb v415,0(v416)
sb $t1,0($t0)
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal set
jal set
# Original instruction: addi v417,$sp,0
addi $t0,$sp,0
# Original instruction: lw v418,0(v417)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,16
addiu $sp,$sp,16
# Original instruction: sw v418,0(v407)
sw $t0,0($t2)
# Original instruction: addiu v419,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lw v420,0(v419)
lw $t0,0($t0)
# Original instruction: li v421,0
li $t1,0
# Original instruction: xor v422,v420,v421
xor $t0,$t0,$t1
# Original instruction: sltiu v422,v422,1
sltiu $t0,$t0,1
# Original instruction: beqz v422,label_105_ELSE
beqz $t0,label_105_ELSE
# Original instruction: la v423,label_21_str
la $t1,label_21_str
# Original instruction: addiu v424,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v423,0(v424)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: j label_106_END
j label_106_END
label_105_ELSE:
# Original instruction: addiu v425,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lw v426,0(v425)
lw $t2,0($t0)
# Original instruction: li v427,0
li $t1,0
# Original instruction: li v428,1
li $t0,1
# Original instruction: sub v429,v427,v428
sub $t0,$t1,$t0
# Original instruction: xor v430,v426,v429
xor $t0,$t2,$t0
# Original instruction: sltiu v430,v430,1
sltiu $t0,$t0,1
# Original instruction: beqz v430,label_107_ELSE
beqz $t0,label_107_ELSE
# Original instruction: la v431,label_22_str
la $t1,label_22_str
# Original instruction: addiu v432,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v431,0(v432)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: j label_108_END
j label_108_END
label_107_ELSE:
# Original instruction: addiu v433,$fp,-16
addiu $t1,$fp,-16
# Original instruction: li v434,0
li $t0,0
# Original instruction: sw v434,0(v433)
sw $t0,0($t1)
label_108_END:
label_106_END:
label_101_posttest:
# Original instruction: addiu v435,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v436,0(v435)
lw $t0,0($t0)
# Original instruction: bnez v436,label_102_body
bnez $t0,label_102_body
label_100_next:
selectmove_epilogue:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
won:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
# Original instruction: addiu v437,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v438,0
li $t1,0
# Original instruction: sw v438,0(v437)
sw $t1,0($t0)
# Original instruction: la v439,a11
la $t0,a11
# Original instruction: lb v440,0(v439)
lb $t1,0($t0)
# Original instruction: addiu v441,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v442,0(v441)
lb $t0,0($t0)
# Original instruction: xor v443,v440,v442
xor $t0,$t1,$t0
# Original instruction: sltiu v443,v443,1
sltiu $t0,$t0,1
# Original instruction: beqz v443,label_111_END
beqz $t0,label_111_END
# Original instruction: la v444,a21
la $t0,a21
# Original instruction: lb v445,0(v444)
lb $t1,0($t0)
# Original instruction: addiu v446,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v447,0(v446)
lb $t0,0($t0)
# Original instruction: xor v448,v445,v447
xor $t0,$t1,$t0
# Original instruction: sltiu v448,v448,1
sltiu $t0,$t0,1
# Original instruction: beqz v448,label_112_ELSE
beqz $t0,label_112_ELSE
# Original instruction: la v449,a31
la $t0,a31
# Original instruction: lb v450,0(v449)
lb $t1,0($t0)
# Original instruction: addiu v451,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v452,0(v451)
lb $t0,0($t0)
# Original instruction: xor v453,v450,v452
xor $t0,$t1,$t0
# Original instruction: sltiu v453,v453,1
sltiu $t0,$t0,1
# Original instruction: beqz v453,label_114_END
beqz $t0,label_114_END
# Original instruction: addiu v454,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v455,1
li $t1,1
# Original instruction: sw v455,0(v454)
sw $t1,0($t0)
label_114_END:
# Original instruction: j label_113_END
j label_113_END
label_112_ELSE:
# Original instruction: la v456,a22
la $t0,a22
# Original instruction: lb v457,0(v456)
lb $t1,0($t0)
# Original instruction: addiu v458,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v459,0(v458)
lb $t0,0($t0)
# Original instruction: xor v460,v457,v459
xor $t0,$t1,$t0
# Original instruction: sltiu v460,v460,1
sltiu $t0,$t0,1
# Original instruction: beqz v460,label_115_ELSE
beqz $t0,label_115_ELSE
# Original instruction: la v461,a33
la $t0,a33
# Original instruction: lb v462,0(v461)
lb $t1,0($t0)
# Original instruction: addiu v463,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v464,0(v463)
lb $t0,0($t0)
# Original instruction: xor v465,v462,v464
xor $t0,$t1,$t0
# Original instruction: sltiu v465,v465,1
sltiu $t0,$t0,1
# Original instruction: beqz v465,label_117_END
beqz $t0,label_117_END
# Original instruction: addiu v466,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v467,1
li $t1,1
# Original instruction: sw v467,0(v466)
sw $t1,0($t0)
label_117_END:
# Original instruction: j label_116_END
j label_116_END
label_115_ELSE:
# Original instruction: la v468,a12
la $t0,a12
# Original instruction: lb v469,0(v468)
lb $t1,0($t0)
# Original instruction: addiu v470,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v471,0(v470)
lb $t0,0($t0)
# Original instruction: xor v472,v469,v471
xor $t0,$t1,$t0
# Original instruction: sltiu v472,v472,1
sltiu $t0,$t0,1
# Original instruction: beqz v472,label_118_END
beqz $t0,label_118_END
# Original instruction: la v473,a13
la $t0,a13
# Original instruction: lb v474,0(v473)
lb $t1,0($t0)
# Original instruction: addiu v475,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v476,0(v475)
lb $t0,0($t0)
# Original instruction: xor v477,v474,v476
xor $t0,$t1,$t0
# Original instruction: sltiu v477,v477,1
sltiu $t0,$t0,1
# Original instruction: beqz v477,label_119_END
beqz $t0,label_119_END
# Original instruction: addiu v478,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v479,1
li $t0,1
# Original instruction: sw v479,0(v478)
sw $t0,0($t1)
label_119_END:
label_118_END:
label_116_END:
label_113_END:
label_111_END:
# Original instruction: la v480,a12
la $t0,a12
# Original instruction: lb v481,0(v480)
lb $t1,0($t0)
# Original instruction: addiu v482,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v483,0(v482)
lb $t0,0($t0)
# Original instruction: xor v484,v481,v483
xor $t0,$t1,$t0
# Original instruction: sltiu v484,v484,1
sltiu $t0,$t0,1
# Original instruction: beqz v484,label_120_END
beqz $t0,label_120_END
# Original instruction: la v485,a22
la $t0,a22
# Original instruction: lb v486,0(v485)
lb $t1,0($t0)
# Original instruction: addiu v487,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v488,0(v487)
lb $t0,0($t0)
# Original instruction: xor v489,v486,v488
xor $t0,$t1,$t0
# Original instruction: sltiu v489,v489,1
sltiu $t0,$t0,1
# Original instruction: beqz v489,label_121_END
beqz $t0,label_121_END
# Original instruction: la v490,a32
la $t0,a32
# Original instruction: lb v491,0(v490)
lb $t1,0($t0)
# Original instruction: addiu v492,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v493,0(v492)
lb $t0,0($t0)
# Original instruction: xor v494,v491,v493
xor $t0,$t1,$t0
# Original instruction: sltiu v494,v494,1
sltiu $t0,$t0,1
# Original instruction: beqz v494,label_122_END
beqz $t0,label_122_END
# Original instruction: addiu v495,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v496,1
li $t1,1
# Original instruction: sw v496,0(v495)
sw $t1,0($t0)
label_122_END:
label_121_END:
label_120_END:
# Original instruction: la v497,a13
la $t0,a13
# Original instruction: lb v498,0(v497)
lb $t1,0($t0)
# Original instruction: addiu v499,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v500,0(v499)
lb $t0,0($t0)
# Original instruction: xor v501,v498,v500
xor $t0,$t1,$t0
# Original instruction: sltiu v501,v501,1
sltiu $t0,$t0,1
# Original instruction: beqz v501,label_123_END
beqz $t0,label_123_END
# Original instruction: la v502,a23
la $t0,a23
# Original instruction: lb v503,0(v502)
lb $t1,0($t0)
# Original instruction: addiu v504,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v505,0(v504)
lb $t0,0($t0)
# Original instruction: xor v506,v503,v505
xor $t0,$t1,$t0
# Original instruction: sltiu v506,v506,1
sltiu $t0,$t0,1
# Original instruction: beqz v506,label_124_ELSE
beqz $t0,label_124_ELSE
# Original instruction: la v507,a33
la $t0,a33
# Original instruction: lb v508,0(v507)
lb $t1,0($t0)
# Original instruction: addiu v509,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v510,0(v509)
lb $t0,0($t0)
# Original instruction: xor v511,v508,v510
xor $t0,$t1,$t0
# Original instruction: sltiu v511,v511,1
sltiu $t0,$t0,1
# Original instruction: beqz v511,label_126_END
beqz $t0,label_126_END
# Original instruction: addiu v512,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v513,1
li $t0,1
# Original instruction: sw v513,0(v512)
sw $t0,0($t1)
label_126_END:
# Original instruction: j label_125_END
j label_125_END
label_124_ELSE:
# Original instruction: la v514,a22
la $t0,a22
# Original instruction: lb v515,0(v514)
lb $t1,0($t0)
# Original instruction: addiu v516,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v517,0(v516)
lb $t0,0($t0)
# Original instruction: xor v518,v515,v517
xor $t0,$t1,$t0
# Original instruction: sltiu v518,v518,1
sltiu $t0,$t0,1
# Original instruction: beqz v518,label_127_END
beqz $t0,label_127_END
# Original instruction: la v519,a31
la $t0,a31
# Original instruction: lb v520,0(v519)
lb $t1,0($t0)
# Original instruction: addiu v521,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v522,0(v521)
lb $t0,0($t0)
# Original instruction: xor v523,v520,v522
xor $t0,$t1,$t0
# Original instruction: sltiu v523,v523,1
sltiu $t0,$t0,1
# Original instruction: beqz v523,label_128_END
beqz $t0,label_128_END
# Original instruction: addiu v524,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v525,1
li $t0,1
# Original instruction: sw v525,0(v524)
sw $t0,0($t1)
label_128_END:
label_127_END:
label_125_END:
label_123_END:
# Original instruction: la v526,a21
la $t0,a21
# Original instruction: lb v527,0(v526)
lb $t1,0($t0)
# Original instruction: addiu v528,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v529,0(v528)
lb $t0,0($t0)
# Original instruction: xor v530,v527,v529
xor $t0,$t1,$t0
# Original instruction: sltiu v530,v530,1
sltiu $t0,$t0,1
# Original instruction: beqz v530,label_129_END
beqz $t0,label_129_END
# Original instruction: la v531,a22
la $t0,a22
# Original instruction: lb v532,0(v531)
lb $t1,0($t0)
# Original instruction: addiu v533,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v534,0(v533)
lb $t0,0($t0)
# Original instruction: xor v535,v532,v534
xor $t0,$t1,$t0
# Original instruction: sltiu v535,v535,1
sltiu $t0,$t0,1
# Original instruction: beqz v535,label_130_END
beqz $t0,label_130_END
# Original instruction: la v536,a23
la $t0,a23
# Original instruction: lb v537,0(v536)
lb $t1,0($t0)
# Original instruction: addiu v538,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v539,0(v538)
lb $t0,0($t0)
# Original instruction: xor v540,v537,v539
xor $t0,$t1,$t0
# Original instruction: sltiu v540,v540,1
sltiu $t0,$t0,1
# Original instruction: beqz v540,label_131_END
beqz $t0,label_131_END
# Original instruction: addiu v541,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v542,1
li $t1,1
# Original instruction: sw v542,0(v541)
sw $t1,0($t0)
label_131_END:
label_130_END:
label_129_END:
# Original instruction: la v543,a31
la $t0,a31
# Original instruction: lb v544,0(v543)
lb $t1,0($t0)
# Original instruction: addiu v545,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v546,0(v545)
lb $t0,0($t0)
# Original instruction: xor v547,v544,v546
xor $t0,$t1,$t0
# Original instruction: sltiu v547,v547,1
sltiu $t0,$t0,1
# Original instruction: beqz v547,label_132_END
beqz $t0,label_132_END
# Original instruction: la v548,a32
la $t0,a32
# Original instruction: lb v549,0(v548)
lb $t1,0($t0)
# Original instruction: addiu v550,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v551,0(v550)
lb $t0,0($t0)
# Original instruction: xor v552,v549,v551
xor $t0,$t1,$t0
# Original instruction: sltiu v552,v552,1
sltiu $t0,$t0,1
# Original instruction: beqz v552,label_133_END
beqz $t0,label_133_END
# Original instruction: la v553,a33
la $t0,a33
# Original instruction: lb v554,0(v553)
lb $t1,0($t0)
# Original instruction: addiu v555,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v556,0(v555)
lb $t0,0($t0)
# Original instruction: xor v557,v554,v556
xor $t0,$t1,$t0
# Original instruction: sltiu v557,v557,1
sltiu $t0,$t0,1
# Original instruction: beqz v557,label_134_END
beqz $t0,label_134_END
# Original instruction: addiu v558,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v559,1
li $t0,1
# Original instruction: sw v559,0(v558)
sw $t0,0($t1)
label_134_END:
label_133_END:
label_132_END:
# Original instruction: addiu v560,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v561,0(v560)
lw $t1,0($t0)
# Original instruction: addi v562,$fp,4
addi $t0,$fp,4
# Original instruction: sw v561,0(v562)
sw $t1,0($t0)
# Original instruction: j won_epilogue
j won_epilogue
won_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
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
# Original instruction: la v563,empty
la $t0,empty
# Original instruction: li v564,32
li $t1,32
# Original instruction: sb v564,0(v563)
sb $t1,0($t0)
# Original instruction: addiu v565,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v566,1
li $t1,1
# Original instruction: sw v566,0(v565)
sw $t1,0($t0)
# Original instruction: jal reset
jal reset
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: jal printGame
jal printGame
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: addiu v567,$fp,-8
addiu $t1,$fp,-8
# Original instruction: li v568,1
li $t0,1
# Original instruction: sw v568,0(v567)
sw $t0,0($t1)
# Original instruction: addiu v569,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v570,0(v569)
lw $t0,0($t0)
# Original instruction: beqz v570,label_137_next
beqz $t0,label_137_next
label_139_body:
# Original instruction: addiu v571,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v572,0(v571)
lw $t1,0($t0)
# Original instruction: addiu v573,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v572,0(v573)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal selectmove
jal selectmove
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v574,$fp,-12
addiu $t2,$fp,-12
# Original instruction: addiu v575,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v576,0(v575)
lw $t0,0($t0)
# Original instruction: addiu v577,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v576,0(v577)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal get_mark
jal get_mark
# Original instruction: addi v578,$sp,0
addi $t0,$sp,0
# Original instruction: lb v579,0(v578)
lb $t0,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sb v579,0(v574)
sb $t0,0($t2)
# Original instruction: jal printGame
jal printGame
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: addiu v580,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lb v581,0(v580)
lb $t0,0($t0)
# Original instruction: addiu v582,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sb v581,0(v582)
sb $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal won
jal won
# Original instruction: addi v583,$sp,0
addi $t0,$sp,0
# Original instruction: lw v584,0(v583)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: beqz v584,label_140_ELSE
beqz $t0,label_140_ELSE
# Original instruction: addiu v585,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v586,0(v585)
lw $t0,0($t0)
# Original instruction: addiu v587,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v586,0(v587)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal printWinner
jal printWinner
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v588,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v589,0
li $t0,0
# Original instruction: sw v589,0(v588)
sw $t0,0($t1)
# Original instruction: j label_141_END
j label_141_END
label_140_ELSE:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal full
jal full
# Original instruction: addi v590,$sp,0
addi $t0,$sp,0
# Original instruction: lw v591,0(v590)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: li v592,1
li $t1,1
# Original instruction: xor v593,v591,v592
xor $t0,$t0,$t1
# Original instruction: sltiu v593,v593,1
sltiu $t0,$t0,1
# Original instruction: beqz v593,label_142_ELSE
beqz $t0,label_142_ELSE
# Original instruction: la v594,label_23_str
la $t1,label_23_str
# Original instruction: addiu v595,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v594,0(v595)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v596,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v597,0
li $t1,0
# Original instruction: sw v597,0(v596)
sw $t1,0($t0)
# Original instruction: j label_143_END
j label_143_END
label_142_ELSE:
# Original instruction: addiu v598,$fp,-8
addiu $t2,$fp,-8
# Original instruction: addiu v599,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v600,0(v599)
lw $t1,0($t0)
# Original instruction: addiu v601,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v600,0(v601)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal switchPlayer
jal switchPlayer
# Original instruction: addi v602,$sp,0
addi $t0,$sp,0
# Original instruction: lw v603,0(v602)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sw v603,0(v598)
sw $t0,0($t2)
label_143_END:
label_141_END:
# Original instruction: addiu v604,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v605,0(v604)
lw $t1,0($t0)
# Original instruction: li v606,0
li $t0,0
# Original instruction: xor v607,v605,v606
xor $t0,$t1,$t0
# Original instruction: sltiu v607,v607,1
sltiu $t0,$t0,1
# Original instruction: beqz v607,label_144_END
beqz $t0,label_144_END
# Original instruction: la v608,label_24_str
la $t0,label_24_str
# Original instruction: addiu v609,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v608,0(v609)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v610,$fp,-16
addiu $t1,$fp,-16
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_c
jal read_c
# Original instruction: addi v611,$sp,0
addi $t0,$sp,0
# Original instruction: lb v612,0(v611)
lb $t0,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sb v612,0(v610)
sb $t0,0($t1)
# Original instruction: addiu v613,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lb v614,0(v613)
lb $t1,0($t0)
# Original instruction: li v615,121
li $t0,121
# Original instruction: xor v616,v614,v615
xor $t0,$t1,$t0
# Original instruction: sltiu v616,v616,1
sltiu $t0,$t0,1
# Original instruction: beqz v616,label_145_ELSE
beqz $t0,label_145_ELSE
# Original instruction: addiu v617,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v618,1
li $t1,1
# Original instruction: sw v618,0(v617)
sw $t1,0($t0)
# Original instruction: jal reset
jal reset
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: j label_146_END
j label_146_END
label_145_ELSE:
# Original instruction: addiu v619,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lb v620,0(v619)
lb $t1,0($t0)
# Original instruction: li v621,89
li $t0,89
# Original instruction: xor v622,v620,v621
xor $t0,$t1,$t0
# Original instruction: sltiu v622,v622,1
sltiu $t0,$t0,1
# Original instruction: beqz v622,label_147_END
beqz $t0,label_147_END
# Original instruction: addiu v623,$fp,-4
addiu $t0,$fp,-4
# Original instruction: li v624,1
li $t1,1
# Original instruction: sw v624,0(v623)
sw $t1,0($t0)
# Original instruction: jal reset
jal reset
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
label_147_END:
label_146_END:
label_144_END:
label_138_posttest:
# Original instruction: addiu v625,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v626,0(v625)
lw $t0,0($t0)
# Original instruction: bnez v626,label_139_body
bnez $t0,label_139_body
label_137_next:
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

