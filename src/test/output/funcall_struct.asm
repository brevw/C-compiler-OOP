.data
label_0_str:
.asciiz "Person\'s age char: "
.align 2
label_1_str:
.asciiz "\n"
.align 2
label_2_str:
.asciiz "Person\'s age: "
.align 2
label_3_str:
.asciiz "Person\'s height: "
.align 2
label_4_str:
.asciiz " cm\n"
.align 2
# Allocated labels for virtual registers
label_55_v16:
.space 4
label_34_v6:
.space 4
label_56_v17:
.space 4
label_48_v11:
.space 4
label_72_v25:
.space 4
label_62_v21:
.space 4
label_60_v19:
.space 4
label_42_v10:
.space 4
label_23_v0:
.space 4
label_71_v24:
.space 4
label_30_v2:
.space 4
label_28_v3:
.space 4
label_46_v12:
.space 4
label_37_v7:
.space 4
label_41_v9:
.space 4
label_67_v22:
.space 4
label_38_v8:
.space 4
label_59_v18:
.space 4
label_26_v4:
.space 4
label_68_v23:
.space 4
label_33_v5:
.space 4
label_44_v13:
.space 4
label_64_v20:
.space 4
label_24_v1:
.space 4
label_52_v15:
.space 4
label_51_v14:
.space 4
# Allocated labels for virtual registers
label_144_v38:
.space 4
label_93_v36:
.space 4
label_80_v26:
.space 4
label_74_v28:
.space 4
label_82_v32:
.space 4
label_88_v30:
.space 4
label_141_v37:
.space 4
label_76_v27:
.space 4
label_94_v34:
.space 4
label_90_v35:
.space 4
label_87_v33:
.space 4
label_84_v31:
.space 4
label_79_v29:
.space 4
label_143_v39:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
print:
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
la $t0,label_55_v16
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_34_v6
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v17
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_48_v11
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_72_v25
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_62_v21
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_60_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_42_v10
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_23_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_71_v24
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_30_v2
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v3
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v12
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_37_v7
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v9
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_67_v22
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v8
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_59_v18
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_68_v23
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_33_v5
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_44_v13
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_64_v20
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_52_v15
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v14
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: la v0,label_0_str
la $t5,label_0_str
la $t0,label_23_v0
sw $t5,0($t0)
# Original instruction: addiu v1,$sp,-4
addiu $t5,$sp,-4
la $t0,label_24_v1
sw $t5,0($t0)
# Original instruction: sw v0,0(v1)
la $t5,label_23_v0
lw $t5,0($t5)
la $t4,label_24_v1
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v4,$fp,4
addiu $t5,$fp,4
la $t0,label_26_v4
sw $t5,0($t0)
# Original instruction: addi v3,v4,0
la $t5,label_26_v4
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_28_v3
sw $t4,0($t0)
# Original instruction: addi v2,v3,0
la $t5,label_28_v3
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_30_v2
sw $t4,0($t0)
# Original instruction: lb v5,0(v2)
la $t5,label_30_v2
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_33_v5
sw $t4,0($t0)
# Original instruction: addiu v6,$sp,-4
addiu $t5,$sp,-4
la $t0,label_34_v6
sw $t5,0($t0)
# Original instruction: sb v5,0(v6)
la $t5,label_33_v5
lw $t5,0($t5)
la $t4,label_34_v6
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_c
jal print_c
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v7,label_1_str
la $t5,label_1_str
la $t0,label_37_v7
sw $t5,0($t0)
# Original instruction: addiu v8,$sp,-4
addiu $t5,$sp,-4
la $t0,label_38_v8
sw $t5,0($t0)
# Original instruction: sw v7,0(v8)
la $t5,label_37_v7
lw $t5,0($t5)
la $t4,label_38_v8
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v9,label_2_str
la $t5,label_2_str
la $t0,label_41_v9
sw $t5,0($t0)
# Original instruction: addiu v10,$sp,-4
addiu $t5,$sp,-4
la $t0,label_42_v10
sw $t5,0($t0)
# Original instruction: sw v9,0(v10)
la $t5,label_41_v9
lw $t5,0($t5)
la $t4,label_42_v10
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v13,$fp,4
addiu $t5,$fp,4
la $t0,label_44_v13
sw $t5,0($t0)
# Original instruction: addi v12,v13,0
la $t5,label_44_v13
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_46_v12
sw $t4,0($t0)
# Original instruction: addi v11,v12,4
la $t5,label_46_v12
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_48_v11
sw $t4,0($t0)
# Original instruction: lw v14,0(v11)
la $t5,label_48_v11
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_51_v14
sw $t4,0($t0)
# Original instruction: addiu v15,$sp,-4
addiu $t5,$sp,-4
la $t0,label_52_v15
sw $t5,0($t0)
# Original instruction: sw v14,0(v15)
la $t5,label_51_v14
lw $t5,0($t5)
la $t4,label_52_v15
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v16,label_1_str
la $t5,label_1_str
la $t0,label_55_v16
sw $t5,0($t0)
# Original instruction: addiu v17,$sp,-4
addiu $t5,$sp,-4
la $t0,label_56_v17
sw $t5,0($t0)
# Original instruction: sw v16,0(v17)
la $t5,label_55_v16
lw $t5,0($t5)
la $t4,label_56_v17
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v18,label_3_str
la $t5,label_3_str
la $t0,label_59_v18
sw $t5,0($t0)
# Original instruction: addiu v19,$sp,-4
addiu $t5,$sp,-4
la $t0,label_60_v19
sw $t5,0($t0)
# Original instruction: sw v18,0(v19)
la $t5,label_59_v18
lw $t5,0($t5)
la $t4,label_60_v19
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu v21,$fp,4
addiu $t5,$fp,4
la $t0,label_62_v21
sw $t5,0($t0)
# Original instruction: addi v20,v21,8
la $t5,label_62_v21
lw $t5,0($t5)
addi $t4,$t5,8
la $t0,label_64_v20
sw $t4,0($t0)
# Original instruction: lw v22,0(v20)
la $t5,label_64_v20
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_67_v22
sw $t4,0($t0)
# Original instruction: addiu v23,$sp,-4
addiu $t5,$sp,-4
la $t0,label_68_v23
sw $t5,0($t0)
# Original instruction: sw v22,0(v23)
la $t5,label_67_v22
lw $t5,0($t5)
la $t4,label_68_v23
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_i
jal print_i
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: la v24,label_4_str
la $t5,label_4_str
la $t0,label_71_v24
sw $t5,0($t0)
# Original instruction: addiu v25,$sp,-4
addiu $t5,$sp,-4
la $t0,label_72_v25
sw $t5,0($t0)
# Original instruction: sw v24,0(v25)
la $t5,label_71_v24
lw $t5,0($t5)
la $t4,label_72_v25
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal print_s
jal print_s
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
print_epilogue:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_51_v14
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_52_v15
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_24_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_64_v20
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_44_v13
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_33_v5
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_68_v23
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_26_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_59_v18
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_38_v8
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_67_v22
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_41_v9
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_37_v7
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_46_v12
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_28_v3
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_30_v2
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_71_v24
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_23_v0
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_42_v10
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_60_v19
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_62_v21
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_72_v25
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_48_v11
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_56_v17
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_34_v6
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_55_v16
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
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: addiu v28,$fp,-12
addiu $t5,$fp,-12
la $t0,label_74_v28
sw $t5,0($t0)
# Original instruction: addi v27,v28,0
la $t5,label_74_v28
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_76_v27
sw $t4,0($t0)
# Original instruction: addi v26,v27,0
la $t5,label_76_v27
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_80_v26
sw $t4,0($t0)
# Original instruction: li v29,65
li $t5,65
la $t0,label_79_v29
sw $t5,0($t0)
# Original instruction: sb v29,0(v26)
la $t5,label_79_v29
lw $t5,0($t5)
la $t4,label_80_v26
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu v32,$fp,-12
addiu $t5,$fp,-12
la $t0,label_82_v32
sw $t5,0($t0)
# Original instruction: addi v31,v32,0
la $t5,label_82_v32
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_84_v31
sw $t4,0($t0)
# Original instruction: addi v30,v31,4
la $t5,label_84_v31
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_88_v30
sw $t4,0($t0)
# Original instruction: li v33,10
li $t5,10
la $t0,label_87_v33
sw $t5,0($t0)
# Original instruction: sw v33,0(v30)
la $t5,label_87_v33
lw $t5,0($t5)
la $t4,label_88_v30
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v35,$fp,-12
addiu $t5,$fp,-12
la $t0,label_90_v35
sw $t5,0($t0)
# Original instruction: addi v34,v35,8
la $t5,label_90_v35
lw $t5,0($t5)
addi $t4,$t5,8
la $t0,label_94_v34
sw $t4,0($t0)
# Original instruction: li v36,170
li $t5,170
la $t0,label_93_v36
sw $t5,0($t0)
# Original instruction: sw v36,0(v34)
la $t5,label_93_v36
lw $t5,0($t5)
la $t4,label_94_v34
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v37,$fp,-12
addiu $t5,$fp,-12
la $t0,label_141_v37
sw $t5,0($t0)
# Original instruction: addiu v38,$sp,-12
addiu $t5,$sp,-12
la $t0,label_144_v38
sw $t5,0($t0)
# Original instruction: lb v39,0(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,0(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: lb v39,1(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,1($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,1(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,1($t4)
# Original instruction: lb v39,2(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,2($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,2(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,2($t4)
# Original instruction: lb v39,3(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,3($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,3(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,3($t4)
# Original instruction: lb v39,4(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,4($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,4(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,4($t4)
# Original instruction: lb v39,5(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,5($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,5(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,5($t4)
# Original instruction: lb v39,6(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,6($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,6(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,6($t4)
# Original instruction: lb v39,7(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,7($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,7(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,7($t4)
# Original instruction: lb v39,8(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,8($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,8(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,8($t4)
# Original instruction: lb v39,9(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,9($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,9(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,9($t4)
# Original instruction: lb v39,10(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,10($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,10(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,10($t4)
# Original instruction: lb v39,11(v37)
la $t5,label_141_v37
lw $t5,0($t5)
lb $t4,11($t5)
la $t0,label_143_v39
sw $t4,0($t0)
# Original instruction: sb v39,11(v38)
la $t5,label_143_v39
lw $t5,0($t5)
la $t4,label_144_v38
lw $t4,0($t4)
sb $t5,11($t4)
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: jal print
jal print
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
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

