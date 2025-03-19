.data
null:
.space 4
.align 2
label_1_str:
.asciiz " "
.align 2
label_2_str:
.asciiz "\n"
.align 2
label_3_str:
.asciiz "Original List: "
.align 2
label_4_str:
.asciiz "Sorted List: "
.align 2
# Allocated labels for virtual registers

.text
create_node:
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
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v0,$fp,-8
addiu $t2,$fp,-8
# Original instruction: li v1,8
li $t0,8
# Original instruction: addiu v2,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v1,0(v2)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
# Original instruction: addi v3,$sp,0
addi $t0,$sp,0
# Original instruction: lw v4,0(v3)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sw v4,0(v0)
sw $t0,0($t2)
# Original instruction: addiu v6,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v7,0(v6)
lw $t0,0($t0)
# Original instruction: addi v5,v7,0
addi $t1,$t0,0
# Original instruction: addiu v8,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v9,0(v8)
lw $t0,0($t0)
# Original instruction: sw v9,0(v5)
sw $t0,0($t1)
# Original instruction: addiu v11,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v12,0(v11)
lw $t0,0($t0)
# Original instruction: addi v10,v12,4
addi $t1,$t0,4
# Original instruction: la v13,null
la $t0,null
# Original instruction: lw v14,0(v13)
lw $t0,0($t0)
# Original instruction: sw v14,0(v10)
sw $t0,0($t1)
# Original instruction: addiu v15,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v16,0(v15)
lw $t1,0($t0)
# Original instruction: addi v17,$fp,4
addi $t0,$fp,4
# Original instruction: sw v16,0(v17)
sw $t1,0($t0)
# Original instruction: j create_node_epilogue
j create_node_epilogue
create_node_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
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
insert_end:
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
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v18,$fp,-8
addiu $t2,$fp,-8
# Original instruction: addiu v19,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v20,0(v19)
lw $t0,0($t0)
# Original instruction: addiu v21,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v20,0(v21)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal create_node
jal create_node
# Original instruction: addi v22,$sp,0
addi $t0,$sp,0
# Original instruction: lw v23,0(v22)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sw v23,0(v18)
sw $t0,0($t2)
# Original instruction: addiu v24,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v25,0(v24)
lw $t0,0($t0)
# Original instruction: lw v26,0(v25)
lw $t1,0($t0)
# Original instruction: la v27,null
la $t0,null
# Original instruction: lw v28,0(v27)
lw $t0,0($t0)
# Original instruction: xor v29,v26,v28
xor $t0,$t1,$t0
# Original instruction: sltiu v29,v29,1
sltiu $t0,$t0,1
# Original instruction: beqz v29,label_9_ELSE
beqz $t0,label_9_ELSE
# Original instruction: addiu v30,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v31,0(v30)
lw $t1,0($t0)
# Original instruction: addiu v32,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v33,0(v32)
lw $t0,0($t0)
# Original instruction: sw v33,0(v31)
sw $t0,0($t1)
# Original instruction: j label_10_END
j label_10_END
label_9_ELSE:
# Original instruction: addiu v34,$fp,-12
addiu $t1,$fp,-12
# Original instruction: addiu v35,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v36,0(v35)
lw $t0,0($t0)
# Original instruction: lw v37,0(v36)
lw $t0,0($t0)
# Original instruction: sw v37,0(v34)
sw $t0,0($t1)
# Original instruction: addiu v39,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v40,0(v39)
lw $t0,0($t0)
# Original instruction: addi v38,v40,4
addi $t0,$t0,4
# Original instruction: lw v41,0(v38)
lw $t1,0($t0)
# Original instruction: la v42,null
la $t0,null
# Original instruction: lw v43,0(v42)
lw $t0,0($t0)
# Original instruction: xor v44,v41,v43
xor $t0,$t1,$t0
# Original instruction: sltu v44,$zero,v44
sltu $t0,$zero,$t0
# Original instruction: beqz v44,label_11_next
beqz $t0,label_11_next
label_13_body:
# Original instruction: addiu v45,$fp,-12
addiu $t1,$fp,-12
# Original instruction: addiu v47,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v48,0(v47)
lw $t0,0($t0)
# Original instruction: addi v46,v48,4
addi $t0,$t0,4
# Original instruction: lw v49,0(v46)
lw $t0,0($t0)
# Original instruction: sw v49,0(v45)
sw $t0,0($t1)
label_12_posttest:
# Original instruction: addiu v51,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v52,0(v51)
lw $t0,0($t0)
# Original instruction: addi v50,v52,4
addi $t0,$t0,4
# Original instruction: lw v53,0(v50)
lw $t1,0($t0)
# Original instruction: la v54,null
la $t0,null
# Original instruction: lw v55,0(v54)
lw $t0,0($t0)
# Original instruction: xor v56,v53,v55
xor $t0,$t1,$t0
# Original instruction: sltu v56,$zero,v56
sltu $t0,$zero,$t0
# Original instruction: bnez v56,label_13_body
bnez $t0,label_13_body
label_11_next:
# Original instruction: addiu v58,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v59,0(v58)
lw $t0,0($t0)
# Original instruction: addi v57,v59,4
addi $t1,$t0,4
# Original instruction: addiu v60,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v61,0(v60)
lw $t0,0($t0)
# Original instruction: sw v61,0(v57)
sw $t0,0($t1)
label_10_END:
insert_end_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
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
print_list:
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
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v62,$fp,-8
addiu $t1,$fp,-8
# Original instruction: addiu v63,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v64,0(v63)
lw $t0,0($t0)
# Original instruction: sw v64,0(v62)
sw $t0,0($t1)
# Original instruction: addiu v65,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v66,0(v65)
lw $t1,0($t0)
# Original instruction: la v67,null
la $t0,null
# Original instruction: lw v68,0(v67)
lw $t0,0($t0)
# Original instruction: xor v69,v66,v68
xor $t0,$t1,$t0
# Original instruction: sltu v69,$zero,v69
sltu $t0,$zero,$t0
# Original instruction: beqz v69,label_16_next
beqz $t0,label_16_next
label_18_body:
# Original instruction: addiu v71,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v72,0(v71)
lw $t0,0($t0)
# Original instruction: addi v70,v72,0
addi $t0,$t0,0
# Original instruction: lw v73,0(v70)
lw $t1,0($t0)
# Original instruction: addiu v74,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v73,0(v74)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v75,label_1_str
la $t1,label_1_str
# Original instruction: addiu v76,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v75,0(v76)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v77,$fp,-8
addiu $t1,$fp,-8
# Original instruction: addiu v79,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v80,0(v79)
lw $t0,0($t0)
# Original instruction: addi v78,v80,4
addi $t0,$t0,4
# Original instruction: lw v81,0(v78)
lw $t0,0($t0)
# Original instruction: sw v81,0(v77)
sw $t0,0($t1)
label_17_posttest:
# Original instruction: addiu v82,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v83,0(v82)
lw $t1,0($t0)
# Original instruction: la v84,null
la $t0,null
# Original instruction: lw v85,0(v84)
lw $t0,0($t0)
# Original instruction: xor v86,v83,v85
xor $t0,$t1,$t0
# Original instruction: sltu v86,$zero,v86
sltu $t0,$zero,$t0
# Original instruction: bnez v86,label_18_body
bnez $t0,label_18_body
label_16_next:
# Original instruction: la v87,label_2_str
la $t1,label_2_str
# Original instruction: addiu v88,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v87,0(v88)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
print_list_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
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
sort_list:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v90,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v91,0(v90)
lw $t0,0($t0)
# Original instruction: lw v92,0(v91)
lw $t1,0($t0)
# Original instruction: la v93,null
la $t0,null
# Original instruction: lw v94,0(v93)
lw $t0,0($t0)
# Original instruction: xor v95,v92,v94
xor $t0,$t1,$t0
# Original instruction: sltiu v95,v95,1
sltiu $t0,$t0,1
# Original instruction: bne v95,$zero,label_24_
bne $t0,$zero,label_24_
# Original instruction: addiu v97,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v98,0(v97)
lw $t0,0($t0)
# Original instruction: lw v99,0(v98)
lw $t0,0($t0)
# Original instruction: addi v96,v99,4
addi $t0,$t0,4
# Original instruction: lw v100,0(v96)
lw $t1,0($t0)
# Original instruction: la v101,null
la $t0,null
# Original instruction: lw v102,0(v101)
lw $t0,0($t0)
# Original instruction: xor v103,v100,v102
xor $t0,$t1,$t0
# Original instruction: sltiu v103,v103,1
sltiu $t0,$t0,1
# Original instruction: bne v103,$zero,label_24_
bne $t0,$zero,label_24_
# Original instruction: li v89,0
li $t0,0
# Original instruction: j label_25_
j label_25_
label_24_:
# Original instruction: li v89,1
li $t0,1
label_25_:
# Original instruction: beqz v89,label_23_END
beqz $t0,label_23_END
# Original instruction: j sort_list_epilogue
j sort_list_epilogue
label_23_END:
# Original instruction: addiu v104,$fp,-12
addiu $t1,$fp,-12
# Original instruction: la v105,null
la $t0,null
# Original instruction: lw v106,0(v105)
lw $t0,0($t0)
# Original instruction: sw v106,0(v104)
sw $t0,0($t1)
# Original instruction: addiu v107,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v108,1
li $t0,1
# Original instruction: sw v108,0(v107)
sw $t0,0($t1)
# Original instruction: addiu v109,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v110,0(v109)
lw $t0,0($t0)
# Original instruction: beqz v110,label_27_next
beqz $t0,label_27_next
label_29_body:
# Original instruction: addiu v111,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v112,0
li $t0,0
# Original instruction: sw v112,0(v111)
sw $t0,0($t1)
# Original instruction: addiu v113,$fp,-8
addiu $t1,$fp,-8
# Original instruction: addiu v114,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v115,0(v114)
lw $t0,0($t0)
# Original instruction: lw v116,0(v115)
lw $t0,0($t0)
# Original instruction: sw v116,0(v113)
sw $t0,0($t1)
# Original instruction: addiu v118,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v119,0(v118)
lw $t0,0($t0)
# Original instruction: addi v117,v119,4
addi $t0,$t0,4
# Original instruction: lw v120,0(v117)
lw $t1,0($t0)
# Original instruction: addiu v121,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v122,0(v121)
lw $t0,0($t0)
# Original instruction: xor v123,v120,v122
xor $t0,$t1,$t0
# Original instruction: sltu v123,$zero,v123
sltu $t0,$zero,$t0
# Original instruction: beqz v123,label_30_next
beqz $t0,label_30_next
label_32_body:
# Original instruction: addiu v125,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v126,0(v125)
lw $t0,0($t0)
# Original instruction: addi v124,v126,0
addi $t0,$t0,0
# Original instruction: lw v127,0(v124)
lw $t1,0($t0)
# Original instruction: addiu v130,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v131,0(v130)
lw $t0,0($t0)
# Original instruction: addi v129,v131,4
addi $t0,$t0,4
# Original instruction: lw v132,0(v129)
lw $t0,0($t0)
# Original instruction: addi v128,v132,0
addi $t0,$t0,0
# Original instruction: lw v133,0(v128)
lw $t0,0($t0)
# Original instruction: slt v134,v133,v127
slt $t0,$t0,$t1
# Original instruction: beqz v134,label_33_END
beqz $t0,label_33_END
# Original instruction: addiu v135,$fp,-16
addiu $t1,$fp,-16
# Original instruction: addiu v137,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v138,0(v137)
lw $t0,0($t0)
# Original instruction: addi v136,v138,0
addi $t0,$t0,0
# Original instruction: lw v139,0(v136)
lw $t0,0($t0)
# Original instruction: sw v139,0(v135)
sw $t0,0($t1)
# Original instruction: addiu v141,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v142,0(v141)
lw $t0,0($t0)
# Original instruction: addi v140,v142,0
addi $t1,$t0,0
# Original instruction: addiu v145,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v146,0(v145)
lw $t0,0($t0)
# Original instruction: addi v144,v146,4
addi $t0,$t0,4
# Original instruction: lw v147,0(v144)
lw $t0,0($t0)
# Original instruction: addi v143,v147,0
addi $t0,$t0,0
# Original instruction: lw v148,0(v143)
lw $t0,0($t0)
# Original instruction: sw v148,0(v140)
sw $t0,0($t1)
# Original instruction: addiu v151,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v152,0(v151)
lw $t0,0($t0)
# Original instruction: addi v150,v152,4
addi $t0,$t0,4
# Original instruction: lw v153,0(v150)
lw $t0,0($t0)
# Original instruction: addi v149,v153,0
addi $t1,$t0,0
# Original instruction: addiu v154,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v155,0(v154)
lw $t0,0($t0)
# Original instruction: sw v155,0(v149)
sw $t0,0($t1)
# Original instruction: addiu v156,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v157,1
li $t0,1
# Original instruction: sw v157,0(v156)
sw $t0,0($t1)
label_33_END:
# Original instruction: addiu v158,$fp,-8
addiu $t1,$fp,-8
# Original instruction: addiu v160,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v161,0(v160)
lw $t0,0($t0)
# Original instruction: addi v159,v161,4
addi $t0,$t0,4
# Original instruction: lw v162,0(v159)
lw $t0,0($t0)
# Original instruction: sw v162,0(v158)
sw $t0,0($t1)
label_31_posttest:
# Original instruction: addiu v164,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v165,0(v164)
lw $t0,0($t0)
# Original instruction: addi v163,v165,4
addi $t0,$t0,4
# Original instruction: lw v166,0(v163)
lw $t1,0($t0)
# Original instruction: addiu v167,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v168,0(v167)
lw $t0,0($t0)
# Original instruction: xor v169,v166,v168
xor $t0,$t1,$t0
# Original instruction: sltu v169,$zero,v169
sltu $t0,$zero,$t0
# Original instruction: bnez v169,label_32_body
bnez $t0,label_32_body
label_30_next:
# Original instruction: addiu v170,$fp,-12
addiu $t1,$fp,-12
# Original instruction: addiu v171,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v172,0(v171)
lw $t0,0($t0)
# Original instruction: sw v172,0(v170)
sw $t0,0($t1)
label_28_posttest:
# Original instruction: addiu v173,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v174,0(v173)
lw $t0,0($t0)
# Original instruction: bnez v174,label_29_body
bnez $t0,label_29_body
label_27_next:
sort_list_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
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
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: la v175,null
la $t2,null
# Original instruction: li v176,1
li $t0,1
# Original instruction: addiu v177,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v176,0(v177)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
# Original instruction: addi v178,$sp,0
addi $t0,$sp,0
# Original instruction: lw v179,0(v178)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sw v179,0(v175)
sw $t0,0($t2)
# Original instruction: addiu v180,$fp,-4
addiu $t1,$fp,-4
# Original instruction: la v181,null
la $t0,null
# Original instruction: lw v182,0(v181)
lw $t0,0($t0)
# Original instruction: sw v182,0(v180)
sw $t0,0($t1)
# Original instruction: addiu v183,$fp,-4
addiu $t1,$fp,-4
# Original instruction: addiu v184,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v183,0(v184)
sw $t1,0($t0)
# Original instruction: li v185,5
li $t0,5
# Original instruction: addiu v186,$sp,-8
addiu $t1,$sp,-8
# Original instruction: sw v185,0(v186)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: jal insert_end
jal insert_end
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: addiu v187,$fp,-4
addiu $t1,$fp,-4
# Original instruction: addiu v188,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v187,0(v188)
sw $t1,0($t0)
# Original instruction: li v189,3
li $t1,3
# Original instruction: addiu v190,$sp,-8
addiu $t0,$sp,-8
# Original instruction: sw v189,0(v190)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: jal insert_end
jal insert_end
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: addiu v191,$fp,-4
addiu $t0,$fp,-4
# Original instruction: addiu v192,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v191,0(v192)
sw $t0,0($t1)
# Original instruction: li v193,8
li $t1,8
# Original instruction: addiu v194,$sp,-8
addiu $t0,$sp,-8
# Original instruction: sw v193,0(v194)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: jal insert_end
jal insert_end
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: addiu v195,$fp,-4
addiu $t1,$fp,-4
# Original instruction: addiu v196,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v195,0(v196)
sw $t1,0($t0)
# Original instruction: li v197,1
li $t0,1
# Original instruction: addiu v198,$sp,-8
addiu $t1,$sp,-8
# Original instruction: sw v197,0(v198)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: jal insert_end
jal insert_end
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: addiu v199,$fp,-4
addiu $t0,$fp,-4
# Original instruction: addiu v200,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v199,0(v200)
sw $t0,0($t1)
# Original instruction: li v201,6
li $t1,6
# Original instruction: addiu v202,$sp,-8
addiu $t0,$sp,-8
# Original instruction: sw v201,0(v202)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: jal insert_end
jal insert_end
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: la v203,label_3_str
la $t0,label_3_str
# Original instruction: addiu v204,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v203,0(v204)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v205,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v206,0(v205)
lw $t1,0($t0)
# Original instruction: addiu v207,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v206,0(v207)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_list
jal print_list
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v208,$fp,-4
addiu $t1,$fp,-4
# Original instruction: addiu v209,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v208,0(v209)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal sort_list
jal sort_list
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v210,label_4_str
la $t1,label_4_str
# Original instruction: addiu v211,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v210,0(v211)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v212,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v213,0(v212)
lw $t0,0($t0)
# Original instruction: addiu v214,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v213,0(v214)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_list
jal print_list
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

