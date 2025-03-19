.data
label_0_str:
.asciiz " "
.align 2
label_1_str:
.asciiz "\n"
.align 2
label_2_str:
.asciiz "Enter the number of rows for Pascal\'s Triangle: "
.align 2
# Allocated labels for virtual registers

.text
print_pascals_triangle:
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
# Original instruction: addiu $sp,$sp,-10008
addiu $sp,$sp,-10008
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t3,0($sp)
addiu $sp,$sp,-4
sw $t4,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
# Original instruction: addiu v0,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: li v1,0
li $t1,0
# Original instruction: sw v1,0(v0)
sw $t1,0($t0)
# Original instruction: addiu v2,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v3,0(v2)
lw $t1,0($t0)
# Original instruction: addiu v4,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v5,0(v4)
lw $t0,0($t0)
# Original instruction: slt v6,v3,v5
slt $t0,$t1,$t0
# Original instruction: beqz v6,label_4_next
beqz $t0,label_4_next
label_6_body:
# Original instruction: addiu v7,$fp,-10012
addiu $t1,$fp,-10012
# Original instruction: li v8,0
li $t0,0
# Original instruction: sw v8,0(v7)
sw $t0,0($t1)
# Original instruction: addiu v9,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v10,0(v9)
lw $t1,0($t0)
# Original instruction: addiu v11,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v12,0(v11)
lw $t0,0($t0)
# Original instruction: slt v13,v12,v10
slt $t0,$t0,$t1
# Original instruction: xori v13,v13,1
xori $t0,$t0,1
# Original instruction: beqz v13,label_7_next
beqz $t0,label_7_next
label_9_body:
# Original instruction: addiu v15,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v16,0(v15)
lw $t1,0($t0)
# Original instruction: li v17,0
li $t0,0
# Original instruction: xor v18,v16,v17
xor $t0,$t1,$t0
# Original instruction: sltiu v18,v18,1
sltiu $t0,$t0,1
# Original instruction: bne v18,$zero,label_12_
bne $t0,$zero,label_12_
# Original instruction: addiu v19,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v20,0(v19)
lw $t1,0($t0)
# Original instruction: addiu v21,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v22,0(v21)
lw $t0,0($t0)
# Original instruction: xor v23,v20,v22
xor $t0,$t1,$t0
# Original instruction: sltiu v23,v23,1
sltiu $t0,$t0,1
# Original instruction: bne v23,$zero,label_12_
bne $t0,$zero,label_12_
# Original instruction: li v14,0
li $t0,0
# Original instruction: j label_13_
j label_13_
label_12_:
# Original instruction: li v14,1
li $t0,1
label_13_:
# Original instruction: beqz v14,label_10_ELSE
beqz $t0,label_10_ELSE
# Original instruction: addiu v26,$fp,-10004
addiu $t2,$fp,-10004
# Original instruction: addiu v27,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v28,0(v27)
lw $t1,0($t0)
# Original instruction: li v29,200
li $t0,200
# Original instruction: mul v28,v28,v29
mul $t1,$t1,$t0
# Original instruction: add v25,v26,v28
add $t2,$t2,$t1
# Original instruction: addiu v30,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v31,0(v30)
lw $t0,0($t0)
# Original instruction: li v32,4
li $t1,4
# Original instruction: mul v31,v31,v32
mul $t0,$t0,$t1
# Original instruction: add v24,v25,v31
add $t0,$t2,$t0
# Original instruction: li v33,1
li $t1,1
# Original instruction: sw v33,0(v24)
sw $t1,0($t0)
# Original instruction: j label_11_END
j label_11_END
label_10_ELSE:
# Original instruction: addiu v36,$fp,-10004
addiu $t2,$fp,-10004
# Original instruction: addiu v37,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v38,0(v37)
lw $t0,0($t0)
# Original instruction: li v39,200
li $t1,200
# Original instruction: mul v38,v38,v39
mul $t0,$t0,$t1
# Original instruction: add v35,v36,v38
add $t2,$t2,$t0
# Original instruction: addiu v40,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v41,0(v40)
lw $t1,0($t0)
# Original instruction: li v42,4
li $t0,4
# Original instruction: mul v41,v41,v42
mul $t1,$t1,$t0
# Original instruction: add v34,v35,v41
add $t1,$t2,$t1
# Original instruction: addiu v45,$fp,-10004
addiu $t3,$fp,-10004
# Original instruction: addiu v46,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v47,0(v46)
lw $t2,0($t0)
# Original instruction: li v48,1
li $t0,1
# Original instruction: sub v49,v47,v48
sub $t2,$t2,$t0
# Original instruction: li v50,200
li $t0,200
# Original instruction: mul v49,v49,v50
mul $t2,$t2,$t0
# Original instruction: add v44,v45,v49
add $t3,$t3,$t2
# Original instruction: addiu v51,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v52,0(v51)
lw $t0,0($t0)
# Original instruction: li v53,1
li $t2,1
# Original instruction: sub v54,v52,v53
sub $t0,$t0,$t2
# Original instruction: li v55,4
li $t2,4
# Original instruction: mul v54,v54,v55
mul $t0,$t0,$t2
# Original instruction: add v43,v44,v54
add $t0,$t3,$t0
# Original instruction: lw v56,0(v43)
lw $t4,0($t0)
# Original instruction: addiu v59,$fp,-10004
addiu $t3,$fp,-10004
# Original instruction: addiu v60,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v61,0(v60)
lw $t0,0($t0)
# Original instruction: li v62,1
li $t2,1
# Original instruction: sub v63,v61,v62
sub $t2,$t0,$t2
# Original instruction: li v64,200
li $t0,200
# Original instruction: mul v63,v63,v64
mul $t2,$t2,$t0
# Original instruction: add v58,v59,v63
add $t3,$t3,$t2
# Original instruction: addiu v65,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v66,0(v65)
lw $t0,0($t0)
# Original instruction: li v67,4
li $t2,4
# Original instruction: mul v66,v66,v67
mul $t0,$t0,$t2
# Original instruction: add v57,v58,v66
add $t0,$t3,$t0
# Original instruction: lw v68,0(v57)
lw $t0,0($t0)
# Original instruction: add v69,v56,v68
add $t0,$t4,$t0
# Original instruction: sw v69,0(v34)
sw $t0,0($t1)
label_11_END:
# Original instruction: addiu v70,$fp,-10012
addiu $t2,$fp,-10012
# Original instruction: addiu v71,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v72,0(v71)
lw $t1,0($t0)
# Original instruction: li v73,1
li $t0,1
# Original instruction: add v74,v72,v73
add $t0,$t1,$t0
# Original instruction: sw v74,0(v70)
sw $t0,0($t2)
label_8_posttest:
# Original instruction: addiu v75,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v76,0(v75)
lw $t1,0($t0)
# Original instruction: addiu v77,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v78,0(v77)
lw $t0,0($t0)
# Original instruction: slt v79,v78,v76
slt $t0,$t0,$t1
# Original instruction: xori v79,v79,1
xori $t0,$t0,1
# Original instruction: bnez v79,label_9_body
bnez $t0,label_9_body
label_7_next:
# Original instruction: addiu v80,$fp,-10008
addiu $t2,$fp,-10008
# Original instruction: addiu v81,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v82,0(v81)
lw $t0,0($t0)
# Original instruction: li v83,1
li $t1,1
# Original instruction: add v84,v82,v83
add $t0,$t0,$t1
# Original instruction: sw v84,0(v80)
sw $t0,0($t2)
label_5_posttest:
# Original instruction: addiu v85,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v86,0(v85)
lw $t1,0($t0)
# Original instruction: addiu v87,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v88,0(v87)
lw $t0,0($t0)
# Original instruction: slt v89,v86,v88
slt $t0,$t1,$t0
# Original instruction: bnez v89,label_6_body
bnez $t0,label_6_body
label_4_next:
# Original instruction: addiu v90,$fp,-10008
addiu $t1,$fp,-10008
# Original instruction: li v91,0
li $t0,0
# Original instruction: sw v91,0(v90)
sw $t0,0($t1)
# Original instruction: addiu v92,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v93,0(v92)
lw $t1,0($t0)
# Original instruction: addiu v94,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v95,0(v94)
lw $t0,0($t0)
# Original instruction: slt v96,v93,v95
slt $t0,$t1,$t0
# Original instruction: beqz v96,label_14_next
beqz $t0,label_14_next
label_16_body:
# Original instruction: addiu v97,$fp,-10012
addiu $t1,$fp,-10012
# Original instruction: li v98,0
li $t0,0
# Original instruction: sw v98,0(v97)
sw $t0,0($t1)
# Original instruction: addiu v99,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v100,0(v99)
lw $t1,0($t0)
# Original instruction: addiu v101,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v102,0(v101)
lw $t0,0($t0)
# Original instruction: slt v103,v102,v100
slt $t0,$t0,$t1
# Original instruction: xori v103,v103,1
xori $t0,$t0,1
# Original instruction: beqz v103,label_17_next
beqz $t0,label_17_next
label_19_body:
# Original instruction: addiu v106,$fp,-10004
addiu $t2,$fp,-10004
# Original instruction: addiu v107,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v108,0(v107)
lw $t0,0($t0)
# Original instruction: li v109,200
li $t1,200
# Original instruction: mul v108,v108,v109
mul $t0,$t0,$t1
# Original instruction: add v105,v106,v108
add $t2,$t2,$t0
# Original instruction: addiu v110,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v111,0(v110)
lw $t1,0($t0)
# Original instruction: li v112,4
li $t0,4
# Original instruction: mul v111,v111,v112
mul $t1,$t1,$t0
# Original instruction: add v104,v105,v111
add $t0,$t2,$t1
# Original instruction: lw v113,0(v104)
lw $t1,0($t0)
# Original instruction: addiu v114,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v113,0(v114)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v115,label_0_str
la $t0,label_0_str
# Original instruction: addiu v116,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v115,0(v116)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v117,$fp,-10012
addiu $t2,$fp,-10012
# Original instruction: addiu v118,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v119,0(v118)
lw $t0,0($t0)
# Original instruction: li v120,1
li $t1,1
# Original instruction: add v121,v119,v120
add $t0,$t0,$t1
# Original instruction: sw v121,0(v117)
sw $t0,0($t2)
label_18_posttest:
# Original instruction: addiu v122,$fp,-10012
addiu $t0,$fp,-10012
# Original instruction: lw v123,0(v122)
lw $t1,0($t0)
# Original instruction: addiu v124,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v125,0(v124)
lw $t0,0($t0)
# Original instruction: slt v126,v125,v123
slt $t0,$t0,$t1
# Original instruction: xori v126,v126,1
xori $t0,$t0,1
# Original instruction: bnez v126,label_19_body
bnez $t0,label_19_body
label_17_next:
# Original instruction: la v127,label_1_str
la $t0,label_1_str
# Original instruction: addiu v128,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v127,0(v128)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v129,$fp,-10008
addiu $t2,$fp,-10008
# Original instruction: addiu v130,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v131,0(v130)
lw $t1,0($t0)
# Original instruction: li v132,1
li $t0,1
# Original instruction: add v133,v131,v132
add $t0,$t1,$t0
# Original instruction: sw v133,0(v129)
sw $t0,0($t2)
label_15_posttest:
# Original instruction: addiu v134,$fp,-10008
addiu $t0,$fp,-10008
# Original instruction: lw v135,0(v134)
lw $t1,0($t0)
# Original instruction: addiu v136,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v137,0(v136)
lw $t0,0($t0)
# Original instruction: slt v138,v135,v137
slt $t0,$t1,$t0
# Original instruction: bnez v138,label_16_body
bnez $t0,label_16_body
label_14_next:
print_pascals_triangle_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t4,0($sp)
addiu $sp,$sp,4
lw $t3,0($sp)
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
.globl main
main:
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: la v139,label_2_str
la $t1,label_2_str
# Original instruction: addiu v140,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v139,0(v140)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v141,$fp,-4
addiu $t1,$fp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: addi v142,$sp,0
addi $t0,$sp,0
# Original instruction: lw v143,0(v142)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sw v143,0(v141)
sw $t0,0($t1)
# Original instruction: addiu v144,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v145,0(v144)
lw $t0,0($t0)
# Original instruction: addiu v146,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v145,0(v146)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_pascals_triangle
jal print_pascals_triangle
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

