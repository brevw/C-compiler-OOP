.data
# Allocated labels for virtual registers
label_29_v6:
.space 4
label_20_v3:
.space 4
label_37_v11:
.space 4
label_36_v10:
.space 4
label_18_v2:
.space 4
label_25_v5:
.space 4
label_23_v0:
.space 4
label_22_v4:
.space 4
label_31_v8:
.space 4
label_17_v1:
.space 4
label_33_v9:
.space 4
label_28_v7:
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
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v0,$fp,-4
addiu $t5,$fp,-4
la $t0,label_23_v0
sw $t5,0($t0)
# Original instruction: li v1,4
li $t5,4
la $t0,label_17_v1
sw $t5,0($t0)
# Original instruction: addiu v2,$sp,-4
addiu $t5,$sp,-4
la $t0,label_18_v2
sw $t5,0($t0)
# Original instruction: sw v1,0(v2)
la $t5,label_17_v1
lw $t5,0($t5)
la $t4,label_18_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal mcmalloc
jal mcmalloc
# Original instruction: addi v3,$sp,0
addi $t5,$sp,0
la $t0,label_20_v3
sw $t5,0($t0)
# Original instruction: lw v4,0(v3)
la $t5,label_20_v3
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_22_v4
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sw v4,0(v0)
la $t5,label_22_v4
lw $t5,0($t5)
la $t4,label_23_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v5,$fp,-4
addiu $t5,$fp,-4
la $t0,label_25_v5
sw $t5,0($t0)
# Original instruction: lw v6,0(v5)
la $t5,label_25_v5
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_29_v6
sw $t4,0($t0)
# Original instruction: li v7,2
li $t5,2
la $t0,label_28_v7
sw $t5,0($t0)
# Original instruction: sw v7,0(v6)
la $t5,label_28_v7
lw $t5,0($t5)
la $t4,label_29_v6
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v8,$fp,-4
addiu $t5,$fp,-4
la $t0,label_31_v8
sw $t5,0($t0)
# Original instruction: lw v9,0(v8)
la $t5,label_31_v8
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_33_v9
sw $t4,0($t0)
# Original instruction: lw v10,0(v9)
la $t5,label_33_v9
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_36_v10
sw $t4,0($t0)
# Original instruction: addiu v11,$sp,-4
addiu $t5,$sp,-4
la $t0,label_37_v11
sw $t5,0($t0)
# Original instruction: sw v10,0(v11)
la $t5,label_36_v10
lw $t5,0($t5)
la $t4,label_37_v11
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

