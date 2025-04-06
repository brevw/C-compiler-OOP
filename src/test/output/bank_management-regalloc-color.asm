.data
label_0_str:
.asciiz "Checked out: "
.align 2
label_1_str:
.asciiz "Book not available: "
.align 2
label_2_str:
.asciiz "Returned: "
.align 2
label_3_str:
.asciiz "\nID: "
.align 2
label_4_str:
.asciiz "\nTitle: "
.align 2
label_5_str:
.asciiz "\nAuthor: "
.align 2
label_6_str:
.asciiz "\nYear: "
.align 2
label_7_str:
.asciiz "\nStatus: "
.align 2
label_8_str:
.asciiz "Available"
.align 2
label_9_str:
.asciiz "Checked Out"
.align 2
label_10_str:
.asciiz "1984"
.align 2
label_11_str:
.asciiz "George Orwell"
.align 2
label_12_str:
.asciiz "The Great Gatsby"
.align 2
label_13_str:
.asciiz "F. Scott Fitzgerald"
.align 2
label_14_str:
.asciiz "Pride and Prejudice"
.align 2
label_15_str:
.asciiz "Jane Austen"
.align 2

.text
initialize_book:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t3,0($sp)
addiu $t0,$fp,20
lw $t0,0($t0)
addi $t0,$t0,0
addiu $t1,$fp,16
lw $t1,0($t1)
sw $t1,0($t0)
addiu $t0,$fp,20
lw $t0,0($t0)
addi $t1,$t0,92
addiu $t0,$fp,4
lw $t0,0($t0)
sw $t0,0($t1)
addiu $t0,$fp,20
lw $t0,0($t0)
addi $t0,$t0,96
li $t1,1
sw $t1,0($t0)
li $t0,0
addi $t0,$t0,0
li $t1,30
slt $t1,$t0,$t1
beq $t1,$zero,label_20_
addiu $t1,$fp,12
lw $t1,0($t1)
li $t2,1
mul $t2,$t0,$t2
add $t2,$t2,$t1
lb $t2,0($t2)
li $t1,0
xor $t1,$t2,$t1
sltu $t1,$zero,$t1
beq $t1,$zero,label_20_
li $t1,1
j label_21_
label_20_:
li $t1,0
label_21_:
beqz $t1,label_17_next
label_19_body:
addiu $t1,$fp,20
lw $t1,0($t1)
addi $t1,$t1,30
li $t2,1
mul $t2,$t0,$t2
add $t2,$t2,$t1
addiu $t1,$fp,12
lw $t3,0($t1)
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t3
lb $t1,0($t1)
sb $t1,0($t2)
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_18_posttest:
li $t1,30
slt $t1,$t0,$t1
beq $t1,$zero,label_22_
addiu $t1,$fp,12
lw $t2,0($t1)
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t2
lb $t2,0($t1)
li $t1,0
xor $t1,$t2,$t1
sltu $t1,$zero,$t1
beq $t1,$zero,label_22_
li $t1,1
j label_23_
label_22_:
li $t1,0
label_23_:
bnez $t1,label_19_body
label_17_next:
addiu $t1,$fp,20
lw $t1,0($t1)
addi $t1,$t1,30
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,0
sb $t1,0($t0)
li $t0,0
addi $t0,$t0,0
li $t1,30
slt $t1,$t0,$t1
beq $t1,$zero,label_27_
addiu $t1,$fp,8
lw $t1,0($t1)
li $t2,1
mul $t2,$t0,$t2
add $t2,$t2,$t1
lb $t1,0($t2)
li $t2,0
xor $t1,$t1,$t2
sltu $t1,$zero,$t1
beq $t1,$zero,label_27_
li $t1,1
j label_28_
label_27_:
li $t1,0
label_28_:
beqz $t1,label_24_next
label_26_body:
addiu $t1,$fp,20
lw $t1,0($t1)
addi $t2,$t1,60
li $t1,1
mul $t3,$t0,$t1
add $t3,$t3,$t2
addiu $t1,$fp,8
lw $t2,0($t1)
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t2
lb $t1,0($t1)
sb $t1,0($t3)
li $t1,1
add $t0,$t0,$t1
addi $t0,$t0,0
label_25_posttest:
li $t1,30
slt $t1,$t0,$t1
beq $t1,$zero,label_29_
addiu $t1,$fp,8
lw $t2,0($t1)
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t2
lb $t1,0($t1)
li $t2,0
xor $t1,$t1,$t2
sltu $t1,$zero,$t1
beq $t1,$zero,label_29_
li $t1,1
j label_30_
label_29_:
li $t1,0
label_30_:
bnez $t1,label_26_body
label_24_next:
addiu $t1,$fp,20
lw $t1,0($t1)
addi $t2,$t1,60
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,0
sb $t0,0($t1)
initialize_book_epilogue:
# Original instruction: popRegisters
lw $t3,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
checkout_book:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $t0,$fp,4
lw $t0,0($t0)
addi $t0,$t0,96
lw $t1,0($t0)
li $t0,1
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_33_ELSE
addiu $t0,$fp,4
lw $t0,0($t0)
addi $t0,$t0,96
li $t1,0
sw $t1,0($t0)
la $t0,label_0_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
lw $t0,0($t0)
addi $t0,$t0,30
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,10
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
j label_34_END
label_33_ELSE:
la $t0,label_1_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
lw $t0,0($t0)
addi $t1,$t0,30
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t1,10
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
label_34_END:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
return_book:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $t0,$fp,4
lw $t0,0($t0)
addi $t0,$t0,96
li $t1,1
sw $t1,0($t0)
la $t1,label_2_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
lw $t0,0($t0)
addi $t0,$t0,30
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,10
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
return_book_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
print_book:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_3_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
lw $t0,0($t0)
addi $t0,$t0,0
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_4_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
lw $t0,0($t0)
addi $t1,$t0,30
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,label_5_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
lw $t0,0($t0)
addi $t0,$t0,60
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t1,label_6_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
lw $t0,0($t0)
addi $t0,$t0,92
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t1,label_7_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
lw $t0,0($t0)
addi $t0,$t0,96
lw $t1,0($t0)
li $t0,1
xor $t0,$t1,$t0
sltiu $t0,$t0,1
beqz $t0,label_42_ELSE
la $t1,label_8_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
j label_43_END
label_42_ELSE:
la $t0,label_9_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_43_END:
li $t1,10
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
print_book_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-632
addiu $t1,$fp,-532
li $t0,0
li $t2,1
mul $t2,$t0,$t2
add $t2,$t2,$t1
li $t0,77
sb $t0,0($t2)
addiu $t0,$fp,-532
li $t2,1
li $t1,1
mul $t1,$t2,$t1
add $t1,$t1,$t0
li $t0,111
sb $t0,0($t1)
addiu $t2,$fp,-532
li $t0,2
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,98
sb $t0,0($t1)
addiu $t1,$fp,-532
li $t0,3
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,121
sb $t1,0($t0)
addiu $t2,$fp,-532
li $t1,4
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,32
sb $t0,0($t1)
addiu $t0,$fp,-532
li $t1,5
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,68
sb $t0,0($t1)
addiu $t1,$fp,-532
li $t0,6
li $t2,1
mul $t2,$t0,$t2
add $t2,$t2,$t1
li $t0,105
sb $t0,0($t2)
addiu $t1,$fp,-532
li $t2,7
li $t0,1
mul $t0,$t2,$t0
add $t0,$t0,$t1
li $t1,99
sb $t1,0($t0)
addiu $t2,$fp,-532
li $t1,8
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,107
sb $t1,0($t0)
addiu $t1,$fp,-532
li $t0,9
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,0
sb $t1,0($t0)
addiu $t1,$fp,-564
li $t0,0
li $t2,1
mul $t2,$t0,$t2
add $t2,$t2,$t1
li $t0,72
sb $t0,0($t2)
addiu $t0,$fp,-564
li $t1,1
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,101
sb $t0,0($t1)
addiu $t2,$fp,-564
li $t0,2
li $t1,1
mul $t0,$t0,$t1
add $t0,$t0,$t2
li $t1,114
sb $t1,0($t0)
addiu $t1,$fp,-564
li $t2,3
li $t0,1
mul $t0,$t2,$t0
add $t0,$t0,$t1
li $t1,109
sb $t1,0($t0)
addiu $t1,$fp,-564
li $t0,4
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,97
sb $t1,0($t0)
addiu $t2,$fp,-564
li $t1,5
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,110
sb $t0,0($t1)
addiu $t2,$fp,-564
li $t1,6
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,32
sb $t0,0($t1)
addiu $t2,$fp,-564
li $t1,7
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,77
sb $t0,0($t1)
addiu $t0,$fp,-564
li $t2,8
li $t1,1
mul $t1,$t2,$t1
add $t1,$t1,$t0
li $t0,101
sb $t0,0($t1)
addiu $t1,$fp,-564
li $t2,9
li $t0,1
mul $t0,$t2,$t0
add $t0,$t0,$t1
li $t1,108
sb $t1,0($t0)
addiu $t1,$fp,-564
li $t0,10
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,118
sb $t1,0($t0)
addiu $t2,$fp,-564
li $t1,11
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,105
sb $t0,0($t1)
addiu $t2,$fp,-564
li $t0,12
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,108
sb $t0,0($t1)
addiu $t0,$fp,-564
li $t2,13
li $t1,1
mul $t1,$t2,$t1
add $t1,$t1,$t0
li $t0,108
sb $t0,0($t1)
addiu $t0,$fp,-564
li $t2,14
li $t1,1
mul $t1,$t2,$t1
add $t1,$t1,$t0
li $t0,101
sb $t0,0($t1)
addiu $t1,$fp,-564
li $t2,15
li $t0,1
mul $t0,$t2,$t0
add $t0,$t0,$t1
li $t1,0
sb $t1,0($t0)
addiu $t1,$fp,-596
li $t2,0
li $t0,1
mul $t2,$t2,$t0
add $t2,$t2,$t1
li $t0,87
sb $t0,0($t2)
addiu $t2,$fp,-596
li $t1,1
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,97
sb $t0,0($t1)
addiu $t0,$fp,-596
li $t1,2
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,114
sb $t0,0($t1)
addiu $t0,$fp,-596
li $t1,3
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,32
sb $t0,0($t1)
addiu $t2,$fp,-596
li $t1,4
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,97
sb $t1,0($t0)
addiu $t1,$fp,-596
li $t2,5
li $t0,1
mul $t2,$t2,$t0
add $t2,$t2,$t1
li $t0,110
sb $t0,0($t2)
addiu $t0,$fp,-596
li $t1,6
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,100
sb $t0,0($t1)
addiu $t0,$fp,-596
li $t1,7
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,32
sb $t0,0($t1)
addiu $t2,$fp,-596
li $t1,8
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,80
sb $t0,0($t1)
addiu $t1,$fp,-596
li $t2,9
li $t0,1
mul $t0,$t2,$t0
add $t0,$t0,$t1
li $t1,101
sb $t1,0($t0)
addiu $t1,$fp,-596
li $t0,10
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,97
sb $t1,0($t0)
addiu $t1,$fp,-596
li $t0,11
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,99
sb $t1,0($t0)
addiu $t1,$fp,-596
li $t0,12
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,101
sb $t1,0($t0)
addiu $t2,$fp,-596
li $t0,13
li $t1,1
mul $t0,$t0,$t1
add $t0,$t0,$t2
li $t1,0
sb $t1,0($t0)
addiu $t2,$fp,-628
li $t1,0
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,76
sb $t0,0($t1)
addiu $t2,$fp,-628
li $t1,1
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,101
sb $t1,0($t0)
addiu $t1,$fp,-628
li $t2,2
li $t0,1
mul $t0,$t2,$t0
add $t0,$t0,$t1
li $t1,111
sb $t1,0($t0)
addiu $t1,$fp,-628
li $t0,3
li $t2,1
mul $t2,$t0,$t2
add $t2,$t2,$t1
li $t0,32
sb $t0,0($t2)
addiu $t1,$fp,-628
li $t0,4
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,84
sb $t1,0($t0)
addiu $t2,$fp,-628
li $t1,5
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,111
sb $t1,0($t0)
addiu $t2,$fp,-628
li $t0,6
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,108
sb $t0,0($t1)
addiu $t1,$fp,-628
li $t2,7
li $t0,1
mul $t2,$t2,$t0
add $t2,$t2,$t1
li $t0,115
sb $t0,0($t2)
addiu $t1,$fp,-628
li $t0,8
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,116
sb $t1,0($t0)
addiu $t0,$fp,-628
li $t1,9
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,111
sb $t0,0($t1)
addiu $t1,$fp,-628
li $t0,10
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,121
sb $t1,0($t0)
addiu $t0,$fp,-628
li $t1,11
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,0
sb $t0,0($t1)
addiu $t2,$fp,-500
li $t1,0
li $t0,100
mul $t1,$t1,$t0
add $t1,$t1,$t2
addiu $t0,$sp,-4
sw $t1,0($t0)
li $t0,1001
addiu $t1,$sp,-8
sw $t0,0($t1)
addiu $t0,$fp,-532
addiu $t1,$sp,-12
sw $t0,0($t1)
addiu $t0,$fp,-564
addiu $t1,$sp,-16
sw $t0,0($t1)
li $t0,1851
addiu $t1,$sp,-20
sw $t0,0($t1)
addiu $sp,$sp,-20
jal initialize_book
addiu $sp,$sp,20
addiu $t0,$fp,-500
li $t2,1
li $t1,100
mul $t1,$t2,$t1
add $t1,$t1,$t0
addiu $t0,$sp,-4
sw $t1,0($t0)
li $t0,1002
addiu $t1,$sp,-8
sw $t0,0($t1)
addiu $t1,$fp,-596
addiu $t0,$sp,-12
sw $t1,0($t0)
addiu $t1,$fp,-628
addiu $t0,$sp,-16
sw $t1,0($t0)
li $t1,1869
addiu $t0,$sp,-20
sw $t1,0($t0)
addiu $sp,$sp,-20
jal initialize_book
addiu $sp,$sp,20
addiu $t0,$fp,-500
li $t1,2
li $t2,100
mul $t1,$t1,$t2
add $t1,$t1,$t0
addiu $t0,$sp,-4
sw $t1,0($t0)
li $t0,1003
addiu $t1,$sp,-8
sw $t0,0($t1)
la $t0,label_10_str
addiu $t1,$sp,-12
sw $t0,0($t1)
la $t0,label_11_str
addiu $t1,$sp,-16
sw $t0,0($t1)
li $t0,1949
addiu $t1,$sp,-20
sw $t0,0($t1)
addiu $sp,$sp,-20
jal initialize_book
addiu $sp,$sp,20
addiu $t0,$fp,-500
li $t1,3
li $t2,100
mul $t1,$t1,$t2
add $t1,$t1,$t0
addiu $t0,$sp,-4
sw $t1,0($t0)
li $t1,1004
addiu $t0,$sp,-8
sw $t1,0($t0)
la $t1,label_12_str
addiu $t0,$sp,-12
sw $t1,0($t0)
la $t1,label_13_str
addiu $t0,$sp,-16
sw $t1,0($t0)
li $t1,1925
addiu $t0,$sp,-20
sw $t1,0($t0)
addiu $sp,$sp,-20
jal initialize_book
addiu $sp,$sp,20
addiu $t1,$fp,-500
li $t2,4
li $t0,100
mul $t0,$t2,$t0
add $t0,$t0,$t1
addiu $t1,$sp,-4
sw $t0,0($t1)
li $t0,1005
addiu $t1,$sp,-8
sw $t0,0($t1)
la $t0,label_14_str
addiu $t1,$sp,-12
sw $t0,0($t1)
la $t0,label_15_str
addiu $t1,$sp,-16
sw $t0,0($t1)
li $t1,1813
addiu $t0,$sp,-20
sw $t1,0($t0)
addiu $sp,$sp,-20
jal initialize_book
addiu $sp,$sp,20
addiu $t0,$fp,-500
li $t2,0
li $t1,100
mul $t1,$t2,$t1
add $t1,$t1,$t0
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal checkout_book
addiu $sp,$sp,4
addiu $t1,$fp,-500
li $t0,1
li $t2,100
mul $t2,$t0,$t2
add $t2,$t2,$t1
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal checkout_book
addiu $sp,$sp,4
addiu $t1,$fp,-500
li $t0,0
li $t2,100
mul $t0,$t0,$t2
add $t0,$t0,$t1
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal return_book
addiu $sp,$sp,4
addiu $t0,$fp,-500
li $t2,3
li $t1,100
mul $t1,$t2,$t1
add $t1,$t1,$t0
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal checkout_book
addiu $sp,$sp,4
addiu $t1,$fp,-632
li $t0,0
sw $t0,0($t1)
addiu $t0,$fp,-632
lw $t0,0($t0)
li $t1,5
slt $t0,$t0,$t1
beqz $t0,label_46_next
label_48_body:
addiu $t2,$fp,-500
addiu $t0,$fp,-632
lw $t0,0($t0)
li $t1,100
mul $t0,$t0,$t1
add $t0,$t0,$t2
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_book
addiu $sp,$sp,4
addiu $t1,$fp,-632
addiu $t0,$fp,-632
lw $t2,0($t0)
li $t0,1
add $t0,$t2,$t0
sw $t0,0($t1)
label_47_posttest:
addiu $t0,$fp,-632
lw $t0,0($t0)
li $t1,5
slt $t0,$t0,$t1
bnez $t0,label_48_body
label_46_next:
li $v0,10
syscall

.text
print_s:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
lw $a0,4($fp)
li $v0,4
syscall
print_s_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
print_i:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
lw $a0,4($fp)
li $v0,1
syscall
print_i_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
print_c:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
lw $a0,4($fp)
li $v0,11
syscall
print_c_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
read_c:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
li $v0,12
syscall
sw $v0,4($fp)
read_c_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
read_i:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
li $v0,5
syscall
sw $v0,4($fp)
read_i_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
mcmalloc:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
lw $a0,8($fp)
li $v0,9
syscall
sw $v0,4($fp)
mcmalloc_epilogue:
# Original instruction: popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

