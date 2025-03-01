.data
# Allocated labels for virtual registers
label_72_v27:
.space 4
label_48_v15:
.space 4
label_70_v26:
.space 4
label_44_v14:
.space 4
label_90_v36:
.space 4
label_63_v23:
.space 4
label_35_v9:
.space 4
label_78_v30:
.space 4
label_18_v0:
.space 4
label_54_v18:
.space 4
label_60_v21:
.space 4
label_26_v5:
.space 4
label_82_v28:
.space 4
label_87_v34:
.space 4
label_84_v33:
.space 4
label_17_v1:
.space 4
label_36_v10:
.space 4
label_53_v17:
.space 4
label_30_v6:
.space 4
label_40_v12:
.space 4
label_69_v25:
.space 4
label_57_v20:
.space 4
label_66_v24:
.space 4
label_23_v3:
.space 4
label_38_v11:
.space 4
label_64_v19:
.space 4
label_81_v32:
.space 4
label_20_v2:
.space 4
label_29_v7:
.space 4
label_50_v16:
.space 4
label_75_v29:
.space 4
label_88_v35:
.space 4
label_24_v4:
.space 4
label_32_v8:
.space 4
label_61_v22:
.space 4
label_79_v31:
.space 4
label_43_v13:
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
la $t0,label_18_v0
sw $t5,0($t0)
# Original instruction: li v1,0
li $t5,0
la $t0,label_17_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_17_v1
lw $t5,0($t5)
la $t4,label_18_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v2,$fp,-4
addi $t5,$fp,-4
la $t0,label_20_v2
sw $t5,0($t0)
# Original instruction: lw v3,0(v2)
la $t5,label_20_v2
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_23_v3
sw $t4,0($t0)
# Original instruction: li v4,10
li $t5,10
la $t0,label_24_v4
sw $t5,0($t0)
# Original instruction: slt v5,v3,v4
la $t5,label_23_v3
lw $t5,0($t5)
la $t4,label_24_v4
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_26_v5
sw $t3,0($t0)
# Original instruction: beqz v5,label_1_next
la $t5,label_26_v5
lw $t5,0($t5)
beqz $t5,label_1_next
label_3_body:
# Original instruction: addi v6,$fp,-8
addi $t5,$fp,-8
la $t0,label_30_v6
sw $t5,0($t0)
# Original instruction: li v7,0
li $t5,0
la $t0,label_29_v7
sw $t5,0($t0)
# Original instruction: sw v7,0(v6)
la $t5,label_29_v7
lw $t5,0($t5)
la $t4,label_30_v6
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v8,$fp,-8
addi $t5,$fp,-8
la $t0,label_32_v8
sw $t5,0($t0)
# Original instruction: lw v9,0(v8)
la $t5,label_32_v8
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_35_v9
sw $t4,0($t0)
# Original instruction: li v10,10
li $t5,10
la $t0,label_36_v10
sw $t5,0($t0)
# Original instruction: slt v11,v9,v10
la $t5,label_35_v9
lw $t5,0($t5)
la $t4,label_36_v10
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_38_v11
sw $t3,0($t0)
# Original instruction: beqz v11,label_4_next
la $t5,label_38_v11
lw $t5,0($t5)
beqz $t5,label_4_next
label_6_body:
# Original instruction: addi v12,$fp,-8
addi $t5,$fp,-8
la $t0,label_40_v12
sw $t5,0($t0)
# Original instruction: lw v13,0(v12)
la $t5,label_40_v12
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_43_v13
sw $t4,0($t0)
# Original instruction: li v14,5
li $t5,5
la $t0,label_44_v14
sw $t5,0($t0)
# Original instruction: xor v15,v13,v14
la $t5,label_43_v13
lw $t5,0($t5)
la $t4,label_44_v14
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_48_v15
sw $t3,0($t0)
# Original instruction: sltiu v15,v15,1
la $t4,label_48_v15
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_48_v15
sw $t4,0($t0)
# Original instruction: beqz v15,label_8_END
la $t5,label_48_v15
lw $t5,0($t5)
beqz $t5,label_8_END
# Original instruction: j label_4_next
j label_4_next
# Original instruction: j label_8_END
j label_8_END
label_8_END:
# Original instruction: addi v16,$fp,-8
addi $t5,$fp,-8
la $t0,label_50_v16
sw $t5,0($t0)
# Original instruction: lw v17,0(v16)
la $t5,label_50_v16
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_53_v17
sw $t4,0($t0)
# Original instruction: addiu v18,$sp,-4
addiu $t5,$sp,-4
la $t0,label_54_v18
sw $t5,0($t0)
# Original instruction: sw v17,0(v18)
la $t5,label_53_v17
lw $t5,0($t5)
la $t4,label_54_v18
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addi $sp,$sp,4
addi $sp,$sp,4
# Original instruction: addi v19,$fp,-8
addi $t5,$fp,-8
la $t0,label_64_v19
sw $t5,0($t0)
# Original instruction: addi v20,$fp,-8
addi $t5,$fp,-8
la $t0,label_57_v20
sw $t5,0($t0)
# Original instruction: lw v21,0(v20)
la $t5,label_57_v20
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_60_v21
sw $t4,0($t0)
# Original instruction: li v22,1
li $t5,1
la $t0,label_61_v22
sw $t5,0($t0)
# Original instruction: add v23,v21,v22
la $t5,label_60_v21
lw $t5,0($t5)
la $t4,label_61_v22
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_63_v23
sw $t3,0($t0)
# Original instruction: sw v23,0(v19)
la $t5,label_63_v23
lw $t5,0($t5)
la $t4,label_64_v19
lw $t4,0($t4)
sw $t5,0($t4)
label_5_posttest:
# Original instruction: addi v24,$fp,-8
addi $t5,$fp,-8
la $t0,label_66_v24
sw $t5,0($t0)
# Original instruction: lw v25,0(v24)
la $t5,label_66_v24
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_69_v25
sw $t4,0($t0)
# Original instruction: li v26,10
li $t5,10
la $t0,label_70_v26
sw $t5,0($t0)
# Original instruction: slt v27,v25,v26
la $t5,label_69_v25
lw $t5,0($t5)
la $t4,label_70_v26
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_72_v27
sw $t3,0($t0)
# Original instruction: bnez v27,label_6_body
la $t5,label_72_v27
lw $t5,0($t5)
bnez $t5,label_6_body
label_4_next:
# Original instruction: addi v28,$fp,-4
addi $t5,$fp,-4
la $t0,label_82_v28
sw $t5,0($t0)
# Original instruction: addi v29,$fp,-4
addi $t5,$fp,-4
la $t0,label_75_v29
sw $t5,0($t0)
# Original instruction: lw v30,0(v29)
la $t5,label_75_v29
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_78_v30
sw $t4,0($t0)
# Original instruction: li v31,1
li $t5,1
la $t0,label_79_v31
sw $t5,0($t0)
# Original instruction: add v32,v30,v31
la $t5,label_78_v30
lw $t5,0($t5)
la $t4,label_79_v31
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_81_v32
sw $t3,0($t0)
# Original instruction: sw v32,0(v28)
la $t5,label_81_v32
lw $t5,0($t5)
la $t4,label_82_v28
lw $t4,0($t4)
sw $t5,0($t4)
label_2_posttest:
# Original instruction: addi v33,$fp,-4
addi $t5,$fp,-4
la $t0,label_84_v33
sw $t5,0($t0)
# Original instruction: lw v34,0(v33)
la $t5,label_84_v33
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_87_v34
sw $t4,0($t0)
# Original instruction: li v35,10
li $t5,10
la $t0,label_88_v35
sw $t5,0($t0)
# Original instruction: slt v36,v34,v35
la $t5,label_87_v34
lw $t5,0($t5)
la $t4,label_88_v35
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_90_v36
sw $t3,0($t0)
# Original instruction: bnez v36,label_3_body
la $t5,label_90_v36
lw $t5,0($t5)
bnez $t5,label_3_body
label_1_next:
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
# Original instruction: popRegisters
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

