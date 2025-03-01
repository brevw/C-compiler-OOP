.data
label_0_str:
.asciiz "Factorial of "
.align 2
label_1_str:
.asciiz " is: "
.align 2
label_2_str:
.asciiz "\n"
.align 2
# Allocated labels for virtual registers
label_79_v24:
.space 4
label_44_v12:
.space 4
label_68_v23:
.space 4
label_45_v11:
.space 4
label_91_v33:
.space 4
label_65_v20:
.space 4
label_100_v37:
.space 4
label_33_v6:
.space 4
label_76_v27:
.space 4
label_50_v15:
.space 4
label_69_v18:
.space 4
label_27_v2:
.space 4
label_72_v25:
.space 4
label_84_v31:
.space 4
label_87_v30:
.space 4
label_36_v7:
.space 4
label_53_v14:
.space 4
label_93_v34:
.space 4
label_97_v36:
.space 4
label_26_v3:
.space 4
label_40_v9:
.space 4
label_66_v22:
.space 4
label_57_v17:
.space 4
label_96_v35:
.space 4
label_63_v21:
.space 4
label_23_v0:
.space 4
label_37_v8:
.space 4
label_52_v16:
.space 4
label_81_v29:
.space 4
label_30_v4:
.space 4
label_47_v13:
.space 4
label_75_v26:
.space 4
label_86_v32:
.space 4
label_22_v1:
.space 4
label_31_v5:
.space 4
label_60_v19:
.space 4
label_101_v38:
.space 4
label_78_v28:
.space 4
label_41_v10:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
.globl main
main:
# Original instruction: addi v0,$fp,-4
addi $t5,$fp,-4
la $t0,label_23_v0
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: lw v1,0($sp)
lw $t5,0($sp)
la $t0,label_22_v1
sw $t5,0($t0)
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: sw v1,0(v0)
la $t5,label_22_v1
lw $t5,0($t5)
la $t4,label_23_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v2,$fp,-8
addi $t5,$fp,-8
la $t0,label_27_v2
sw $t5,0($t0)
# Original instruction: li v3,1
li $t5,1
la $t0,label_26_v3
sw $t5,0($t0)
# Original instruction: sw v3,0(v2)
la $t5,label_26_v3
lw $t5,0($t5)
la $t4,label_27_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: la v4,label_0_str
la $t5,label_0_str
la $t0,label_30_v4
sw $t5,0($t0)
# Original instruction: addiu v5,$sp,-4
addiu $t5,$sp,-4
la $t0,label_31_v5
sw $t5,0($t0)
# Original instruction: sw v4,0(v5)
la $t5,label_30_v4
lw $t5,0($t5)
la $t4,label_31_v5
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: addi v6,$fp,-4
addi $t5,$fp,-4
la $t0,label_33_v6
sw $t5,0($t0)
# Original instruction: lw v7,0(v6)
la $t5,label_33_v6
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_36_v7
sw $t4,0($t0)
# Original instruction: addiu v8,$sp,-4
addiu $t5,$sp,-4
la $t0,label_37_v8
sw $t5,0($t0)
# Original instruction: sw v7,0(v8)
la $t5,label_36_v7
lw $t5,0($t5)
la $t4,label_37_v8
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: la v9,label_1_str
la $t5,label_1_str
la $t0,label_40_v9
sw $t5,0($t0)
# Original instruction: addiu v10,$sp,-4
addiu $t5,$sp,-4
la $t0,label_41_v10
sw $t5,0($t0)
# Original instruction: sw v9,0(v10)
la $t5,label_40_v9
lw $t5,0($t5)
la $t4,label_41_v10
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: addi v11,$fp,-12
addi $t5,$fp,-12
la $t0,label_45_v11
sw $t5,0($t0)
# Original instruction: li v12,1
li $t5,1
la $t0,label_44_v12
sw $t5,0($t0)
# Original instruction: sw v12,0(v11)
la $t5,label_44_v12
lw $t5,0($t5)
la $t4,label_45_v11
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v13,$fp,-12
addi $t5,$fp,-12
la $t0,label_47_v13
sw $t5,0($t0)
# Original instruction: lw v14,0(v13)
la $t5,label_47_v13
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_53_v14
sw $t4,0($t0)
# Original instruction: addi v15,$fp,-4
addi $t5,$fp,-4
la $t0,label_50_v15
sw $t5,0($t0)
# Original instruction: lw v16,0(v15)
la $t5,label_50_v15
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_52_v16
sw $t4,0($t0)
# Original instruction: slt v17,v16,v14
la $t5,label_52_v16
lw $t5,0($t5)
la $t4,label_53_v14
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_57_v17
sw $t3,0($t0)
# Original instruction: xori v17,v17,1
la $t4,label_57_v17
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_57_v17
sw $t4,0($t0)
# Original instruction: beqz v17,label_7_next
la $t5,label_57_v17
lw $t5,0($t5)
beqz $t5,label_7_next
label_9_body:
# Original instruction: addi v18,$fp,-8
addi $t5,$fp,-8
la $t0,label_69_v18
sw $t5,0($t0)
# Original instruction: addi v19,$fp,-8
addi $t5,$fp,-8
la $t0,label_60_v19
sw $t5,0($t0)
# Original instruction: lw v20,0(v19)
la $t5,label_60_v19
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_65_v20
sw $t4,0($t0)
# Original instruction: addi v21,$fp,-12
addi $t5,$fp,-12
la $t0,label_63_v21
sw $t5,0($t0)
# Original instruction: lw v22,0(v21)
la $t5,label_63_v21
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_66_v22
sw $t4,0($t0)
# Original instruction: mul v23,v20,v22
la $t5,label_65_v20
lw $t5,0($t5)
la $t4,label_66_v22
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_68_v23
sw $t3,0($t0)
# Original instruction: sw v23,0(v18)
la $t5,label_68_v23
lw $t5,0($t5)
la $t4,label_69_v18
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v24,$fp,-12
addi $t5,$fp,-12
la $t0,label_79_v24
sw $t5,0($t0)
# Original instruction: addi v25,$fp,-12
addi $t5,$fp,-12
la $t0,label_72_v25
sw $t5,0($t0)
# Original instruction: lw v26,0(v25)
la $t5,label_72_v25
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_75_v26
sw $t4,0($t0)
# Original instruction: li v27,1
li $t5,1
la $t0,label_76_v27
sw $t5,0($t0)
# Original instruction: add v28,v26,v27
la $t5,label_75_v26
lw $t5,0($t5)
la $t4,label_76_v27
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_78_v28
sw $t3,0($t0)
# Original instruction: sw v28,0(v24)
la $t5,label_78_v28
lw $t5,0($t5)
la $t4,label_79_v24
lw $t4,0($t4)
sw $t5,0($t4)
label_8_posttest:
# Original instruction: addi v29,$fp,-12
addi $t5,$fp,-12
la $t0,label_81_v29
sw $t5,0($t0)
# Original instruction: lw v30,0(v29)
la $t5,label_81_v29
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_87_v30
sw $t4,0($t0)
# Original instruction: addi v31,$fp,-4
addi $t5,$fp,-4
la $t0,label_84_v31
sw $t5,0($t0)
# Original instruction: lw v32,0(v31)
la $t5,label_84_v31
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_86_v32
sw $t4,0($t0)
# Original instruction: slt v33,v32,v30
la $t5,label_86_v32
lw $t5,0($t5)
la $t4,label_87_v30
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_91_v33
sw $t3,0($t0)
# Original instruction: xori v33,v33,1
la $t4,label_91_v33
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_91_v33
sw $t4,0($t0)
# Original instruction: bnez v33,label_9_body
la $t5,label_91_v33
lw $t5,0($t5)
bnez $t5,label_9_body
label_7_next:
# Original instruction: addi v34,$fp,-8
addi $t5,$fp,-8
la $t0,label_93_v34
sw $t5,0($t0)
# Original instruction: lw v35,0(v34)
la $t5,label_93_v34
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_96_v35
sw $t4,0($t0)
# Original instruction: addiu v36,$sp,-4
addiu $t5,$sp,-4
la $t0,label_97_v36
sw $t5,0($t0)
# Original instruction: sw v35,0(v36)
la $t5,label_96_v35
lw $t5,0($t5)
la $t4,label_97_v36
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: la v37,label_2_str
la $t5,label_2_str
la $t0,label_100_v37
sw $t5,0($t0)
# Original instruction: addiu v38,$sp,-4
addiu $t5,$sp,-4
la $t0,label_101_v38
sw $t5,0($t0)
# Original instruction: sw v37,0(v38)
la $t5,label_100_v37
lw $t5,0($t5)
la $t4,label_101_v38
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
main_epilogue:
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

.text
.globl print_s
print_s:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
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
.globl print_i
print_i:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
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
.globl print_c
print_c:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
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
.globl read_c
read_c:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
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
.globl read_i
read_i:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
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
.globl mcmalloc
mcmalloc:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: pushRegisters
# Original instruction: lw $a0,4($fp)
lw $a0,4($fp)
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

