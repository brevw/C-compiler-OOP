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
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v0,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v2,$fp,8
addiu $t0,$fp,8
# Original instruction: addi v1,v2,0
addi $t0,$t0,0
# Original instruction: lw v3,0(v1)
lw $t1,0($t0)
# Original instruction: addiu v5,$fp,16
addiu $t0,$fp,16
# Original instruction: addi v4,v5,0
addi $t0,$t0,0
# Original instruction: lw v6,0(v4)
lw $t0,0($t0)
# Original instruction: sub v7,v3,v6
sub $t0,$t1,$t0
# Original instruction: sw v7,0(v0)
sw $t0,0($t2)
# Original instruction: addiu v8,$fp,-8
addiu $t2,$fp,-8
# Original instruction: addiu v10,$fp,8
addiu $t0,$fp,8
# Original instruction: addi v9,v10,4
addi $t0,$t0,4
# Original instruction: lw v11,0(v9)
lw $t1,0($t0)
# Original instruction: addiu v13,$fp,16
addiu $t0,$fp,16
# Original instruction: addi v12,v13,4
addi $t0,$t0,4
# Original instruction: lw v14,0(v12)
lw $t0,0($t0)
# Original instruction: sub v15,v11,v14
sub $t0,$t1,$t0
# Original instruction: sw v15,0(v8)
sw $t0,0($t2)
# Original instruction: addiu v16,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v17,0(v16)
lw $t1,0($t0)
# Original instruction: addiu v18,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v19,0(v18)
lw $t0,0($t0)
# Original instruction: mul v20,v17,v19
mul $t2,$t1,$t0
# Original instruction: addiu v21,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v22,0(v21)
lw $t1,0($t0)
# Original instruction: addiu v23,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v24,0(v23)
lw $t0,0($t0)
# Original instruction: mul v25,v22,v24
mul $t0,$t1,$t0
# Original instruction: add v26,v20,v25
add $t0,$t2,$t0
# Original instruction: addi v27,$fp,4
addi $t1,$fp,4
# Original instruction: sw v26,0(v27)
sw $t0,0($t1)
# Original instruction: j calculate_distance_epilogue
j calculate_distance_epilogue
calculate_distance_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
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
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: la v28,label_0_str
la $t1,label_0_str
# Original instruction: addiu v29,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v28,0(v29)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v31,$fp,12
addiu $t0,$fp,12
# Original instruction: addi v30,v31,0
addi $t0,$t0,0
# Original instruction: lw v32,0(v30)
lw $t0,0($t0)
# Original instruction: addiu v33,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v32,0(v33)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v34,label_1_str
la $t0,label_1_str
# Original instruction: addiu v35,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v34,0(v35)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v37,$fp,12
addiu $t0,$fp,12
# Original instruction: addi v36,v37,4
addi $t0,$t0,4
# Original instruction: lw v38,0(v36)
lw $t0,0($t0)
# Original instruction: addiu v39,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v38,0(v39)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v40,label_2_str
la $t1,label_2_str
# Original instruction: addiu v41,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v40,0(v41)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v42,label_3_str
la $t1,label_3_str
# Original instruction: addiu v43,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v42,0(v43)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v45,$fp,4
addiu $t0,$fp,4
# Original instruction: addi v44,v45,0
addi $t0,$t0,0
# Original instruction: lw v46,0(v44)
lw $t1,0($t0)
# Original instruction: addiu v47,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v46,0(v47)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v48,label_1_str
la $t0,label_1_str
# Original instruction: addiu v49,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v48,0(v49)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v51,$fp,4
addiu $t0,$fp,4
# Original instruction: addi v50,v51,4
addi $t0,$t0,4
# Original instruction: lw v52,0(v50)
lw $t1,0($t0)
# Original instruction: addiu v53,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v52,0(v53)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v54,label_2_str
la $t0,label_2_str
# Original instruction: addiu v55,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v54,0(v55)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v56,label_4_str
la $t1,label_4_str
# Original instruction: addiu v57,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v56,0(v57)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v58,$fp,12
addiu $t1,$fp,12
# Original instruction: addiu v59,$sp,-8
addiu $t0,$sp,-8
# Original instruction: lb v60,0(v58)
lb $t2,0($t1)
# Original instruction: sb v60,0(v59)
sb $t2,0($t0)
# Original instruction: lb v60,1(v58)
lb $t2,1($t1)
# Original instruction: sb v60,1(v59)
sb $t2,1($t0)
# Original instruction: lb v60,2(v58)
lb $t2,2($t1)
# Original instruction: sb v60,2(v59)
sb $t2,2($t0)
# Original instruction: lb v60,3(v58)
lb $t2,3($t1)
# Original instruction: sb v60,3(v59)
sb $t2,3($t0)
# Original instruction: lb v60,4(v58)
lb $t2,4($t1)
# Original instruction: sb v60,4(v59)
sb $t2,4($t0)
# Original instruction: lb v60,5(v58)
lb $t2,5($t1)
# Original instruction: sb v60,5(v59)
sb $t2,5($t0)
# Original instruction: lb v60,6(v58)
lb $t2,6($t1)
# Original instruction: sb v60,6(v59)
sb $t2,6($t0)
# Original instruction: lb v60,7(v58)
lb $t2,7($t1)
# Original instruction: sb v60,7(v59)
sb $t2,7($t0)
# Original instruction: addiu v61,$fp,4
addiu $t1,$fp,4
# Original instruction: addiu v62,$sp,-16
addiu $t2,$sp,-16
# Original instruction: lb v63,0(v61)
lb $t0,0($t1)
# Original instruction: sb v63,0(v62)
sb $t0,0($t2)
# Original instruction: lb v63,1(v61)
lb $t0,1($t1)
# Original instruction: sb v63,1(v62)
sb $t0,1($t2)
# Original instruction: lb v63,2(v61)
lb $t0,2($t1)
# Original instruction: sb v63,2(v62)
sb $t0,2($t2)
# Original instruction: lb v63,3(v61)
lb $t0,3($t1)
# Original instruction: sb v63,3(v62)
sb $t0,3($t2)
# Original instruction: lb v63,4(v61)
lb $t0,4($t1)
# Original instruction: sb v63,4(v62)
sb $t0,4($t2)
# Original instruction: lb v63,5(v61)
lb $t0,5($t1)
# Original instruction: sb v63,5(v62)
sb $t0,5($t2)
# Original instruction: lb v63,6(v61)
lb $t0,6($t1)
# Original instruction: sb v63,6(v62)
sb $t0,6($t2)
# Original instruction: lb v63,7(v61)
lb $t0,7($t1)
# Original instruction: sb v63,7(v62)
sb $t0,7($t2)
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal calculate_distance
jal calculate_distance
# Original instruction: addi v64,$sp,0
addi $t0,$sp,0
# Original instruction: lw v65,0(v64)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,20
addiu $sp,$sp,20
# Original instruction: addiu v66,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v65,0(v66)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v67,label_5_str
la $t1,label_5_str
# Original instruction: addiu v68,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v67,0(v68)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
print_distance_epilogue:
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
.globl main
main:
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: addiu v70,$fp,-8
addiu $t0,$fp,-8
# Original instruction: addi v69,v70,0
addi $t0,$t0,0
# Original instruction: li v71,10
li $t1,10
# Original instruction: sw v71,0(v69)
sw $t1,0($t0)
# Original instruction: addiu v73,$fp,-8
addiu $t0,$fp,-8
# Original instruction: addi v72,v73,4
addi $t0,$t0,4
# Original instruction: li v74,20
li $t1,20
# Original instruction: sw v74,0(v72)
sw $t1,0($t0)
# Original instruction: addiu v76,$fp,-16
addiu $t0,$fp,-16
# Original instruction: addi v75,v76,0
addi $t1,$t0,0
# Original instruction: li v77,30
li $t0,30
# Original instruction: sw v77,0(v75)
sw $t0,0($t1)
# Original instruction: addiu v79,$fp,-16
addiu $t0,$fp,-16
# Original instruction: addi v78,v79,4
addi $t1,$t0,4
# Original instruction: li v80,40
li $t0,40
# Original instruction: sw v80,0(v78)
sw $t0,0($t1)
# Original instruction: addiu v81,$fp,-8
addiu $t0,$fp,-8
# Original instruction: addiu v82,$sp,-8
addiu $t1,$sp,-8
# Original instruction: lb v83,0(v81)
lb $t2,0($t0)
# Original instruction: sb v83,0(v82)
sb $t2,0($t1)
# Original instruction: lb v83,1(v81)
lb $t2,1($t0)
# Original instruction: sb v83,1(v82)
sb $t2,1($t1)
# Original instruction: lb v83,2(v81)
lb $t2,2($t0)
# Original instruction: sb v83,2(v82)
sb $t2,2($t1)
# Original instruction: lb v83,3(v81)
lb $t2,3($t0)
# Original instruction: sb v83,3(v82)
sb $t2,3($t1)
# Original instruction: lb v83,4(v81)
lb $t2,4($t0)
# Original instruction: sb v83,4(v82)
sb $t2,4($t1)
# Original instruction: lb v83,5(v81)
lb $t2,5($t0)
# Original instruction: sb v83,5(v82)
sb $t2,5($t1)
# Original instruction: lb v83,6(v81)
lb $t2,6($t0)
# Original instruction: sb v83,6(v82)
sb $t2,6($t1)
# Original instruction: lb v83,7(v81)
lb $t2,7($t0)
# Original instruction: sb v83,7(v82)
sb $t2,7($t1)
# Original instruction: addiu v84,$fp,-16
addiu $t1,$fp,-16
# Original instruction: addiu v85,$sp,-16
addiu $t2,$sp,-16
# Original instruction: lb v86,0(v84)
lb $t0,0($t1)
# Original instruction: sb v86,0(v85)
sb $t0,0($t2)
# Original instruction: lb v86,1(v84)
lb $t0,1($t1)
# Original instruction: sb v86,1(v85)
sb $t0,1($t2)
# Original instruction: lb v86,2(v84)
lb $t0,2($t1)
# Original instruction: sb v86,2(v85)
sb $t0,2($t2)
# Original instruction: lb v86,3(v84)
lb $t0,3($t1)
# Original instruction: sb v86,3(v85)
sb $t0,3($t2)
# Original instruction: lb v86,4(v84)
lb $t0,4($t1)
# Original instruction: sb v86,4(v85)
sb $t0,4($t2)
# Original instruction: lb v86,5(v84)
lb $t0,5($t1)
# Original instruction: sb v86,5(v85)
sb $t0,5($t2)
# Original instruction: lb v86,6(v84)
lb $t0,6($t1)
# Original instruction: sb v86,6(v85)
sb $t0,6($t2)
# Original instruction: lb v86,7(v84)
lb $t0,7($t1)
# Original instruction: sb v86,7(v85)
sb $t0,7($t2)
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

