.data
label_0_str:
.asciiz "Factorial of "
.align 2
label_1_str:
.asciiz " is: "
.align 2
# Allocated labels for virtual registers
label_29_v3:
.space 4
label_42_v10:
.space 4
label_38_v8:
.space 4
label_48_v7:
.space 4
label_33_v5:
.space 4
label_49_v13:
.space 4
label_32_v4:
.space 4
label_46_v12:
.space 4
label_21_v0:
.space 4
label_41_v9:
.space 4
label_25_v2:
.space 4
label_24_v1:
.space 4
label_53_v15:
.space 4
label_45_v11:
.space 4
label_52_v14:
.space 4
label_35_v6:
.space 4
# Allocated labels for virtual registers
label_71_v24:
.space 4
label_67_v22:
.space 4
label_81_v29:
.space 4
label_57_v16:
.space 4
label_60_v18:
.space 4
label_70_v23:
.space 4
label_76_v26:
.space 4
label_66_v21:
.space 4
label_63_v20:
.space 4
label_80_v28:
.space 4
label_61_v19:
.space 4
label_56_v17:
.space 4
label_73_v25:
.space 4
label_77_v27:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
factorial:
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addi $sp,$sp,-4
addi $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: pushRegisters
la $t0,label_29_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_42_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_48_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_33_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_21_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_25_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_53_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_45_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_52_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_35_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v0,$fp,8
addi $t5,$fp,8
la $t0,label_21_v0
sw $t5,0($t0)
# Original instruction: lw v1,0(v0)
la $t5,label_21_v0
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_24_v1
sw $t4,0($t0)
# Original instruction: li v2,0
li $t5,0
la $t0,label_25_v2
sw $t5,0($t0)
# Original instruction: xor v3,v1,v2
la $t5,label_24_v1
lw $t5,0($t5)
la $t4,label_25_v2
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_29_v3
sw $t3,0($t0)
# Original instruction: sltiu v3,v3,1
la $t4,label_29_v3
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_29_v3
sw $t4,0($t0)
# Original instruction: beqz v3,label_3_ELSE
la $t5,label_29_v3
lw $t5,0($t5)
beqz $t5,label_3_ELSE
# Original instruction: li v4,1
li $t5,1
la $t0,label_32_v4
sw $t5,0($t0)
# Original instruction: addi v5,$fp,4
addi $t5,$fp,4
la $t0,label_33_v5
sw $t5,0($t0)
# Original instruction: sw v4,0(v5)
la $t5,label_32_v4
lw $t5,0($t5)
la $t4,label_33_v5
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j factorial_epilogue
j factorial_epilogue
# Original instruction: j label_4_END
j label_4_END
label_3_ELSE:
# Original instruction: addi v6,$fp,8
addi $t5,$fp,8
la $t0,label_35_v6
sw $t5,0($t0)
# Original instruction: lw v7,0(v6)
la $t5,label_35_v6
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_48_v7
sw $t4,0($t0)
# Original instruction: addi v8,$fp,8
addi $t5,$fp,8
la $t0,label_38_v8
sw $t5,0($t0)
# Original instruction: lw v9,0(v8)
la $t5,label_38_v8
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_41_v9
sw $t4,0($t0)
# Original instruction: li v10,1
li $t5,1
la $t0,label_42_v10
sw $t5,0($t0)
# Original instruction: sub v11,v9,v10
la $t5,label_41_v9
lw $t5,0($t5)
la $t4,label_42_v10
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_45_v11
sw $t3,0($t0)
# Original instruction: addiu v12,$sp,-4
addiu $t5,$sp,-4
la $t0,label_46_v12
sw $t5,0($t0)
# Original instruction: sw v11,0(v12)
la $t5,label_45_v11
lw $t5,0($t5)
la $t4,label_46_v12
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal factorial
jal factorial
# Original instruction: lw v13,0($sp)
lw $t5,0($sp)
la $t0,label_49_v13
sw $t5,0($t0)
# Original instruction: addi $sp,$sp,8
addi $sp,$sp,8
# Original instruction: mul v14,v7,v13
la $t5,label_48_v7
lw $t5,0($t5)
la $t4,label_49_v13
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_52_v14
sw $t3,0($t0)
# Original instruction: addi v15,$fp,4
addi $t5,$fp,4
la $t0,label_53_v15
sw $t5,0($t0)
# Original instruction: sw v14,0(v15)
la $t5,label_52_v14
lw $t5,0($t5)
la $t4,label_53_v15
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j factorial_epilogue
j factorial_epilogue
label_4_END:
factorial_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_35_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_52_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_45_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_53_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_24_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_25_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_41_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_21_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_46_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_32_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_49_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_33_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_48_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_38_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_42_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_29_v3
sw $t0,0($t1)
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
# Original instruction: addi v16,$fp,-4
addi $t5,$fp,-4
la $t0,label_57_v16
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: lw v17,0($sp)
lw $t5,0($sp)
la $t0,label_56_v17
sw $t5,0($t0)
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: sw v17,0(v16)
la $t5,label_56_v17
lw $t5,0($t5)
la $t4,label_57_v16
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: la v18,label_0_str
la $t5,label_0_str
la $t0,label_60_v18
sw $t5,0($t0)
# Original instruction: addiu v19,$sp,-4
addiu $t5,$sp,-4
la $t0,label_61_v19
sw $t5,0($t0)
# Original instruction: sw v18,0(v19)
la $t5,label_60_v18
lw $t5,0($t5)
la $t4,label_61_v19
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: addi v20,$fp,-4
addi $t5,$fp,-4
la $t0,label_63_v20
sw $t5,0($t0)
# Original instruction: lw v21,0(v20)
la $t5,label_63_v20
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_66_v21
sw $t4,0($t0)
# Original instruction: addiu v22,$sp,-4
addiu $t5,$sp,-4
la $t0,label_67_v22
sw $t5,0($t0)
# Original instruction: sw v21,0(v22)
la $t5,label_66_v21
lw $t5,0($t5)
la $t4,label_67_v22
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: la v23,label_1_str
la $t5,label_1_str
la $t0,label_70_v23
sw $t5,0($t0)
# Original instruction: addiu v24,$sp,-4
addiu $t5,$sp,-4
la $t0,label_71_v24
sw $t5,0($t0)
# Original instruction: sw v23,0(v24)
la $t5,label_70_v23
lw $t5,0($t5)
la $t4,label_71_v24
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: addi v25,$fp,-4
addi $t5,$fp,-4
la $t0,label_73_v25
sw $t5,0($t0)
# Original instruction: lw v26,0(v25)
la $t5,label_73_v25
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_76_v26
sw $t4,0($t0)
# Original instruction: addiu v27,$sp,-4
addiu $t5,$sp,-4
la $t0,label_77_v27
sw $t5,0($t0)
# Original instruction: sw v26,0(v27)
la $t5,label_76_v26
lw $t5,0($t5)
la $t4,label_77_v27
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal factorial
jal factorial
# Original instruction: lw v28,0($sp)
lw $t5,0($sp)
la $t0,label_80_v28
sw $t5,0($t0)
# Original instruction: addi $sp,$sp,8
addi $sp,$sp,8
# Original instruction: addiu v29,$sp,-4
addiu $t5,$sp,-4
la $t0,label_81_v29
sw $t5,0($t0)
# Original instruction: sw v28,0(v29)
la $t5,label_80_v28
lw $t5,0($t5)
la $t4,label_81_v29
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
main_epilogue:
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

.text
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

