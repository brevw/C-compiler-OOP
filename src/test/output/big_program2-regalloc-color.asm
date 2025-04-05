.data
label_0_str:
.asciiz "Sold 5 apples for $"
.align 2
label_1_str:
.asciiz "."
.align 2
label_2_str:
.asciiz "0"
.align 2
label_3_str:
.asciiz "Sold 3 bananas for $"
.align 2
label_4_str:
.asciiz "\n=== DAILY INVENTORY REPORT ===\n"
.align 2
label_5_str:
.asciiz "Total sales today: "
.align 2
label_6_str:
.asciiz " transactions\n"
.align 2
label_7_str:
.asciiz "Total items sold: "
.align 2
label_8_str:
.asciiz "Total revenue: $"
.align 2
label_9_str:
.asciiz "\nTotal inventory value: $"
.align 2
label_10_str:
.asciiz "Average item price: $"
.align 2
label_11_str:
.asciiz "\nWARNING: "
.align 2
label_12_str:
.asciiz " items need restocking!\n"
.align 2
label_13_str:
.asciiz "\nAll items have sufficient stock.\n"
.align 2
label_14_str:
.asciiz "\n=== PRODUCT DETAILS ===\n"
.align 2
label_15_str:
.asciiz " - Qty: "
.align 2
label_16_str:
.asciiz " | Sales: "
.align 2
label_17_str:
.asciiz " | Days since restock: "
.align 2
label_18_str:
.asciiz "Need to order "
.align 2
label_19_str:
.asciiz " more apples\n"
.align 2
label_20_str:
.asciiz " more bananas\n"
.align 2
label_21_str:
.asciiz " more oranges\n"
.align 2
label_51_v18_spill:
.space 4
label_52_v13_spill:
.space 4
label_53_v20_spill:
.space 4
label_54_v15_spill:
.space 4

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-60
addiu $t1,$fp,-20
li $t2,0
li $t0,1
mul $t2,$t2,$t0
add $t2,$t2,$t1
li $t0,65
sb $t0,0($t2)
addiu $t0,$fp,-20
li $t1,1
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,112
sb $t0,0($t1)
addiu $t0,$fp,-20
li $t1,2
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,112
sb $t0,0($t1)
addiu $t0,$fp,-20
li $t2,3
li $t1,1
mul $t1,$t2,$t1
add $t1,$t1,$t0
li $t0,108
sb $t0,0($t1)
addiu $t0,$fp,-20
li $t2,4
li $t1,1
mul $t1,$t2,$t1
add $t1,$t1,$t0
li $t0,101
sb $t0,0($t1)
addiu $t1,$fp,-20
li $t0,5
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,115
sb $t1,0($t0)
addiu $t1,$fp,-20
li $t0,6
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,0
sb $t1,0($t0)
li $t0,199
addi $s3,$t0,0
li $t0,50
addi $t5,$t0,0
li $t0,0
addi $s0,$t0,0
li $t0,20
addi $s1,$t0,0
li $t0,5
addi $t4,$t0,0
addiu $t2,$fp,-40
li $t1,0
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,66
sb $t0,0($t1)
addiu $t2,$fp,-40
li $t1,1
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,97
sb $t1,0($t0)
addiu $t2,$fp,-40
li $t0,2
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,110
sb $t0,0($t1)
addiu $t1,$fp,-40
li $t2,3
li $t0,1
mul $t0,$t2,$t0
add $t0,$t0,$t1
li $t1,97
sb $t1,0($t0)
addiu $t2,$fp,-40
li $t1,4
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,110
sb $t0,0($t1)
addiu $t1,$fp,-40
li $t0,5
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,97
sb $t1,0($t0)
addiu $t1,$fp,-40
li $t0,6
li $t2,1
mul $t2,$t0,$t2
add $t2,$t2,$t1
li $t0,115
sb $t0,0($t2)
addiu $t2,$fp,-40
li $t1,7
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,0
sb $t1,0($t0)
li $t0,99
addi $s4,$t0,0
li $t0,30
addi $t1,$t0,0
li $t0,0
addi $t9,$t0,0
li $t0,15
addi $t3,$t0,0
li $t0,3
addi $t0,$t0,0
la $t2,label_52_v13_spill
sw $t0,0($t2)
addiu $t2,$fp,-60
li $t0,0
li $t6,1
mul $t6,$t0,$t6
add $t6,$t6,$t2
li $t0,79
sb $t0,0($t6)
addiu $t6,$fp,-60
li $t2,1
li $t0,1
mul $t2,$t2,$t0
add $t2,$t2,$t6
li $t0,114
sb $t0,0($t2)
addiu $t0,$fp,-60
li $t2,2
li $t6,1
mul $t2,$t2,$t6
add $t2,$t2,$t0
li $t0,97
sb $t0,0($t2)
addiu $t2,$fp,-60
li $t6,3
li $t0,1
mul $t0,$t6,$t0
add $t0,$t0,$t2
li $t2,110
sb $t2,0($t0)
addiu $t6,$fp,-60
li $t2,4
li $t0,1
mul $t2,$t2,$t0
add $t2,$t2,$t6
li $t0,103
sb $t0,0($t2)
addiu $t2,$fp,-60
li $t0,5
li $t6,1
mul $t0,$t0,$t6
add $t0,$t0,$t2
li $t2,101
sb $t2,0($t0)
addiu $t6,$fp,-60
li $t0,6
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t6
li $t2,115
sb $t2,0($t0)
addiu $t6,$fp,-60
li $t2,7
li $t0,1
mul $t2,$t2,$t0
add $t2,$t2,$t6
li $t0,0
sb $t0,0($t2)
li $t0,149
addi $t0,$t0,0
la $t2,label_54_v15_spill
sw $t0,0($t2)
li $t0,40
addi $t7,$t0,0
li $t0,0
addi $t0,$t0,0
la $t2,label_51_v18_spill
sw $t0,0($t2)
li $t0,25
addi $t8,$t0,0
li $t0,7
addi $t0,$t0,0
la $t2,label_53_v20_spill
sw $t0,0($t2)
li $t0,0
addi $t0,$t0,0
li $t2,0
addi $t2,$t2,0
li $t6,0
addi $t6,$t6,0
li $s2,10
addi $s2,$s2,0
li $s5,5
mul $s5,$s5,$s3
addi $s5,$s5,0
mul $s7,$s5,$s2
li $s6,100
div $s7,$s6
mflo $s6
addi $s6,$s6,0
sub $s5,$s5,$s6
addi $s5,$s5,0
li $s6,5
sub $t5,$t5,$s6
addi $t5,$t5,0
li $s6,5
add $s0,$s0,$s6
addi $s0,$s0,0
li $s6,1
add $t0,$t0,$s6
addi $t0,$t0,0
li $s6,5
add $t2,$t2,$s6
addi $t2,$t2,0
add $t6,$t6,$s5
addi $t6,$t6,0
la $s7,label_0_str
addiu $s6,$sp,-4
sw $s7,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $s6,100
div $s5,$s6
mflo $s6
addiu $s7,$sp,-4
sw $s6,0($s7)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $s6,label_1_str
addiu $s7,$sp,-4
sw $s6,0($s7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $s6,100
div $s5,$s6
mfhi $s6
li $s7,10
slt $s6,$s6,$s7
beqz $s6,label_25_END
la $s6,label_2_str
addiu $s7,$sp,-4
sw $s6,0($s7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_25_END:
li $s6,100
div $s5,$s6
mfhi $s6
addiu $s5,$sp,-4
sw $s6,0($s5)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $s5,10
addiu $s6,$sp,-4
sb $s5,0($s6)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
li $s5,3
mul $s5,$s5,$s4
addi $s5,$s5,0
mul $s2,$s5,$s2
li $s6,100
div $s2,$s6
mflo $s2
addi $s6,$s2,0
sub $s2,$s5,$s6
addi $s5,$s2,0
li $s2,3
sub $t1,$t1,$s2
addi $t1,$t1,0
li $s2,3
add $t9,$t9,$s2
addi $t9,$t9,0
li $s2,1
add $t0,$t0,$s2
addi $t0,$t0,0
li $s2,3
add $t2,$t2,$s2
addi $t2,$t2,0
add $t6,$t6,$s5
addi $t6,$t6,0
la $s2,label_3_str
addiu $s6,$sp,-4
sw $s2,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $s2,100
div $s5,$s2
mflo $s2
addiu $s6,$sp,-4
sw $s2,0($s6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $s6,label_1_str
addiu $s2,$sp,-4
sw $s6,0($s2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $s2,100
div $s5,$s2
mfhi $s2
li $s6,10
slt $s2,$s2,$s6
beqz $s2,label_27_END
la $s6,label_2_str
addiu $s2,$sp,-4
sw $s6,0($s2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_27_END:
li $s2,100
div $s5,$s2
mfhi $s5
addiu $s2,$sp,-4
sw $s5,0($s2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $s5,10
addiu $s2,$sp,-4
sb $s5,0($s2)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
mul $s2,$t5,$s3
addi $s3,$s2,0
mul $s2,$t1,$s4
add $s2,$s3,$s2
addi $s3,$s2,0
la $s2,label_54_v15_spill
lw $s2,0($s2)
mul $s2,$t7,$s2
add $s2,$s3,$s2
addi $s4,$s2,0
add $s2,$t5,$t1
add $s2,$s2,$t7
addi $s3,$s2,0
li $s2,0
slt $s2,$s2,$s3
beqz $s2,label_28_ELSE
div $s4,$s3
mflo $s2
addi $s2,$s2,0
j label_29_END
label_28_ELSE:
li $s2,0
addi $s2,$s2,0
label_29_END:
li $s3,0
addi $s5,$s3,0
li $s3,0
addi $s3,$s3,0
slt $s6,$t5,$s1
beqz $s6,label_30_END
li $s3,1
add $s3,$s5,$s3
addi $s5,$s3,0
li $s3,1
addi $s3,$s3,0
label_30_END:
slt $s6,$t1,$t3
beqz $s6,label_31_END
li $s3,1
add $s3,$s5,$s3
addi $s5,$s3,0
li $s3,1
addi $s3,$s3,0
label_31_END:
slt $s6,$t7,$t8
beqz $s6,label_32_END
li $s3,1
add $s3,$s5,$s3
addi $s5,$s3,0
li $s3,1
addi $s3,$s3,0
label_32_END:
la $s6,label_4_str
addiu $s7,$sp,-4
sw $s6,0($s7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $s7,label_5_str
addiu $s6,$sp,-4
sw $s7,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $s6,$sp,-4
sw $t0,0($s6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_6_str
addiu $s6,$sp,-4
sw $t0,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,label_7_str
addiu $s6,$sp,-4
sw $t0,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t0,10
addiu $t2,$sp,-4
sb $t0,0($t2)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t0,label_8_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,100
div $t6,$t0
mflo $t2
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t2,label_1_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,100
div $t6,$t0
mfhi $t0
li $t2,10
slt $t0,$t0,$t2
beqz $t0,label_33_END
la $t0,label_2_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_33_END:
li $t0,100
div $t6,$t0
mfhi $t2
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t2,10
addiu $t0,$sp,-4
sb $t2,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t2,label_9_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,100
div $s4,$t0
mflo $t2
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_1_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,100
div $s4,$t0
mfhi $t2
li $t0,10
slt $t0,$t2,$t0
beqz $t0,label_34_END
la $t0,label_2_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_34_END:
li $t0,100
div $s4,$t0
mfhi $t0
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t2,10
addiu $t0,$sp,-4
sb $t2,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t0,label_10_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,100
div $s2,$t0
mflo $t0
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_1_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,100
div $s2,$t0
mfhi $t0
li $t2,10
slt $t0,$t0,$t2
beqz $t0,label_35_END
la $t2,label_2_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_35_END:
li $t0,100
div $s2,$t0
mfhi $t0
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t2,10
addiu $t0,$sp,-4
sb $t2,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
li $t0,1
xor $t0,$s3,$t0
sltiu $t0,$t0,1
beqz $t0,label_36_ELSE
la $t2,label_11_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
sw $s5,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t2,label_12_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
j label_37_END
label_36_ELSE:
la $t2,label_13_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_37_END:
la $t0,label_14_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$fp,-20
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,label_15_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
sw $t5,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t2,label_16_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
sw $s0,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t2,label_17_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
sw $t4,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t0,10
addiu $t2,$sp,-4
sb $t0,0($t2)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t2,$fp,-40
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t2,label_15_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_16_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
sw $t9,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_17_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$sp,-4
la $t0,label_52_v13_spill
lw $t0,0($t0)
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t0,10
addiu $t2,$sp,-4
sb $t0,0($t2)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t2,$fp,-60
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t2,label_15_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
sw $t7,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_16_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$sp,-4
la $t0,label_51_v18_spill
lw $t0,0($t0)
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t2,label_17_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
la $t2,label_53_v20_spill
lw $t2,0($t2)
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t0,10
addiu $t2,$sp,-4
sb $t0,0($t2)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
slt $t0,$t5,$s1
beqz $t0,label_38_END
li $t0,2
mul $t0,$s1,$t0
sub $t0,$t0,$t5
addi $t0,$t0,0
la $t4,label_18_str
addiu $t2,$sp,-4
sw $t4,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_19_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_38_END:
slt $t0,$t1,$t3
beqz $t0,label_39_END
li $t0,2
mul $t0,$t3,$t0
sub $t0,$t0,$t1
addi $t0,$t0,0
la $t1,label_18_str
addiu $t2,$sp,-4
sw $t1,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t1,label_20_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_39_END:
slt $t0,$t7,$t8
beqz $t0,label_40_END
li $t0,2
mul $t0,$t8,$t0
sub $t0,$t0,$t7
addi $t0,$t0,0
la $t1,label_18_str
addiu $t2,$sp,-4
sw $t1,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_21_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_40_END:
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

