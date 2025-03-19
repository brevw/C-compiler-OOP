.data
label_0_str:
.asciiz " "
.align 2
label_1_str:
.asciiz "\n"
.align 2
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
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
# Original instruction: addiu v0,$fp,-8
addiu $t1,$fp,-8
# Original instruction: li v1,0
li $t0,0
# Original instruction: sw v1,0(v0)
sw $t0,0($t1)
# Original instruction: addiu v2,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v3,0(v2)
lw $t1,0($t0)
# Original instruction: addiu v4,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v5,0(v4)
lw $t0,0($t0)
# Original instruction: slt v6,v3,v5
slt $t0,$t1,$t0
# Original instruction: beqz v6,label_3_next
beqz $t0,label_3_next
label_5_body:
# Original instruction: addiu v7,$fp,-12
addiu $t1,$fp,-12
# Original instruction: li v8,0
li $t0,0
# Original instruction: sw v8,0(v7)
sw $t0,0($t1)
# Original instruction: addiu v9,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v10,0(v9)
lw $t1,0($t0)
# Original instruction: addiu v11,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v12,0(v11)
lw $t0,0($t0)
# Original instruction: slt v13,v10,v12
slt $t0,$t1,$t0
# Original instruction: beqz v13,label_6_next
beqz $t0,label_6_next
label_8_body:
# Original instruction: addiu v16,$fp,12
addiu $t2,$fp,12
# Original instruction: lw v16,0(v16)
lw $t2,0($t2)
# Original instruction: addiu v17,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v18,0(v17)
lw $t0,0($t0)
# Original instruction: li v19,12
li $t1,12
# Original instruction: mul v18,v18,v19
mul $t0,$t0,$t1
# Original instruction: add v15,v16,v18
add $t2,$t2,$t0
# Original instruction: addiu v20,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v21,0(v20)
lw $t0,0($t0)
# Original instruction: li v22,4
li $t1,4
# Original instruction: mul v21,v21,v22
mul $t0,$t0,$t1
# Original instruction: add v14,v15,v21
add $t0,$t2,$t0
# Original instruction: lw v23,0(v14)
lw $t0,0($t0)
# Original instruction: addiu v24,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v23,0(v24)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v25,label_0_str
la $t0,label_0_str
# Original instruction: addiu v26,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v25,0(v26)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v27,$fp,-12
addiu $t2,$fp,-12
# Original instruction: addiu v28,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v29,0(v28)
lw $t0,0($t0)
# Original instruction: li v30,1
li $t1,1
# Original instruction: add v31,v29,v30
add $t0,$t0,$t1
# Original instruction: sw v31,0(v27)
sw $t0,0($t2)
label_7_posttest:
# Original instruction: addiu v32,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v33,0(v32)
lw $t1,0($t0)
# Original instruction: addiu v34,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v35,0(v34)
lw $t0,0($t0)
# Original instruction: slt v36,v33,v35
slt $t0,$t1,$t0
# Original instruction: bnez v36,label_8_body
bnez $t0,label_8_body
label_6_next:
# Original instruction: la v37,label_1_str
la $t0,label_1_str
# Original instruction: addiu v38,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v37,0(v38)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v39,$fp,-8
addiu $t2,$fp,-8
# Original instruction: addiu v40,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v41,0(v40)
lw $t1,0($t0)
# Original instruction: li v42,1
li $t0,1
# Original instruction: add v43,v41,v42
add $t0,$t1,$t0
# Original instruction: sw v43,0(v39)
sw $t0,0($t2)
label_4_posttest:
# Original instruction: addiu v44,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v45,0(v44)
lw $t1,0($t0)
# Original instruction: addiu v46,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v47,0(v46)
lw $t0,0($t0)
# Original instruction: slt v48,v45,v47
slt $t0,$t1,$t0
# Original instruction: bnez v48,label_5_body
bnez $t0,label_5_body
label_3_next:
print_2d_array_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
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
# Original instruction: addiu $sp,$sp,-36
addiu $sp,$sp,-36
# Original instruction: addiu v51,$fp,-36
addiu $t1,$fp,-36
# Original instruction: li v52,0
li $t0,0
# Original instruction: li v53,12
li $t2,12
# Original instruction: mul v52,v52,v53
mul $t0,$t0,$t2
# Original instruction: add v50,v51,v52
add $t2,$t1,$t0
# Original instruction: li v54,0
li $t0,0
# Original instruction: li v55,4
li $t1,4
# Original instruction: mul v54,v54,v55
mul $t0,$t0,$t1
# Original instruction: add v49,v50,v54
add $t1,$t2,$t0
# Original instruction: li v56,1
li $t0,1
# Original instruction: sw v56,0(v49)
sw $t0,0($t1)
# Original instruction: addiu v59,$fp,-36
addiu $t0,$fp,-36
# Original instruction: li v60,0
li $t1,0
# Original instruction: li v61,12
li $t2,12
# Original instruction: mul v60,v60,v61
mul $t1,$t1,$t2
# Original instruction: add v58,v59,v60
add $t2,$t0,$t1
# Original instruction: li v62,1
li $t0,1
# Original instruction: li v63,4
li $t1,4
# Original instruction: mul v62,v62,v63
mul $t0,$t0,$t1
# Original instruction: add v57,v58,v62
add $t1,$t2,$t0
# Original instruction: li v64,2
li $t0,2
# Original instruction: sw v64,0(v57)
sw $t0,0($t1)
# Original instruction: addiu v67,$fp,-36
addiu $t2,$fp,-36
# Original instruction: li v68,0
li $t0,0
# Original instruction: li v69,12
li $t1,12
# Original instruction: mul v68,v68,v69
mul $t0,$t0,$t1
# Original instruction: add v66,v67,v68
add $t0,$t2,$t0
# Original instruction: li v70,2
li $t2,2
# Original instruction: li v71,4
li $t1,4
# Original instruction: mul v70,v70,v71
mul $t2,$t2,$t1
# Original instruction: add v65,v66,v70
add $t1,$t0,$t2
# Original instruction: li v72,3
li $t0,3
# Original instruction: sw v72,0(v65)
sw $t0,0($t1)
# Original instruction: addiu v75,$fp,-36
addiu $t0,$fp,-36
# Original instruction: li v76,1
li $t2,1
# Original instruction: li v77,12
li $t1,12
# Original instruction: mul v76,v76,v77
mul $t2,$t2,$t1
# Original instruction: add v74,v75,v76
add $t2,$t0,$t2
# Original instruction: li v78,0
li $t0,0
# Original instruction: li v79,4
li $t1,4
# Original instruction: mul v78,v78,v79
mul $t0,$t0,$t1
# Original instruction: add v73,v74,v78
add $t0,$t2,$t0
# Original instruction: li v80,4
li $t1,4
# Original instruction: sw v80,0(v73)
sw $t1,0($t0)
# Original instruction: addiu v83,$fp,-36
addiu $t2,$fp,-36
# Original instruction: li v84,1
li $t0,1
# Original instruction: li v85,12
li $t1,12
# Original instruction: mul v84,v84,v85
mul $t0,$t0,$t1
# Original instruction: add v82,v83,v84
add $t1,$t2,$t0
# Original instruction: li v86,1
li $t0,1
# Original instruction: li v87,4
li $t2,4
# Original instruction: mul v86,v86,v87
mul $t0,$t0,$t2
# Original instruction: add v81,v82,v86
add $t0,$t1,$t0
# Original instruction: li v88,5
li $t1,5
# Original instruction: sw v88,0(v81)
sw $t1,0($t0)
# Original instruction: addiu v91,$fp,-36
addiu $t0,$fp,-36
# Original instruction: li v92,1
li $t2,1
# Original instruction: li v93,12
li $t1,12
# Original instruction: mul v92,v92,v93
mul $t2,$t2,$t1
# Original instruction: add v90,v91,v92
add $t2,$t0,$t2
# Original instruction: li v94,2
li $t0,2
# Original instruction: li v95,4
li $t1,4
# Original instruction: mul v94,v94,v95
mul $t0,$t0,$t1
# Original instruction: add v89,v90,v94
add $t0,$t2,$t0
# Original instruction: li v96,6
li $t1,6
# Original instruction: sw v96,0(v89)
sw $t1,0($t0)
# Original instruction: addiu v99,$fp,-36
addiu $t1,$fp,-36
# Original instruction: li v100,2
li $t2,2
# Original instruction: li v101,12
li $t0,12
# Original instruction: mul v100,v100,v101
mul $t2,$t2,$t0
# Original instruction: add v98,v99,v100
add $t1,$t1,$t2
# Original instruction: li v102,0
li $t2,0
# Original instruction: li v103,4
li $t0,4
# Original instruction: mul v102,v102,v103
mul $t2,$t2,$t0
# Original instruction: add v97,v98,v102
add $t0,$t1,$t2
# Original instruction: li v104,7
li $t1,7
# Original instruction: sw v104,0(v97)
sw $t1,0($t0)
# Original instruction: addiu v107,$fp,-36
addiu $t1,$fp,-36
# Original instruction: li v108,2
li $t2,2
# Original instruction: li v109,12
li $t0,12
# Original instruction: mul v108,v108,v109
mul $t2,$t2,$t0
# Original instruction: add v106,v107,v108
add $t0,$t1,$t2
# Original instruction: li v110,1
li $t1,1
# Original instruction: li v111,4
li $t2,4
# Original instruction: mul v110,v110,v111
mul $t1,$t1,$t2
# Original instruction: add v105,v106,v110
add $t1,$t0,$t1
# Original instruction: li v112,8
li $t0,8
# Original instruction: sw v112,0(v105)
sw $t0,0($t1)
# Original instruction: addiu v115,$fp,-36
addiu $t1,$fp,-36
# Original instruction: li v116,2
li $t2,2
# Original instruction: li v117,12
li $t0,12
# Original instruction: mul v116,v116,v117
mul $t2,$t2,$t0
# Original instruction: add v114,v115,v116
add $t0,$t1,$t2
# Original instruction: li v118,2
li $t2,2
# Original instruction: li v119,4
li $t1,4
# Original instruction: mul v118,v118,v119
mul $t2,$t2,$t1
# Original instruction: add v113,v114,v118
add $t0,$t0,$t2
# Original instruction: li v120,9
li $t1,9
# Original instruction: sw v120,0(v113)
sw $t1,0($t0)
# Original instruction: addiu v121,$fp,-36
addiu $t1,$fp,-36
# Original instruction: addiu v122,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v121,0(v122)
sw $t1,0($t0)
# Original instruction: li v123,3
li $t0,3
# Original instruction: addiu v124,$sp,-8
addiu $t1,$sp,-8
# Original instruction: sw v123,0(v124)
sw $t0,0($t1)
# Original instruction: li v125,3
li $t1,3
# Original instruction: addiu v126,$sp,-12
addiu $t0,$sp,-12
# Original instruction: sw v125,0(v126)
sw $t1,0($t0)
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

