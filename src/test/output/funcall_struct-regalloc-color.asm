.data
label_0_str:
.asciiz "Point 1: ("
.align 2
label_1_str:
.asciiz ", "
.align 2
label_2_str:
.asciiz ")\n"
.align 2
label_3_str:
.asciiz "Point 2: ("
.align 2
label_4_str:
.asciiz "Squared Distance: "
.align 2
label_5_str:
.asciiz "\n"
.align 2

.text
calculate_distance:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
addiu $sp,$sp,-4
sw $t1,0($sp)
addiu $sp,$sp,-4
sw $t0,0($sp)
addiu $sp,$sp,-4
sw $t2,0($sp)
addiu $t0,$fp,8
addi $t0,$t0,0
lw $t1,0($t0)
addiu $t0,$fp,16
addi $t0,$t0,0
lw $t0,0($t0)
sub $t0,$t1,$t0
addi $t2,$t0,0
addiu $t0,$fp,8
addi $t0,$t0,4
lw $t1,0($t0)
addiu $t0,$fp,16
addi $t0,$t0,4
lw $t0,0($t0)
sub $t0,$t1,$t0
addi $t0,$t0,0
mul $t1,$t2,$t2
mul $t0,$t0,$t0
add $t0,$t1,$t0
addi $t1,$fp,4
sw $t0,0($t1)
j calculate_distance_epilogue
calculate_distance_epilogue:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
lw $t0,0($sp)
addiu $sp,$sp,4
lw $t1,0($sp)
addiu $sp,$sp,4
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
print_distance:
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
addiu $sp,$sp,-4
sw $t2,0($sp)
la $t0,label_0_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,12
addi $t0,$t0,0
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t1,label_1_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,12
addi $t0,$t0,4
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t1,label_2_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,label_3_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,4
addi $t0,$t0,0
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
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
addi $t0,$t0,4
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t1,label_2_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la $t0,label_4_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t2,$fp,12
addiu $t0,$sp,-8
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
addiu $t1,$fp,4
addiu $t2,$sp,-16
lb $t0,0($t1)
sb $t0,0($t2)
lb $t0,1($t1)
sb $t0,1($t2)
lb $t0,2($t1)
sb $t0,2($t2)
lb $t0,3($t1)
sb $t0,3($t2)
lb $t0,4($t1)
sb $t0,4($t2)
lb $t0,5($t1)
sb $t0,5($t2)
lb $t0,6($t1)
sb $t0,6($t2)
lb $t0,7($t1)
sb $t0,7($t2)
addiu $sp,$sp,-16
addiu $sp,$sp,-4
jal calculate_distance
addi $t0,$sp,0
lw $t1,0($t0)
addiu $sp,$sp,20
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la $t0,label_5_str
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
print_distance_epilogue:
# Original instruction: popRegisters
lw $t2,0($sp)
addiu $sp,$sp,4
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
addiu $sp,$sp,-16
addiu $t0,$fp,-8
addi $t1,$t0,0
li $t0,10
sw $t0,0($t1)
addiu $t0,$fp,-8
addi $t0,$t0,4
li $t1,20
sw $t1,0($t0)
addiu $t0,$fp,-16
addi $t0,$t0,0
li $t1,30
sw $t1,0($t0)
addiu $t0,$fp,-16
addi $t1,$t0,4
li $t0,40
sw $t0,0($t1)
addiu $t0,$fp,-8
addiu $t2,$sp,-8
lb $t1,0($t0)
sb $t1,0($t2)
lb $t1,1($t0)
sb $t1,1($t2)
lb $t1,2($t0)
sb $t1,2($t2)
lb $t1,3($t0)
sb $t1,3($t2)
lb $t1,4($t0)
sb $t1,4($t2)
lb $t1,5($t0)
sb $t1,5($t2)
lb $t1,6($t0)
sb $t1,6($t2)
lb $t1,7($t0)
sb $t1,7($t2)
addiu $t1,$fp,-16
addiu $t0,$sp,-16
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
addiu $sp,$sp,-16
jal print_distance
addiu $sp,$sp,16
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

