.data
n:
.space 4
.align 2
label_1_str:
.asciiz "Prime\n"
.align 2
label_2_str:
.asciiz "Not Prime\n"
.align 2
# Allocated labels for virtual registers

.text
is_prime:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addi $fp,$sp,0
addi $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v0,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v1,0(v0)
lw $t0,0($t0)
# Original instruction: li v2,2
li $t1,2
# Original instruction: slt v3,v1,v2
slt $t0,$t0,$t1
# Original instruction: beqz v3,label_4_END
beqz $t0,label_4_END
# Original instruction: li v4,0
li $t1,0
# Original instruction: addi v5,$fp,4
addi $t0,$fp,4
# Original instruction: sw v4,0(v5)
sw $t1,0($t0)
# Original instruction: j is_prime_epilogue
j is_prime_epilogue
label_4_END:
# Original instruction: addiu v6,$fp,-4
addiu $t1,$fp,-4
# Original instruction: li v7,2
li $t0,2
# Original instruction: sw v7,0(v6)
sw $t0,0($t1)
# Original instruction: addiu v8,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v9,0(v8)
lw $t2,0($t0)
# Original instruction: addiu v10,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v11,0(v10)
lw $t0,0($t0)
# Original instruction: li v12,2
li $t1,2
# Original instruction: div v11,v12
div $t0,$t1
# Original instruction: mflo v13
mflo $t0
# Original instruction: slt v14,v13,v9
slt $t0,$t0,$t2
# Original instruction: xori v14,v14,1
xori $t0,$t0,1
# Original instruction: beqz v14,label_6_next
beqz $t0,label_6_next
label_8_body:
# Original instruction: addiu v15,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v16,0(v15)
lw $t1,0($t0)
# Original instruction: addiu v17,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v18,0(v17)
lw $t0,0($t0)
# Original instruction: div v16,v18
div $t1,$t0
# Original instruction: mfhi v19
mfhi $t1
# Original instruction: li v20,0
li $t0,0
# Original instruction: xor v21,v19,v20
xor $t0,$t1,$t0
# Original instruction: sltiu v21,v21,1
sltiu $t0,$t0,1
# Original instruction: beqz v21,label_9_END
beqz $t0,label_9_END
# Original instruction: li v22,0
li $t0,0
# Original instruction: addi v23,$fp,4
addi $t1,$fp,4
# Original instruction: sw v22,0(v23)
sw $t0,0($t1)
# Original instruction: j is_prime_epilogue
j is_prime_epilogue
label_9_END:
# Original instruction: addiu v24,$fp,-4
addiu $t2,$fp,-4
# Original instruction: addiu v25,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v26,0(v25)
lw $t1,0($t0)
# Original instruction: li v27,1
li $t0,1
# Original instruction: add v28,v26,v27
add $t0,$t1,$t0
# Original instruction: sw v28,0(v24)
sw $t0,0($t2)
label_7_posttest:
# Original instruction: addiu v29,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v30,0(v29)
lw $t2,0($t0)
# Original instruction: addiu v31,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v32,0(v31)
lw $t1,0($t0)
# Original instruction: li v33,2
li $t0,2
# Original instruction: div v32,v33
div $t1,$t0
# Original instruction: mflo v34
mflo $t0
# Original instruction: slt v35,v34,v30
slt $t0,$t0,$t2
# Original instruction: xori v35,v35,1
xori $t0,$t0,1
# Original instruction: bnez v35,label_8_body
bnez $t0,label_8_body
label_6_next:
# Original instruction: li v36,1
li $t1,1
# Original instruction: addi v37,$fp,4
addi $t0,$fp,4
# Original instruction: sw v36,0(v37)
sw $t1,0($t0)
# Original instruction: j is_prime_epilogue
j is_prime_epilogue
is_prime_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
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
# Original instruction: la v38,n
la $t1,n
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal read_i
jal read_i
# Original instruction: addi v39,$sp,0
addi $t0,$sp,0
# Original instruction: lw v40,0(v39)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sw v40,0(v38)
sw $t0,0($t1)
# Original instruction: addiu v41,$fp,-4
addiu $t2,$fp,-4
# Original instruction: la v42,n
la $t0,n
# Original instruction: lw v43,0(v42)
lw $t1,0($t0)
# Original instruction: addiu v44,$sp,-4
addiu $t0,$sp,-4
# Original instruction: sw v43,0(v44)
sw $t1,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal is_prime
jal is_prime
# Original instruction: addi v45,$sp,0
addi $t0,$sp,0
# Original instruction: lw v46,0(v45)
lw $t0,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sw v46,0(v41)
sw $t0,0($t2)
# Original instruction: addiu v47,$fp,-4
addiu $t0,$fp,-4
# Original instruction: lw v48,0(v47)
lw $t0,0($t0)
# Original instruction: li v49,1
li $t1,1
# Original instruction: xor v50,v48,v49
xor $t0,$t0,$t1
# Original instruction: sltiu v50,v50,1
sltiu $t0,$t0,1
# Original instruction: beqz v50,label_12_ELSE
beqz $t0,label_12_ELSE
# Original instruction: la v51,label_1_str
la $t0,label_1_str
# Original instruction: addiu v52,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v51,0(v52)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: j label_13_END
j label_13_END
label_12_ELSE:
# Original instruction: la v53,label_2_str
la $t0,label_2_str
# Original instruction: addiu v54,$sp,-4
addiu $t1,$sp,-4
# Original instruction: sw v53,0(v54)
sw $t0,0($t1)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
label_13_END:
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

