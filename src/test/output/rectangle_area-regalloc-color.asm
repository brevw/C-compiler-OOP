.data
label_0_str:
.asciiz "Rectangle Dimensions: "
.align 2
label_1_str:
.asciiz " (width) x "
.align 2
label_2_str:
.asciiz " (height)\n"
.align 2
label_3_str:
.asciiz "Area: "
.align 2
label_4_str:
.asciiz "\n"
.align 2
# Allocated labels for virtual registers

.text
calculate_area:
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
# Original instruction: addiu v1,$fp,8
addiu $t0,$fp,8
# Original instruction: addi v0,v1,4
addi $t0,$t0,4
# Original instruction: lw v2,0(v0)
lw $t1,0($t0)
# Original instruction: addiu v4,$fp,8
addiu $t0,$fp,8
# Original instruction: addi v3,v4,8
addi $t0,$t0,8
# Original instruction: lw v5,0(v3)
lw $t0,0($t0)
# Original instruction: mul v6,v2,v5
mul $t1,$t1,$t0
# Original instruction: addi v7,$fp,4
addi $t0,$fp,4
# Original instruction: sw v6,0(v7)
sw $t1,0($t0)
# Original instruction: j calculate_area_epilogue
j calculate_area_epilogue
calculate_area_epilogue:
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
print_rectangle:
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
# Original instruction: la v8,label_0_str
la $t0,label_0_str
# Original instruction: addiu v9,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v8,0(v9)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v11,$fp,4
addiu $t0,$fp,4
# Original instruction: addi v10,v11,4
addi $t0,$t0,4
# Original instruction: lw v12,0(v10)
lw $t1,0($t0)
# Original instruction: addiu v13,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v12,0(v13)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v14,label_1_str
la $t1,label_1_str
# Original instruction: addiu v15,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v14,0(v15)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v17,$fp,4
addiu $t0,$fp,4
# Original instruction: addi v16,v17,8
addi $t0,$t0,8
# Original instruction: lw v18,0(v16)
lw $t0,0($t0)
# Original instruction: addiu v19,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v18,0(v19)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v20,label_2_str
la $t0,label_2_str
# Original instruction: addiu v21,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v20,0(v21)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v22,label_3_str
la $t0,label_3_str
# Original instruction: addiu v23,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v22,0(v23)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v24,$fp,4
addiu $t0,$fp,4
# Original instruction: addiu v25,$sp,-12
addiu $t1,$sp,-12
# Original instruction: lb v26,0(v24)
lb $t2,0($t0)
# Original instruction: sb v26,0(v25)
sb $t2,0($t1)
# Original instruction: lb v26,1(v24)
lb $t2,1($t0)
# Original instruction: sb v26,1(v25)
sb $t2,1($t1)
# Original instruction: lb v26,2(v24)
lb $t2,2($t0)
# Original instruction: sb v26,2(v25)
sb $t2,2($t1)
# Original instruction: lb v26,3(v24)
lb $t2,3($t0)
# Original instruction: sb v26,3(v25)
sb $t2,3($t1)
# Original instruction: lb v26,4(v24)
lb $t2,4($t0)
# Original instruction: sb v26,4(v25)
sb $t2,4($t1)
# Original instruction: lb v26,5(v24)
lb $t2,5($t0)
# Original instruction: sb v26,5(v25)
sb $t2,5($t1)
# Original instruction: lb v26,6(v24)
lb $t2,6($t0)
# Original instruction: sb v26,6(v25)
sb $t2,6($t1)
# Original instruction: lb v26,7(v24)
lb $t2,7($t0)
# Original instruction: sb v26,7(v25)
sb $t2,7($t1)
# Original instruction: lb v26,8(v24)
lb $t2,8($t0)
# Original instruction: sb v26,8(v25)
sb $t2,8($t1)
# Original instruction: lb v26,9(v24)
lb $t2,9($t0)
# Original instruction: sb v26,9(v25)
sb $t2,9($t1)
# Original instruction: lb v26,10(v24)
lb $t2,10($t0)
# Original instruction: sb v26,10(v25)
sb $t2,10($t1)
# Original instruction: lb v26,11(v24)
lb $t2,11($t0)
# Original instruction: sb v26,11(v25)
sb $t2,11($t1)
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal calculate_area
jal calculate_area
# Original instruction: addi v27,$sp,0
addi $t0,$sp,0
# Original instruction: lw v28,0(v27)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,16
addiu $sp,$sp,16
# Original instruction: addiu v29,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v28,0(v29)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v30,label_4_str
la $t1,label_4_str
# Original instruction: addiu v31,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v30,0(v31)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
print_rectangle_epilogue:
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
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: addiu v33,$fp,-12
addiu $t0,$fp,-12
# Original instruction: addi v32,v33,4
addi $t0,$t0,4
# Original instruction: li v34,5
li $t1,5
# Original instruction: sw v34,0(v32)
sw $t1,0($t0)
# Original instruction: addiu v36,$fp,-12
addiu $t0,$fp,-12
# Original instruction: addi v35,v36,8
addi $t1,$t0,8
# Original instruction: li v37,10
li $t0,10
# Original instruction: sw v37,0(v35)
sw $t0,0($t1)
# Original instruction: addiu v38,$fp,-12
addiu $t0,$fp,-12
# Original instruction: addiu v39,$sp,-12
addiu $t2,$sp,-12
# Original instruction: lb v40,0(v38)
lb $t1,0($t0)
# Original instruction: sb v40,0(v39)
sb $t1,0($t2)
# Original instruction: lb v40,1(v38)
lb $t1,1($t0)
# Original instruction: sb v40,1(v39)
sb $t1,1($t2)
# Original instruction: lb v40,2(v38)
lb $t1,2($t0)
# Original instruction: sb v40,2(v39)
sb $t1,2($t2)
# Original instruction: lb v40,3(v38)
lb $t1,3($t0)
# Original instruction: sb v40,3(v39)
sb $t1,3($t2)
# Original instruction: lb v40,4(v38)
lb $t1,4($t0)
# Original instruction: sb v40,4(v39)
sb $t1,4($t2)
# Original instruction: lb v40,5(v38)
lb $t1,5($t0)
# Original instruction: sb v40,5(v39)
sb $t1,5($t2)
# Original instruction: lb v40,6(v38)
lb $t1,6($t0)
# Original instruction: sb v40,6(v39)
sb $t1,6($t2)
# Original instruction: lb v40,7(v38)
lb $t1,7($t0)
# Original instruction: sb v40,7(v39)
sb $t1,7($t2)
# Original instruction: lb v40,8(v38)
lb $t1,8($t0)
# Original instruction: sb v40,8(v39)
sb $t1,8($t2)
# Original instruction: lb v40,9(v38)
lb $t1,9($t0)
# Original instruction: sb v40,9(v39)
sb $t1,9($t2)
# Original instruction: lb v40,10(v38)
lb $t1,10($t0)
# Original instruction: sb v40,10(v39)
sb $t1,10($t2)
# Original instruction: lb v40,11(v38)
lb $t1,11($t0)
# Original instruction: sb v40,11(v39)
sb $t1,11($t2)
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: jal print_rectangle
jal print_rectangle
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

