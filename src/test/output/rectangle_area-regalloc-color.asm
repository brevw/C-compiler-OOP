.data
label_0_str:
.asciiz "Rectangle Dimensions: "
.align 2
label_1_str:
.asciiz " (width) x "
.align 2
label_2_str:
.asciiz " (height)\n"
.align 2
label_3_str:
.asciiz "Area: "
.align 2
label_4_str:
.asciiz "\n"
.align 2

.text
calculate_area:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $t0,$fp,8
addi $t0,$t0,4
lw $t0,0($t0)
addiu $t1,$fp,8
addi $t1,$t1,8
lw $t1,0($t1)
mul $t0,$t0,$t1
addi $t1,$fp,4
sw $t0,0($t1)
j calculate_area_epilogue
calculate_area_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
print_rectangle:
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
sw $t2,0($sp)
addiu $sp,$sp,-4
sw $t1,0($sp)
la $t1,label_0_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
addi $t0,$t0,4
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_1_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
addi $t0,$t0,8
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_2_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,label_3_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$fp,4
addiu $t0,$sp,-12
lb $t1,0($t2)
sb $t1,0($t0)
lb $t1,1($t2)
sb $t1,1($t0)
lb $t1,2($t2)
sb $t1,2($t0)
lb $t1,3($t2)
sb $t1,3($t0)
lb $t1,4($t2)
sb $t1,4($t0)
lb $t1,5($t2)
sb $t1,5($t0)
lb $t1,6($t2)
sb $t1,6($t0)
lb $t1,7($t2)
sb $t1,7($t0)
lb $t1,8($t2)
sb $t1,8($t0)
lb $t1,9($t2)
sb $t1,9($t0)
lb $t1,10($t2)
sb $t1,10($t0)
lb $t1,11($t2)
sb $t1,11($t0)
addiu $sp,$sp,-12
addiu $sp,$sp,-4
jal calculate_area
addi $t0,$sp,0
lw $t0,0($t0)
addiu $sp,$sp,16
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_4_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
print_rectangle_epilogue:
# Original instruction: popRegisters
lw $t1,0($sp)
addiu $sp,$sp,4
lw $t2,0($sp)
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
addiu $sp,$sp,-12
addiu $t0,$fp,-12
addi $t0,$t0,4
li $t1,5
sw $t1,0($t0)
addiu $t0,$fp,-12
addi $t1,$t0,8
li $t0,10
sw $t0,0($t1)
addiu $t1,$fp,-12
addiu $t0,$sp,-12
lb $t2,0($t1)
sb $t2,0($t0)
lb $t2,1($t1)
sb $t2,1($t0)
lb $t2,2($t1)
sb $t2,2($t0)
lb $t2,3($t1)
sb $t2,3($t0)
lb $t2,4($t1)
sb $t2,4($t0)
lb $t2,5($t1)
sb $t2,5($t0)
lb $t2,6($t1)
sb $t2,6($t0)
lb $t2,7($t1)
sb $t2,7($t0)
lb $t2,8($t1)
sb $t2,8($t0)
lb $t2,9($t1)
sb $t2,9($t0)
lb $t2,10($t1)
sb $t2,10($t0)
lb $t2,11($t1)
sb $t2,11($t0)
addiu $sp,$sp,-12
jal print_rectangle
addiu $sp,$sp,12
j main_epilogue
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

