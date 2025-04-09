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
addiu $t2,$fp,-20
li $t0,0
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,65
sb $t0,0($t1)
addiu $t2,$fp,-20
li $t0,1
li $t1,1
mul $t0,$t0,$t1
add $t0,$t0,$t2
li $t1,112
sb $t1,0($t0)
addiu $t0,$fp,-20
li $t2,2
li $t1,1
mul $t1,$t2,$t1
add $t1,$t1,$t0
li $t0,112
sb $t0,0($t1)
addiu $t1,$fp,-20
li $t0,3
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,108
sb $t1,0($t0)
addiu $t2,$fp,-20
li $t0,4
li $t1,1
mul $t0,$t0,$t1
add $t0,$t0,$t2
li $t1,101
sb $t1,0($t0)
addiu $t2,$fp,-20
li $t0,5
li $t1,1
mul $t0,$t0,$t1
add $t0,$t0,$t2
li $t1,115
sb $t1,0($t0)
addiu $t2,$fp,-20
li $t0,6
li $t1,1
mul $t0,$t0,$t1
add $t0,$t0,$t2
li $t1,0
sb $t1,0($t0)
li $t0,199
addi $s5,$t0,0
li $t0,50
addi $t2,$t0,0
li $t0,0
addi $t4,$t0,0
li $t0,20
addi $t8,$t0,0
li $t0,5
addi $t5,$t0,0
addiu $t1,$fp,-40
li $t0,0
li $t3,1
mul $t0,$t0,$t3
add $t0,$t0,$t1
li $t1,66
sb $t1,0($t0)
addiu $t3,$fp,-40
li $t0,1
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t3
li $t0,97
sb $t0,0($t1)
addiu $t1,$fp,-40
li $t0,2
li $t3,1
mul $t0,$t0,$t3
add $t0,$t0,$t1
li $t1,110
sb $t1,0($t0)
addiu $t3,$fp,-40
li $t1,3
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t3
li $t0,97
sb $t0,0($t1)
addiu $t3,$fp,-40
li $t1,4
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t3
li $t1,110
sb $t1,0($t0)
addiu $t1,$fp,-40
li $t3,5
li $t0,1
mul $t0,$t3,$t0
add $t0,$t0,$t1
li $t1,97
sb $t1,0($t0)
addiu $t0,$fp,-40
li $t1,6
li $t3,1
mul $t1,$t1,$t3
add $t1,$t1,$t0
li $t0,115
sb $t0,0($t1)
addiu $t3,$fp,-40
li $t1,7
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t3
li $t1,0
sb $t1,0($t0)
li $t0,99
addi $s3,$t0,0
li $t0,30
addi $t9,$t0,0
li $t0,0
addi $t3,$t0,0
li $t0,15
addi $t1,$t0,0
li $t0,3
addi $t0,$t0,0
la $t6,label_52_v13_spill
sw $t0,0($t6)
addiu $t7,$fp,-60
li $t6,0
li $t0,1
mul $t0,$t6,$t0
add $t0,$t0,$t7
li $t6,79
sb $t6,0($t0)
addiu $t7,$fp,-60
li $t6,1
li $t0,1
mul $t0,$t6,$t0
add $t0,$t0,$t7
li $t6,114
sb $t6,0($t0)
addiu $t0,$fp,-60
li $t7,2
li $t6,1
mul $t6,$t7,$t6
add $t6,$t6,$t0
li $t0,97
sb $t0,0($t6)
addiu $t7,$fp,-60
li $t6,3
li $t0,1
mul $t6,$t6,$t0
add $t6,$t6,$t7
li $t0,110
sb $t0,0($t6)
addiu $t6,$fp,-60
li $t7,4
li $t0,1
mul $t0,$t7,$t0
add $t0,$t0,$t6
li $t6,103
sb $t6,0($t0)
addiu $t6,$fp,-60
li $t0,5
li $t7,1
mul $t7,$t0,$t7
add $t7,$t7,$t6
li $t0,101
sb $t0,0($t7)
addiu $t0,$fp,-60
li $t6,6
li $t7,1
mul $t6,$t6,$t7
add $t6,$t6,$t0
li $t0,115
sb $t0,0($t6)
addiu $t7,$fp,-60
li $t6,7
li $t0,1
mul $t0,$t6,$t0
add $t0,$t0,$t7
li $t6,0
sb $t6,0($t0)
li $t0,149
addi $t6,$t0,0
la $t0,label_54_v15_spill
sw $t6,0($t0)
li $t0,40
addi $t0,$t0,0
li $t6,0
addi $t7,$t6,0
la $t6,label_51_v18_spill
sw $t7,0($t6)
li $t6,25
addi $s0,$t6,0
li $t6,7
addi $t6,$t6,0
la $t7,label_53_v20_spill
sw $t6,0($t7)
li $t6,0
addi $t6,$t6,0
li $t7,0
addi $s1,$t7,0
li $t7,0
addi $t7,$t7,0
li $s2,10
addi $s2,$s2,0
li $s4,5
mul $s4,$s4,$s5
addi $s4,$s4,0
mul $s7,$s4,$s2
li $s6,100
div $s7,$s6
mflo $s6
addi $s6,$s6,0
sub $s4,$s4,$s6
addi $s4,$s4,0
li $s6,5
sub $t2,$t2,$s6
addi $t2,$t2,0
li $s6,5
add $t4,$t4,$s6
addi $t4,$t4,0
li $s6,1
add $t6,$t6,$s6
addi $t6,$t6,0
li $s6,5
add $s1,$s1,$s6
addi $s1,$s1,0
add $t7,$t7,$s4
addi $t7,$t7,0
la $s6,label_0_str
addiu $s7,$sp,-4
sw $s6,0($s7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $s6,100
div $s4,$s6
mflo $s6
addiu $s7,$sp,-4
sw $s6,0($s7)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $s7,label_1_str
addiu $s6,$sp,-4
sw $s7,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $s6,100
div $s4,$s6
mfhi $s7
li $s6,10
slt $s6,$s7,$s6
beqz $s6,label_25_END
la $s7,label_2_str
addiu $s6,$sp,-4
sw $s7,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_25_END:
li $s6,100
div $s4,$s6
mfhi $s6
addiu $s4,$sp,-4
sw $s6,0($s4)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $s6,10
addiu $s4,$sp,-4
sb $s6,0($s4)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
li $s4,3
mul $s4,$s4,$s3
addi $s4,$s4,0
mul $s6,$s4,$s2
li $s2,100
div $s6,$s2
mflo $s2
addi $s6,$s2,0
sub $s2,$s4,$s6
addi $s4,$s2,0
li $s2,3
sub $t9,$t9,$s2
addi $t9,$t9,0
li $s2,3
add $t3,$t3,$s2
addi $t3,$t3,0
li $s2,1
add $t6,$t6,$s2
addi $t6,$t6,0
li $s2,3
add $s1,$s1,$s2
addi $s1,$s1,0
add $t7,$t7,$s4
addi $t7,$t7,0
la $s6,label_3_str
addiu $s2,$sp,-4
sw $s6,0($s2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $s2,100
div $s4,$s2
mflo $s2
addiu $s6,$sp,-4
sw $s2,0($s6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $s2,label_1_str
addiu $s6,$sp,-4
sw $s2,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $s2,100
div $s4,$s2
mfhi $s2
li $s6,10
slt $s2,$s2,$s6
beqz $s2,label_27_END
la $s2,label_2_str
addiu $s6,$sp,-4
sw $s2,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_27_END:
li $s2,100
div $s4,$s2
mfhi $s2
addiu $s4,$sp,-4
sw $s2,0($s4)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $s2,10
addiu $s4,$sp,-4
sb $s2,0($s4)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
mul $s2,$t2,$s5
addi $s2,$s2,0
mul $s3,$t9,$s3
add $s2,$s2,$s3
addi $s2,$s2,0
la $s3,label_54_v15_spill
lw $s3,0($s3)
mul $s3,$t0,$s3
add $s2,$s2,$s3
addi $s4,$s2,0
add $s2,$t2,$t9
add $s2,$s2,$t0
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
slt $s6,$t2,$t8
beqz $s6,label_30_END
li $s3,1
add $s3,$s5,$s3
addi $s5,$s3,0
li $s3,1
addi $s3,$s3,0
label_30_END:
slt $s6,$t9,$t1
beqz $s6,label_31_END
li $s3,1
add $s3,$s5,$s3
addi $s5,$s3,0
li $s3,1
addi $s3,$s3,0
label_31_END:
slt $s6,$t0,$s0
beqz $s6,label_32_END
li $s3,1
add $s3,$s5,$s3
addi $s5,$s3,0
li $s3,1
addi $s3,$s3,0
label_32_END:
la $s7,label_4_str
addiu $s6,$sp,-4
sw $s7,0($s6)
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
sw $t6,0($s6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t6,label_6_str
addiu $s6,$sp,-4
sw $t6,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t6,label_7_str
addiu $s6,$sp,-4
sw $t6,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t6,$sp,-4
sw $s1,0($t6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $s1,10
addiu $t6,$sp,-4
sb $s1,0($t6)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t6,label_8_str
addiu $s1,$sp,-4
sw $t6,0($s1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t6,100
div $t7,$t6
mflo $s1
addiu $t6,$sp,-4
sw $s1,0($t6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $s1,label_1_str
addiu $t6,$sp,-4
sw $s1,0($t6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t6,100
div $t7,$t6
mfhi $t6
li $s1,10
slt $t6,$t6,$s1
beqz $t6,label_33_END
la $t6,label_2_str
addiu $s1,$sp,-4
sw $t6,0($s1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_33_END:
li $t6,100
div $t7,$t6
mfhi $t7
addiu $t6,$sp,-4
sw $t7,0($t6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t7,10
addiu $t6,$sp,-4
sb $t7,0($t6)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t7,label_9_str
addiu $t6,$sp,-4
sw $t7,0($t6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t6,100
div $s4,$t6
mflo $t6
addiu $t7,$sp,-4
sw $t6,0($t7)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t6,label_1_str
addiu $t7,$sp,-4
sw $t6,0($t7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t6,100
div $s4,$t6
mfhi $t7
li $t6,10
slt $t6,$t7,$t6
beqz $t6,label_34_END
la $t6,label_2_str
addiu $t7,$sp,-4
sw $t6,0($t7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_34_END:
li $t6,100
div $s4,$t6
mfhi $t6
addiu $t7,$sp,-4
sw $t6,0($t7)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t7,10
addiu $t6,$sp,-4
sb $t7,0($t6)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t6,label_10_str
addiu $t7,$sp,-4
sw $t6,0($t7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t6,100
div $s2,$t6
mflo $t6
addiu $t7,$sp,-4
sw $t6,0($t7)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t7,label_1_str
addiu $t6,$sp,-4
sw $t7,0($t6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t6,100
div $s2,$t6
mfhi $t6
li $t7,10
slt $t6,$t6,$t7
beqz $t6,label_35_END
la $t6,label_2_str
addiu $t7,$sp,-4
sw $t6,0($t7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_35_END:
li $t6,100
div $s2,$t6
mfhi $t7
addiu $t6,$sp,-4
sw $t7,0($t6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t6,10
addiu $t7,$sp,-4
sb $t6,0($t7)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
li $t6,1
xor $t6,$s3,$t6
sltiu $t6,$t6,1
beqz $t6,label_36_ELSE
la $t6,label_11_str
addiu $t7,$sp,-4
sw $t6,0($t7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t6,$sp,-4
sw $s5,0($t6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t7,label_12_str
addiu $t6,$sp,-4
sw $t7,0($t6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
j label_37_END
label_36_ELSE:
la $t7,label_13_str
addiu $t6,$sp,-4
sw $t7,0($t6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_37_END:
la $t6,label_14_str
addiu $t7,$sp,-4
sw $t6,0($t7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t6,$fp,-20
addiu $t7,$sp,-4
sw $t6,0($t7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t7,label_15_str
addiu $t6,$sp,-4
sw $t7,0($t6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t6,$sp,-4
sw $t2,0($t6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t6,label_16_str
addiu $t7,$sp,-4
sw $t6,0($t7)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t6,$sp,-4
sw $t4,0($t6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t4,label_17_str
addiu $t6,$sp,-4
sw $t4,0($t6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t4,$sp,-4
sw $t5,0($t4)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t4,10
addiu $t5,$sp,-4
sb $t4,0($t5)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t4,$fp,-40
addiu $t5,$sp,-4
sw $t4,0($t5)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t5,label_15_str
addiu $t4,$sp,-4
sw $t5,0($t4)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t4,$sp,-4
sw $t9,0($t4)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t4,label_16_str
addiu $t5,$sp,-4
sw $t4,0($t5)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t4,$sp,-4
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t3,label_17_str
addiu $t4,$sp,-4
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t3,$sp,-4
la $t4,label_52_v13_spill
lw $t4,0($t4)
sw $t4,0($t3)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t4,10
addiu $t3,$sp,-4
sb $t4,0($t3)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t3,$fp,-60
addiu $t4,$sp,-4
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t3,label_15_str
addiu $t4,$sp,-4
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t3,$sp,-4
sw $t0,0($t3)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t3,label_16_str
addiu $t4,$sp,-4
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t4,$sp,-4
la $t3,label_51_v18_spill
lw $t3,0($t3)
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t4,label_17_str
addiu $t3,$sp,-4
sw $t4,0($t3)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t4,$sp,-4
la $t3,label_53_v20_spill
lw $t3,0($t3)
sw $t3,0($t4)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t3,10
addiu $t4,$sp,-4
sb $t3,0($t4)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
slt $t3,$t2,$t8
beqz $t3,label_38_END
li $t3,2
mul $t3,$t8,$t3
sub $t2,$t3,$t2
addi $t4,$t2,0
la $t3,label_18_str
addiu $t2,$sp,-4
sw $t3,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$sp,-4
sw $t4,0($t2)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t2,label_19_str
addiu $t3,$sp,-4
sw $t2,0($t3)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_38_END:
slt $t2,$t9,$t1
beqz $t2,label_39_END
li $t2,2
mul $t1,$t1,$t2
sub $t1,$t1,$t9
addi $t4,$t1,0
la $t1,label_18_str
addiu $t2,$sp,-4
sw $t1,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t1,$sp,-4
sw $t4,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t1,label_20_str
addiu $t2,$sp,-4
sw $t1,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_39_END:
slt $t1,$t0,$s0
beqz $t1,label_40_END
li $t1,2
mul $t1,$s0,$t1
sub $t0,$t1,$t0
addi $t4,$t0,0
la $t0,label_18_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
sw $t4,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t1,label_21_str
addiu $t0,$sp,-4
sw $t1,0($t0)
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

