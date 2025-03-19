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
addiu $sp,$sp,-4
sw $t3,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
# Original instruction: addiu v0,$fp,-16
addiu $t2,$fp,-16
# Original instruction: li v1,100
li $t1,100
# Original instruction: addiu v2,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v1,0(v2)
sw $t1,0($t0)
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
# Original instruction: addiu v5,$fp,-8
addiu $t1,$fp,-8
# Original instruction: li v6,0
li $t0,0
# Original instruction: sw v6,0(v5)
sw $t0,0($t1)
# Original instruction: addiu v7,$fp,-12
addiu $t0,$fp,-12
# Original instruction: li v8,0
li $t1,0
# Original instruction: sw v8,0(v7)
sw $t1,0($t0)
# Original instruction: addiu v10,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v11,0(v10)
lw $t2,0($t0)
# Original instruction: addiu v12,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v13,0(v12)
lw $t0,0($t0)
# Original instruction: li v14,1
li $t1,1
# Original instruction: mul v13,v13,v14
mul $t0,$t0,$t1
# Original instruction: add v9,v11,v13
add $t0,$t2,$t0
# Original instruction: lb v15,0(v9)
lb $t0,0($t0)
# Original instruction: li v16,0
li $t1,0
# Original instruction: xor v17,v15,v16
xor $t0,$t0,$t1
# Original instruction: sltu v17,$zero,v17
sltu $t0,$zero,$t0
# Original instruction: beqz v17,label_5_next
beqz $t0,label_5_next
label_7_body:
# Original instruction: addiu v19,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v20,0(v19)
lw $t2,0($t0)
# Original instruction: addiu v21,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v22,0(v21)
lw $t0,0($t0)
# Original instruction: li v23,1
li $t1,1
# Original instruction: mul v22,v22,v23
mul $t0,$t0,$t1
# Original instruction: add v18,v20,v22
add $t3,$t2,$t0
# Original instruction: addiu v25,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v26,0(v25)
lw $t2,0($t0)
# Original instruction: addiu v27,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v28,0(v27)
lw $t0,0($t0)
# Original instruction: li v29,1
li $t1,1
# Original instruction: mul v28,v28,v29
mul $t0,$t0,$t1
# Original instruction: add v24,v26,v28
add $t0,$t2,$t0
# Original instruction: lb v30,0(v24)
lb $t0,0($t0)
# Original instruction: sb v30,0(v18)
sb $t0,0($t3)
# Original instruction: addiu v31,$fp,-8
addiu $t2,$fp,-8
# Original instruction: addiu v32,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v33,0(v32)
lw $t0,0($t0)
# Original instruction: li v34,1
li $t1,1
# Original instruction: add v35,v33,v34
add $t0,$t0,$t1
# Original instruction: sw v35,0(v31)
sw $t0,0($t2)
# Original instruction: addiu v36,$fp,-12
addiu $t2,$fp,-12
# Original instruction: addiu v37,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v38,0(v37)
lw $t1,0($t0)
# Original instruction: li v39,1
li $t0,1
# Original instruction: add v40,v38,v39
add $t0,$t1,$t0
# Original instruction: sw v40,0(v36)
sw $t0,0($t2)
label_6_posttest:
# Original instruction: addiu v42,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v43,0(v42)
lw $t2,0($t0)
# Original instruction: addiu v44,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v45,0(v44)
lw $t0,0($t0)
# Original instruction: li v46,1
li $t1,1
# Original instruction: mul v45,v45,v46
mul $t0,$t0,$t1
# Original instruction: add v41,v43,v45
add $t0,$t2,$t0
# Original instruction: lb v47,0(v41)
lb $t0,0($t0)
# Original instruction: li v48,0
li $t1,0
# Original instruction: xor v49,v47,v48
xor $t0,$t0,$t1
# Original instruction: sltu v49,$zero,v49
sltu $t0,$zero,$t0
# Original instruction: bnez v49,label_7_body
bnez $t0,label_7_body
label_5_next:
# Original instruction: addiu v50,$fp,-8
addiu $t0,$fp,-8
# Original instruction: li v51,0
li $t1,0
# Original instruction: sw v51,0(v50)
sw $t1,0($t0)
# Original instruction: addiu v53,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v54,0(v53)
lw $t2,0($t0)
# Original instruction: addiu v55,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v56,0(v55)
lw $t0,0($t0)
# Original instruction: li v57,1
li $t1,1
# Original instruction: mul v56,v56,v57
mul $t0,$t0,$t1
# Original instruction: add v52,v54,v56
add $t0,$t2,$t0
# Original instruction: lb v58,0(v52)
lb $t1,0($t0)
# Original instruction: li v59,0
li $t0,0
# Original instruction: xor v60,v58,v59
xor $t0,$t1,$t0
# Original instruction: sltu v60,$zero,v60
sltu $t0,$zero,$t0
# Original instruction: beqz v60,label_8_next
beqz $t0,label_8_next
label_10_body:
# Original instruction: addiu v62,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v63,0(v62)
lw $t2,0($t0)
# Original instruction: addiu v64,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v65,0(v64)
lw $t0,0($t0)
# Original instruction: li v66,1
li $t1,1
# Original instruction: mul v65,v65,v66
mul $t0,$t0,$t1
# Original instruction: add v61,v63,v65
add $t3,$t2,$t0
# Original instruction: addiu v68,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v69,0(v68)
lw $t2,0($t0)
# Original instruction: addiu v70,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v71,0(v70)
lw $t0,0($t0)
# Original instruction: li v72,1
li $t1,1
# Original instruction: mul v71,v71,v72
mul $t0,$t0,$t1
# Original instruction: add v67,v69,v71
add $t0,$t2,$t0
# Original instruction: lb v73,0(v67)
lb $t0,0($t0)
# Original instruction: sb v73,0(v61)
sb $t0,0($t3)
# Original instruction: addiu v74,$fp,-8
addiu $t2,$fp,-8
# Original instruction: addiu v75,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v76,0(v75)
lw $t0,0($t0)
# Original instruction: li v77,1
li $t1,1
# Original instruction: add v78,v76,v77
add $t0,$t0,$t1
# Original instruction: sw v78,0(v74)
sw $t0,0($t2)
# Original instruction: addiu v79,$fp,-12
addiu $t2,$fp,-12
# Original instruction: addiu v80,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v81,0(v80)
lw $t1,0($t0)
# Original instruction: li v82,1
li $t0,1
# Original instruction: add v83,v81,v82
add $t0,$t1,$t0
# Original instruction: sw v83,0(v79)
sw $t0,0($t2)
label_9_posttest:
# Original instruction: addiu v85,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v86,0(v85)
lw $t2,0($t0)
# Original instruction: addiu v87,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v88,0(v87)
lw $t1,0($t0)
# Original instruction: li v89,1
li $t0,1
# Original instruction: mul v88,v88,v89
mul $t1,$t1,$t0
# Original instruction: add v84,v86,v88
add $t0,$t2,$t1
# Original instruction: lb v90,0(v84)
lb $t1,0($t0)
# Original instruction: li v91,0
li $t0,0
# Original instruction: xor v92,v90,v91
xor $t0,$t1,$t0
# Original instruction: sltu v92,$zero,v92
sltu $t0,$zero,$t0
# Original instruction: bnez v92,label_10_body
bnez $t0,label_10_body
label_8_next:
# Original instruction: addiu v94,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v95,0(v94)
lw $t2,0($t0)
# Original instruction: addiu v96,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v97,0(v96)
lw $t1,0($t0)
# Original instruction: li v98,1
li $t0,1
# Original instruction: mul v97,v97,v98
mul $t1,$t1,$t0
# Original instruction: add v93,v95,v97
add $t1,$t2,$t1
# Original instruction: li v99,0
li $t0,0
# Original instruction: sb v99,0(v93)
sb $t0,0($t1)
# Original instruction: addiu v100,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v101,0(v100)
lw $t1,0($t0)
# Original instruction: addi v102,$fp,4
addi $t0,$fp,4
# Original instruction: sw v101,0(v102)
sw $t1,0($t0)
# Original instruction: j concatenate_epilogue
j concatenate_epilogue
concatenate_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t3,0($sp)
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
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: addiu v103,$fp,-4
addiu $t0,$fp,-4
# Original instruction: la v104,label_0_str
la $t1,label_0_str
# Original instruction: sw v104,0(v103)
sw $t1,0($t0)
# Original instruction: addiu v105,$fp,-8
addiu $t0,$fp,-8
# Original instruction: la v106,label_1_str
la $t1,label_1_str
# Original instruction: sw v106,0(v105)
sw $t1,0($t0)
# Original instruction: addiu v107,$fp,-12
addiu $t2,$fp,-12
# Original instruction: addiu v108,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v109,0(v108)
lw $t0,0($t0)
# Original instruction: addiu v110,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v109,0(v110)
sw $t0,0($t1)
# Original instruction: addiu v111,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v112,0(v111)
lw $t0,0($t0)
# Original instruction: addiu v113,$sp,-8
addiu $t1,$sp,-8
# Original instruction: sw v112,0(v113)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal concatenate
jal concatenate
# Original instruction: addi v114,$sp,0
addi $t0,$sp,0
# Original instruction: lw v115,0(v114)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
# Original instruction: sw v115,0(v107)
sw $t0,0($t2)
# Original instruction: addiu v116,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v117,0(v116)
lw $t0,0($t0)
# Original instruction: addiu v118,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v117,0(v118)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v119,label_2_str
la $t0,label_2_str
# Original instruction: addiu v120,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v119,0(v120)
sw $t0,0($t1)
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

