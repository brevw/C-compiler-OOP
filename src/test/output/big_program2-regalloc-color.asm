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
label_51_v20_spill:
.space 4
label_52_v13_spill:
.space 4
label_53_v18_spill:
.space 4
label_54_v6_spill:
.space 4

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-60
addiu $t2,$fp,-20
li $t0,0
li $t1,1
mul $t0,$t0,$t1
add $t0,$t0,$t2
li $t1,65
sb $t1,0($t0)
addiu $t0,$fp,-20
li $t2,1
li $t1,1
mul $t1,$t2,$t1
add $t1,$t1,$t0
li $t0,112
sb $t0,0($t1)
addiu $t1,$fp,-20
li $t0,2
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,112
sb $t1,0($t0)
addiu $t2,$fp,-20
li $t0,3
li $t1,1
mul $t0,$t0,$t1
add $t0,$t0,$t2
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
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,0
sb $t0,0($t1)
li $t0,199
addi $s5,$t0,0
li $t0,50
addi $t9,$t0,0
li $t0,0
addi $t6,$t0,0
li $t0,20
addi $t4,$t0,0
li $t0,5
addi $t1,$t0,0
la $t0,label_54_v6_spill
sw $t1,0($t0)
addiu $t2,$fp,-40
li $t0,0
li $t1,1
mul $t1,$t0,$t1
add $t1,$t1,$t2
li $t0,66
sb $t0,0($t1)
addiu $t1,$fp,-40
li $t0,1
li $t2,1
mul $t0,$t0,$t2
add $t0,$t0,$t1
li $t1,97
sb $t1,0($t0)
addiu $t2,$fp,-40
li $t1,2
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,110
sb $t0,0($t1)
addiu $t2,$fp,-40
li $t1,3
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,97
sb $t1,0($t0)
addiu $t1,$fp,-40
li $t2,4
li $t0,1
mul $t0,$t2,$t0
add $t0,$t0,$t1
li $t1,110
sb $t1,0($t0)
addiu $t0,$fp,-40
li $t1,5
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,97
sb $t0,0($t1)
addiu $t2,$fp,-40
li $t1,6
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,115
sb $t1,0($t0)
addiu $t2,$fp,-40
li $t1,7
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,0
sb $t1,0($t0)
li $t0,99
addi $s2,$t0,0
li $t0,30
addi $t3,$t0,0
li $t0,0
addi $t7,$t0,0
li $t0,15
addi $s0,$t0,0
li $t0,3
addi $t1,$t0,0
la $t0,label_52_v13_spill
sw $t1,0($t0)
addiu $t2,$fp,-60
li $t1,0
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,79
sb $t1,0($t0)
addiu $t0,$fp,-60
li $t2,1
li $t1,1
mul $t1,$t2,$t1
add $t1,$t1,$t0
li $t0,114
sb $t0,0($t1)
addiu $t2,$fp,-60
li $t1,2
li $t0,1
mul $t1,$t1,$t0
add $t1,$t1,$t2
li $t0,97
sb $t0,0($t1)
addiu $t1,$fp,-60
li $t2,3
li $t0,1
mul $t0,$t2,$t0
add $t0,$t0,$t1
li $t1,110
sb $t1,0($t0)
addiu $t1,$fp,-60
li $t0,4
li $t2,1
mul $t2,$t0,$t2
add $t2,$t2,$t1
li $t0,103
sb $t0,0($t2)
addiu $t0,$fp,-60
li $t1,5
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,101
sb $t0,0($t1)
addiu $t2,$fp,-60
li $t1,6
li $t0,1
mul $t0,$t1,$t0
add $t0,$t0,$t2
li $t1,115
sb $t1,0($t0)
addiu $t0,$fp,-60
li $t1,7
li $t2,1
mul $t1,$t1,$t2
add $t1,$t1,$t0
li $t0,0
sb $t0,0($t1)
li $t0,149
addi $s1,$t0,0
li $t0,40
addi $t1,$t0,0
li $t0,0
addi $t2,$t0,0
la $t0,label_53_v18_spill
sw $t2,0($t0)
li $t0,25
addi $t8,$t0,0
li $t0,7
addi $t0,$t0,0
la $t2,label_51_v20_spill
sw $t0,0($t2)
li $t0,0
addi $t5,$t0,0
li $t0,0
addi $t0,$t0,0
li $t2,0
addi $t2,$t2,0
li $s3,10
addi $s3,$s3,0
li $s4,5
mul $s4,$s4,$s5
addi $s4,$s4,0
mul $s7,$s4,$s3
li $s6,100
div $s7,$s6
mflo $s6
addi $s6,$s6,0
sub $s4,$s4,$s6
addi $s4,$s4,0
li $s6,5
sub $t9,$t9,$s6
addi $t9,$t9,0
li $s6,5
add $t6,$t6,$s6
addi $t6,$t6,0
li $s6,1
add $t5,$t5,$s6
addi $t5,$t5,0
li $s6,5
add $t0,$t0,$s6
addi $t0,$t0,0
add $t2,$t2,$s4
addi $t2,$t2,0
la $s7,label_0_str
addiu $s6,$sp,-4
sw $s7,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $s6,100
div $s4,$s6
mflo $s7
addiu $s6,$sp,-4
sw $s7,0($s6)
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
div $s4,$s6
mfhi $s4
addiu $s6,$sp,-4
sw $s4,0($s6)
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
mul $s4,$s4,$s2
addi $s4,$s4,0
mul $s6,$s4,$s3
li $s3,100
div $s6,$s3
mflo $s3
addi $s6,$s3,0
sub $s3,$s4,$s6
addi $s4,$s3,0
li $s3,3
sub $t3,$t3,$s3
addi $t3,$t3,0
li $s3,3
add $t7,$t7,$s3
addi $t7,$t7,0
li $s3,1
add $t5,$t5,$s3
addi $t5,$t5,0
li $s3,3
add $t0,$t0,$s3
addi $t0,$t0,0
add $t2,$t2,$s4
addi $t2,$t2,0
la $s3,label_3_str
addiu $s6,$sp,-4
sw $s3,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $s3,100
div $s4,$s3
mflo $s3
addiu $s6,$sp,-4
sw $s3,0($s6)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $s3,label_1_str
addiu $s6,$sp,-4
sw $s3,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $s3,100
div $s4,$s3
mfhi $s3
li $s6,10
slt $s3,$s3,$s6
beqz $s3,label_27_END
la $s6,label_2_str
addiu $s3,$sp,-4
sw $s6,0($s3)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_27_END:
li $s3,100
div $s4,$s3
mfhi $s3
addiu $s4,$sp,-4
sw $s3,0($s4)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $s4,10
addiu $s3,$sp,-4
sb $s4,0($s3)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
mul $s3,$t9,$s5
addi $s3,$s3,0
mul $s2,$t3,$s2
add $s2,$s3,$s2
addi $s3,$s2,0
mul $s1,$t1,$s1
add $s1,$s3,$s1
addi $s4,$s1,0
add $s1,$t9,$t3
add $s1,$s1,$t1
addi $s2,$s1,0
li $s1,0
slt $s1,$s1,$s2
beqz $s1,label_28_ELSE
div $s4,$s2
mflo $s1
addi $s2,$s1,0
j label_29_END
label_28_ELSE:
li $s1,0
addi $s2,$s1,0
label_29_END:
li $s1,0
addi $s1,$s1,0
li $s3,0
addi $s3,$s3,0
slt $s5,$t9,$t4
beqz $s5,label_30_END
li $s3,1
add $s1,$s1,$s3
addi $s1,$s1,0
li $s3,1
addi $s3,$s3,0
label_30_END:
slt $s5,$t3,$s0
beqz $s5,label_31_END
li $s3,1
add $s1,$s1,$s3
addi $s1,$s1,0
li $s3,1
addi $s3,$s3,0
label_31_END:
slt $s5,$t1,$t8
beqz $s5,label_32_END
li $s3,1
add $s1,$s1,$s3
addi $s1,$s1,0
li $s3,1
addi $s3,$s3,0
label_32_END:
la $s5,label_4_str
addiu $s6,$sp,-4
sw $s5,0($s6)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $s6,label_5_str
addiu $s5,$sp,-4
sw $s6,0($s5)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $s5,$sp,-4
sw $t5,0($s5)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t5,label_6_str
addiu $s5,$sp,-4
sw $t5,0($s5)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t5,label_7_str
addiu $s5,$sp,-4
sw $t5,0($s5)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t5,$sp,-4
sw $t0,0($t5)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t5,10
addiu $t0,$sp,-4
sb $t5,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la $t5,label_8_str
addiu $t0,$sp,-4
sw $t5,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,100
div $t2,$t0
mflo $t0
addiu $t5,$sp,-4
sw $t0,0($t5)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_1_str
addiu $t5,$sp,-4
sw $t0,0($t5)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,100
div $t2,$t0
mfhi $t5
li $t0,10
slt $t0,$t5,$t0
beqz $t0,label_33_END
la $t5,label_2_str
addiu $t0,$sp,-4
sw $t5,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_33_END:
li $t0,100
div $t2,$t0
mfhi $t2
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
la $t0,label_9_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li $t0,100
div $s4,$t0
mflo $t0
addiu $t2,$sp,-4
sw $t0,0($t2)
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
div $s4,$t0
mfhi $t0
li $t2,10
slt $t0,$t0,$t2
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
mfhi $t2
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
la $t2,label_10_str
addiu $t0,$sp,-4
sw $t2,0($t0)
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
mfhi $t2
li $t0,10
slt $t0,$t2,$t0
beqz $t0,label_35_END
la $t0,label_2_str
addiu $t2,$sp,-4
sw $t0,0($t2)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_35_END:
li $t0,100
div $s2,$t0
mfhi $t2
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
sw $s1,0($t0)
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
la $t2,label_14_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,-20
addiu $t2,$sp,-4
sw $t0,0($t2)
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
sw $t9,0($t0)
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
sw $t6,0($t0)
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
la $t2,label_54_v6_spill
lw $t2,0($t2)
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
addiu $t0,$fp,-40
addiu $t2,$sp,-4
sw $t0,0($t2)
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
sw $t3,0($t0)
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
sw $t7,0($t0)
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
la $t2,label_52_v13_spill
lw $t2,0($t2)
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
addiu $t0,$fp,-60
addiu $t2,$sp,-4
sw $t0,0($t2)
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
la $t2,label_16_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
la $t2,label_53_v18_spill
lw $t2,0($t2)
sw $t2,0($t0)
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
la $t2,label_51_v20_spill
lw $t2,0($t2)
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
slt $t0,$t9,$t4
beqz $t0,label_38_END
li $t0,2
mul $t0,$t4,$t0
sub $t0,$t0,$t9
addi $t4,$t0,0
la $t2,label_18_str
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
la $t2,label_19_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_38_END:
slt $t0,$t3,$s0
beqz $t0,label_39_END
li $t0,2
mul $t0,$s0,$t0
sub $t0,$t0,$t3
addi $t4,$t0,0
la $t2,label_18_str
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
la $t2,label_20_str
addiu $t0,$sp,-4
sw $t2,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_39_END:
slt $t0,$t1,$t8
beqz $t0,label_40_END
li $t0,2
mul $t0,$t8,$t0
sub $t0,$t0,$t1
addi $t4,$t0,0
la $t1,label_18_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$sp,-4
sw $t4,0($t0)
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

