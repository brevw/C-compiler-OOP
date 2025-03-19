.data
label_0_str:
.asciiz ", "
.align 2
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
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
# Original instruction: addiu v2,$fp,4
addiu $t0,$fp,4
# Original instruction: addi v1,v2,0
addi $t1,$t0,0
# Original instruction: li v3,0
li $t0,0
# Original instruction: li v4,1
li $t2,1
# Original instruction: mul v3,v3,v4
mul $t0,$t0,$t2
# Original instruction: add v0,v1,v3
add $t0,$t1,$t0
# Original instruction: lb v5,0(v0)
lb $t0,0($t0)
# Original instruction: addiu v6,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sb v5,0(v6)
sb $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v7,label_0_str
la $t1,label_0_str
# Original instruction: addiu v8,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v7,0(v8)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v11,$fp,4
addiu $t0,$fp,4
# Original instruction: addi v10,v11,0
addi $t0,$t0,0
# Original instruction: li v12,1
li $t1,1
# Original instruction: li v13,1
li $t2,1
# Original instruction: mul v12,v12,v13
mul $t1,$t1,$t2
# Original instruction: add v9,v10,v12
add $t0,$t0,$t1
# Original instruction: lb v14,0(v9)
lb $t1,0($t0)
# Original instruction: addiu v15,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sb v14,0(v15)
sb $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v16,label_0_str
la $t1,label_0_str
# Original instruction: addiu v17,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v16,0(v17)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v20,$fp,4
addiu $t0,$fp,4
# Original instruction: addi v19,v20,0
addi $t2,$t0,0
# Original instruction: li v21,2
li $t0,2
# Original instruction: li v22,1
li $t1,1
# Original instruction: mul v21,v21,v22
mul $t0,$t0,$t1
# Original instruction: add v18,v19,v21
add $t0,$t2,$t0
# Original instruction: lb v23,0(v18)
lb $t1,0($t0)
# Original instruction: addiu v24,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sb v23,0(v24)
sb $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
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
# Original instruction: addiu v28,$fp,4
addiu $t0,$fp,4
# Original instruction: addi v27,v28,4
addi $t0,$t0,4
# Original instruction: lw v29,0(v27)
lw $t0,0($t0)
# Original instruction: addiu v30,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v29,0(v30)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
print_struct_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
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
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addiu v33,$fp,-8
addiu $t0,$fp,-8
# Original instruction: addi v32,v33,0
addi $t2,$t0,0
# Original instruction: li v34,0
li $t0,0
# Original instruction: li v35,1
li $t1,1
# Original instruction: mul v34,v34,v35
mul $t0,$t0,$t1
# Original instruction: add v31,v32,v34
add $t1,$t2,$t0
# Original instruction: li v36,97
li $t0,97
# Original instruction: sb v36,0(v31)
sb $t0,0($t1)
# Original instruction: addiu v39,$fp,-8
addiu $t0,$fp,-8
# Original instruction: addi v38,v39,0
addi $t2,$t0,0
# Original instruction: li v40,1
li $t1,1
# Original instruction: li v41,1
li $t0,1
# Original instruction: mul v40,v40,v41
mul $t1,$t1,$t0
# Original instruction: add v37,v38,v40
add $t1,$t2,$t1
# Original instruction: li v42,98
li $t0,98
# Original instruction: sb v42,0(v37)
sb $t0,0($t1)
# Original instruction: addiu v45,$fp,-8
addiu $t0,$fp,-8
# Original instruction: addi v44,v45,0
addi $t2,$t0,0
# Original instruction: li v46,2
li $t1,2
# Original instruction: li v47,1
li $t0,1
# Original instruction: mul v46,v46,v47
mul $t1,$t1,$t0
# Original instruction: add v43,v44,v46
add $t0,$t2,$t1
# Original instruction: li v48,99
li $t1,99
# Original instruction: sb v48,0(v43)
sb $t1,0($t0)
# Original instruction: addiu v50,$fp,-8
addiu $t0,$fp,-8
# Original instruction: addi v49,v50,4
addi $t1,$t0,4
# Original instruction: li v51,10
li $t0,10
# Original instruction: sw v51,0(v49)
sw $t0,0($t1)
# Original instruction: addiu v54,$fp,-8
addiu $t0,$fp,-8
# Original instruction: addi v53,v54,0
addi $t0,$t0,0
# Original instruction: li v55,0
li $t1,0
# Original instruction: li v56,1
li $t2,1
# Original instruction: mul v55,v55,v56
mul $t1,$t1,$t2
# Original instruction: add v52,v53,v55
add $t0,$t0,$t1
# Original instruction: lb v57,0(v52)
lb $t1,0($t0)
# Original instruction: addiu v58,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sb v57,0(v58)
sb $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v59,label_0_str
la $t1,label_0_str
# Original instruction: addiu v60,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v59,0(v60)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v63,$fp,-8
addiu $t0,$fp,-8
# Original instruction: addi v62,v63,0
addi $t1,$t0,0
# Original instruction: li v64,1
li $t0,1
# Original instruction: li v65,1
li $t2,1
# Original instruction: mul v64,v64,v65
mul $t0,$t0,$t2
# Original instruction: add v61,v62,v64
add $t0,$t1,$t0
# Original instruction: lb v66,0(v61)
lb $t1,0($t0)
# Original instruction: addiu v67,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sb v66,0(v67)
sb $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v68,label_0_str
la $t0,label_0_str
# Original instruction: addiu v69,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v68,0(v69)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v72,$fp,-8
addiu $t0,$fp,-8
# Original instruction: addi v71,v72,0
addi $t1,$t0,0
# Original instruction: li v73,2
li $t0,2
# Original instruction: li v74,1
li $t2,1
# Original instruction: mul v73,v73,v74
mul $t0,$t0,$t2
# Original instruction: add v70,v71,v73
add $t0,$t1,$t0
# Original instruction: lb v75,0(v70)
lb $t0,0($t0)
# Original instruction: addiu v76,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sb v75,0(v76)
sb $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v77,label_0_str
la $t0,label_0_str
# Original instruction: addiu v78,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v77,0(v78)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v80,$fp,-8
addiu $t0,$fp,-8
# Original instruction: addi v79,v80,4
addi $t0,$t0,4
# Original instruction: lw v81,0(v79)
lw $t1,0($t0)
# Original instruction: addiu v82,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v81,0(v82)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v83,$fp,-8
addiu $t1,$fp,-8
# Original instruction: addiu v84,$sp,-8
addiu $t0,$sp,-8
# Original instruction: lb v85,0(v83)
lb $t2,0($t1)
# Original instruction: sb v85,0(v84)
sb $t2,0($t0)
# Original instruction: lb v85,1(v83)
lb $t2,1($t1)
# Original instruction: sb v85,1(v84)
sb $t2,1($t0)
# Original instruction: lb v85,2(v83)
lb $t2,2($t1)
# Original instruction: sb v85,2(v84)
sb $t2,2($t0)
# Original instruction: lb v85,3(v83)
lb $t2,3($t1)
# Original instruction: sb v85,3(v84)
sb $t2,3($t0)
# Original instruction: lb v85,4(v83)
lb $t2,4($t1)
# Original instruction: sb v85,4(v84)
sb $t2,4($t0)
# Original instruction: lb v85,5(v83)
lb $t2,5($t1)
# Original instruction: sb v85,5(v84)
sb $t2,5($t0)
# Original instruction: lb v85,6(v83)
lb $t2,6($t1)
# Original instruction: sb v85,6(v84)
sb $t2,6($t0)
# Original instruction: lb v85,7(v83)
lb $t2,7($t1)
# Original instruction: sb v85,7(v84)
sb $t2,7($t0)
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

