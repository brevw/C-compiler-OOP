.data
label_8_str:
.asciiz "Animal sound\n"
.align 2
label_9_str:
.asciiz "Age: "
.align 2
label_10_str:
.asciiz "Bark\n"
.align 2
label_11_str:
.asciiz "Labrador bark\n"
.align 2
label_5_Animal_vtable:
.word label_0_Animal_init
.word label_1_Animal_speak
.word label_2_Animal_printAge
.align 2
label_6_Dog_vtable:
.word label_0_Animal_init
.word label_3_Dog_speak
.word label_2_Animal_printAge
.align 2
label_7_Labrador_vtable:
.word label_0_Animal_init
.word label_4_Labrador_speak
.word label_2_Animal_printAge
.align 2

.text
label_0_Animal_init:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
lw $t1,4($fp)
addiu $t1,$t1,4
addiu $t0,$fp,8
lw $t0,0($t0)
sw $t0,0($t1)
label_0_Animal_init_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
label_1_Animal_speak:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
la $t0,label_8_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_1_Animal_speak_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
label_2_Animal_printAge:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
la $t1,label_9_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
lw $t0,4($fp)
addiu $t0,$t0,4
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t0,10
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
label_2_Animal_printAge_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
label_3_Dog_speak:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
la $t0,label_10_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_3_Dog_speak_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
label_4_Labrador_speak:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
la $t1,label_11_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
label_4_Labrador_speak_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,-8
addiu $t0,$fp,-4
li $v0,9
li $a0,8
syscall
addiu $t1,$v0,0
la $t2,label_7_Labrador_vtable
sw $t2,0($t1)
sw $t1,0($t0)
addiu $t0,$fp,-4
lw $t0,0($t0)
lw $t3,0($t0)
lw $t3,0($t3)
li $t2,5
addiu $t1,$sp,-4
sw $t2,0($t1)
sw $t0,-8($sp)
addiu $sp,$sp,-8
jalr $t3
addiu $sp,$sp,8
addiu $t0,$fp,-4
lw $t0,0($t0)
lw $t1,0($t0)
lw $t1,8($t1)
sw $t0,-4($sp)
addiu $sp,$sp,-4
jalr $t1
addiu $sp,$sp,4
addiu $t0,$fp,-4
lw $t1,0($t0)
lw $t0,0($t1)
lw $t0,4($t0)
sw $t1,-4($sp)
addiu $sp,$sp,-4
jalr $t0
addiu $sp,$sp,4
addiu $t0,$fp,-8
addiu $t1,$fp,-4
lw $t1,0($t1)
sw $t1,0($t0)
addiu $t0,$fp,-8
lw $t1,0($t0)
lw $t0,0($t1)
lw $t0,4($t0)
sw $t1,-4($sp)
addiu $sp,$sp,-4
jalr $t0
addiu $sp,$sp,4
main_epilogue:
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

