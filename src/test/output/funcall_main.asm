.data
label_0_str:
.asciiz "Factorial of "
.align 2
label_1_str:
.asciiz " is: "
.align 2
# Allocated labels for virtual registers
label_32_v4:
.space 4
label_51_v14:
.space 4
label_25_v2:
.space 4
label_48_v13:
.space 4
label_24_v1:
.space 4
label_46_v12:
.space 4
label_50_v7:
.space 4
label_45_v11:
.space 4
label_35_v6:
.space 4
label_42_v10:
.space 4
label_29_v3:
.space 4
label_55_v16:
.space 4
label_41_v9:
.space 4
label_33_v5:
.space 4
label_38_v8:
.space 4
label_21_v0:
.space 4
label_54_v15:
.space 4
# Allocated labels for virtual registers
label_71_v24:
.space 4
label_58_v18:
.space 4
label_81_v29:
.space 4
label_75_v26:
.space 4
label_86_v31:
.space 4
label_70_v23:
.space 4
label_61_v17:
.space 4
label_64_v20:
.space 4
label_67_v22:
.space 4
label_80_v28:
.space 4
label_74_v25:
.space 4
label_87_v32:
.space 4
label_83_v30:
.space 4
label_77_v27:
.space 4
label_60_v19:
.space 4
label_65_v21:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
factorial:
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
la $t0,label_32_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_25_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_48_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_50_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_45_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_35_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_42_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_55_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_33_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_21_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_54_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v0,$fp,8
addiu $t5,$fp,8
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
# Original instruction: addiu v6,$fp,8
addiu $t5,$fp,8
la $t0,label_35_v6
sw $t5,0($t0)
# Original instruction: lw v7,0(v6)
la $t5,label_35_v6
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_50_v7
sw $t4,0($t0)
# Original instruction: addiu v8,$fp,8
addiu $t5,$fp,8
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
# Original instruction: addi v13,$sp,0
addi $t5,$sp,0
la $t0,label_48_v13
sw $t5,0($t0)
# Original instruction: lw v14,0(v13)
la $t5,label_48_v13
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_51_v14
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: mul v15,v7,v14
la $t5,label_50_v7
lw $t5,0($t5)
la $t4,label_51_v14
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_54_v15
sw $t3,0($t0)
# Original instruction: addi v16,$fp,4
addi $t5,$fp,4
la $t0,label_55_v16
sw $t5,0($t0)
# Original instruction: sw v15,0(v16)
la $t5,label_54_v15
lw $t5,0($t5)
la $t4,label_55_v16
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j factorial_epilogue
j factorial_epilogue
label_4_END:
factorial_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_54_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_21_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_38_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_33_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_41_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_55_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_29_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_42_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_35_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_45_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_50_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_46_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_24_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_48_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_25_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_51_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_32_v4
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
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v17,$fp,-4
addiu $t5,$fp,-4
la $t0,label_61_v17
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: addi v18,$sp,0
addi $t5,$sp,0
la $t0,label_58_v18
sw $t5,0($t0)
# Original instruction: lw v19,0(v18)
la $t5,label_58_v18
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_60_v19
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sw v19,0(v17)
la $t5,label_60_v19
lw $t5,0($t5)
la $t4,label_61_v17
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: la v20,label_0_str
la $t5,label_0_str
la $t0,label_64_v20
sw $t5,0($t0)
# Original instruction: addiu v21,$sp,-4
addiu $t5,$sp,-4
la $t0,label_65_v21
sw $t5,0($t0)
# Original instruction: sw v20,0(v21)
la $t5,label_64_v20
lw $t5,0($t5)
la $t4,label_65_v21
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v22,$fp,-4
addiu $t5,$fp,-4
la $t0,label_67_v22
sw $t5,0($t0)
# Original instruction: lw v23,0(v22)
la $t5,label_67_v22
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_70_v23
sw $t4,0($t0)
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
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v25,label_1_str
la $t5,label_1_str
la $t0,label_74_v25
sw $t5,0($t0)
# Original instruction: addiu v26,$sp,-4
addiu $t5,$sp,-4
la $t0,label_75_v26
sw $t5,0($t0)
# Original instruction: sw v25,0(v26)
la $t5,label_74_v25
lw $t5,0($t5)
la $t4,label_75_v26
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v27,$fp,-4
addiu $t5,$fp,-4
la $t0,label_77_v27
sw $t5,0($t0)
# Original instruction: lw v28,0(v27)
la $t5,label_77_v27
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_80_v28
sw $t4,0($t0)
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
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal factorial
jal factorial
# Original instruction: addi v30,$sp,0
addi $t5,$sp,0
la $t0,label_83_v30
sw $t5,0($t0)
# Original instruction: lw v31,0(v30)
la $t5,label_83_v30
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_86_v31
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: addiu v32,$sp,-4
addiu $t5,$sp,-4
la $t0,label_87_v32
sw $t5,0($t0)
# Original instruction: sw v31,0(v32)
la $t5,label_86_v31
lw $t5,0($t5)
la $t4,label_87_v32
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
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

