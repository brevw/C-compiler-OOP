.data
label_0_str:
.asciiz "Person\'s age: "
.align 2
label_1_str:
.asciiz "\n"
.align 2
label_2_str:
.asciiz "Person\'s height: "
.align 2
label_3_str:
.asciiz " cm\n"
.align 2
# Allocated labels for virtual registers
label_23_v0:
.space 4
label_48_v14:
.space 4
label_40_v10:
.space 4
label_28_v5:
.space 4
label_33_v7:
.space 4
label_60_v20:
.space 4
label_29_v3:
.space 4
label_49_v15:
.space 4
label_32_v6:
.space 4
label_41_v11:
.space 4
label_51_v17:
.space 4
label_19_v1:
.space 4
label_56_v18:
.space 4
label_53_v16:
.space 4
label_61_v21:
.space 4
label_25_v4:
.space 4
label_35_v9:
.space 4
label_37_v8:
.space 4
label_57_v19:
.space 4
label_45_v13:
.space 4
label_22_v2:
.space 4
label_44_v12:
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
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addiu v1,$fp,-8
addiu $t5,$fp,-8
la $t0,label_19_v1
sw $t5,0($t0)
# Original instruction: addi v0,v1,0
la $t5,label_19_v1
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_23_v0
sw $t4,0($t0)
# Original instruction: li v2,25
li $t5,25
la $t0,label_22_v2
sw $t5,0($t0)
# Original instruction: sw v2,0(v0)
la $t5,label_22_v2
lw $t5,0($t5)
la $t4,label_23_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v4,$fp,-8
addiu $t5,$fp,-8
la $t0,label_25_v4
sw $t5,0($t0)
# Original instruction: addi v3,v4,4
la $t5,label_25_v4
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_29_v3
sw $t4,0($t0)
# Original instruction: li v5,175
li $t5,175
la $t0,label_28_v5
sw $t5,0($t0)
# Original instruction: sw v5,0(v3)
la $t5,label_28_v5
lw $t5,0($t5)
la $t4,label_29_v3
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: la v6,label_0_str
la $t5,label_0_str
la $t0,label_32_v6
sw $t5,0($t0)
# Original instruction: addiu v7,$sp,-4
addiu $t5,$sp,-4
la $t0,label_33_v7
sw $t5,0($t0)
# Original instruction: sw v6,0(v7)
la $t5,label_32_v6
lw $t5,0($t5)
la $t4,label_33_v7
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v9,$fp,-8
addiu $t5,$fp,-8
la $t0,label_35_v9
sw $t5,0($t0)
# Original instruction: addi v8,v9,0
la $t5,label_35_v9
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_37_v8
sw $t4,0($t0)
# Original instruction: lw v10,0(v8)
la $t5,label_37_v8
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_40_v10
sw $t4,0($t0)
# Original instruction: addiu v11,$sp,-4
addiu $t5,$sp,-4
la $t0,label_41_v11
sw $t5,0($t0)
# Original instruction: sw v10,0(v11)
la $t5,label_40_v10
lw $t5,0($t5)
la $t4,label_41_v11
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v12,label_1_str
la $t5,label_1_str
la $t0,label_44_v12
sw $t5,0($t0)
# Original instruction: addiu v13,$sp,-4
addiu $t5,$sp,-4
la $t0,label_45_v13
sw $t5,0($t0)
# Original instruction: sw v12,0(v13)
la $t5,label_44_v12
lw $t5,0($t5)
la $t4,label_45_v13
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v14,label_2_str
la $t5,label_2_str
la $t0,label_48_v14
sw $t5,0($t0)
# Original instruction: addiu v15,$sp,-4
addiu $t5,$sp,-4
la $t0,label_49_v15
sw $t5,0($t0)
# Original instruction: sw v14,0(v15)
la $t5,label_48_v14
lw $t5,0($t5)
la $t4,label_49_v15
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v17,$fp,-8
addiu $t5,$fp,-8
la $t0,label_51_v17
sw $t5,0($t0)
# Original instruction: addi v16,v17,4
la $t5,label_51_v17
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_53_v16
sw $t4,0($t0)
# Original instruction: lw v18,0(v16)
la $t5,label_53_v16
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_56_v18
sw $t4,0($t0)
# Original instruction: addiu v19,$sp,-4
addiu $t5,$sp,-4
la $t0,label_57_v19
sw $t5,0($t0)
# Original instruction: sw v18,0(v19)
la $t5,label_56_v18
lw $t5,0($t5)
la $t4,label_57_v19
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v20,label_3_str
la $t5,label_3_str
la $t0,label_60_v20
sw $t5,0($t0)
# Original instruction: addiu v21,$sp,-4
addiu $t5,$sp,-4
la $t0,label_61_v21
sw $t5,0($t0)
# Original instruction: sw v20,0(v21)
la $t5,label_60_v20
lw $t5,0($t5)
la $t4,label_61_v21
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
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

