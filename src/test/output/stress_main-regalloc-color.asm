.data
label_0_str:
.asciiz "Inside function\n"
.align 2

.text
function:
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
la $t1,label_0_str
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $t0,$fp,16
addi $t0,$t0,0
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
addiu $t0,$fp,16
addi $t0,$t0,4
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t0,$fp,16
addi $t0,$t0,8
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t0,10
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t0,$fp,28
addi $t0,$t0,0
lb $t1,0($t0)
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t0,$fp,28
addi $t0,$t0,4
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
addiu $t0,$fp,28
addi $t0,$t0,8
lb $t1,0($t0)
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
li $t1,10
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t0,$fp,40
addi $t0,$t0,0
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
addiu $t0,$fp,40
addi $t0,$t0,4
lb $t1,0($t0)
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t0,$fp,40
addi $t0,$t0,8
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t1,10
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t0,$fp,52
addi $t0,$t0,0
lb $t1,0($t0)
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t0,$fp,52
addi $t0,$t0,4
addi $t0,$t0,0
lb $t0,0($t0)
addiu $t1,$sp,-4
sb $t0,0($t1)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t0,$fp,52
addi $t0,$t0,4
addi $t0,$t0,4
lw $t0,0($t0)
addiu $t1,$sp,-4
sw $t0,0($t1)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
addiu $t0,$fp,52
addi $t0,$t0,4
addi $t0,$t0,8
lb $t1,0($t0)
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t0,$fp,52
addi $t0,$t0,16
lw $t1,0($t0)
addiu $t0,$sp,-4
sw $t1,0($t0)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
li $t1,10
addiu $t0,$sp,-4
sb $t1,0($t0)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
addiu $t0,$fp,28
addi $t0,$t0,0
li $t1,97
sb $t1,0($t0)
addiu $t2,$fp,28
addi $t1,$fp,4
lb $t0,0($t2)
sb $t0,0($t1)
lb $t0,1($t2)
sb $t0,1($t1)
lb $t0,2($t2)
sb $t0,2($t1)
lb $t0,3($t2)
sb $t0,3($t1)
lb $t0,4($t2)
sb $t0,4($t1)
lb $t0,5($t2)
sb $t0,5($t1)
lb $t0,6($t2)
sb $t0,6($t1)
lb $t0,7($t2)
sb $t0,7($t1)
lb $t0,8($t2)
sb $t0,8($t1)
lb $t0,9($t2)
sb $t0,9($t1)
lb $t0,10($t2)
sb $t0,10($t1)
lb $t0,11($t2)
sb $t0,11($t1)
j function_epilogue
function_epilogue:
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
addiu $sp,$sp,-56
addiu $t0,$fp,-12
addi $t0,$t0,0
li $t1,1
sw $t1,0($t0)
addiu $t0,$fp,-12
addi $t1,$t0,4
li $t0,120
sb $t0,0($t1)
addiu $t0,$fp,-12
addi $t1,$t0,8
li $t0,2
sw $t0,0($t1)
addiu $t0,$fp,-24
addi $t0,$t0,0
li $t1,121
sb $t1,0($t0)
addiu $t0,$fp,-24
addi $t0,$t0,4
li $t1,3
sw $t1,0($t0)
addiu $t0,$fp,-24
addi $t0,$t0,8
li $t1,122
sb $t1,0($t0)
addiu $t0,$fp,-36
addi $t1,$t0,0
li $t0,4
sw $t0,0($t1)
addiu $t0,$fp,-36
addi $t0,$t0,4
li $t1,119
sb $t1,0($t0)
addiu $t0,$fp,-36
addi $t1,$t0,8
li $t0,5
sw $t0,0($t1)
addiu $t0,$fp,-56
addi $t0,$t0,0
li $t1,122
sb $t1,0($t0)
addiu $t0,$fp,-56
addi $t0,$t0,4
addiu $t1,$fp,-24
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
addiu $t0,$fp,-56
addi $t0,$t0,16
li $t1,6
sw $t1,0($t0)
addiu $t3,$fp,-24
addiu $t2,$fp,-56
addiu $t1,$sp,-20
lb $t0,0($t2)
sb $t0,0($t1)
lb $t0,1($t2)
sb $t0,1($t1)
lb $t0,2($t2)
sb $t0,2($t1)
lb $t0,3($t2)
sb $t0,3($t1)
lb $t0,4($t2)
sb $t0,4($t1)
lb $t0,5($t2)
sb $t0,5($t1)
lb $t0,6($t2)
sb $t0,6($t1)
lb $t0,7($t2)
sb $t0,7($t1)
lb $t0,8($t2)
sb $t0,8($t1)
lb $t0,9($t2)
sb $t0,9($t1)
lb $t0,10($t2)
sb $t0,10($t1)
lb $t0,11($t2)
sb $t0,11($t1)
lb $t0,12($t2)
sb $t0,12($t1)
lb $t0,13($t2)
sb $t0,13($t1)
lb $t0,14($t2)
sb $t0,14($t1)
lb $t0,15($t2)
sb $t0,15($t1)
lb $t0,16($t2)
sb $t0,16($t1)
lb $t0,17($t2)
sb $t0,17($t1)
lb $t0,18($t2)
sb $t0,18($t1)
lb $t0,19($t2)
sb $t0,19($t1)
addiu $t0,$fp,-36
addiu $t1,$sp,-32
lb $t2,0($t0)
sb $t2,0($t1)
lb $t2,1($t0)
sb $t2,1($t1)
lb $t2,2($t0)
sb $t2,2($t1)
lb $t2,3($t0)
sb $t2,3($t1)
lb $t2,4($t0)
sb $t2,4($t1)
lb $t2,5($t0)
sb $t2,5($t1)
lb $t2,6($t0)
sb $t2,6($t1)
lb $t2,7($t0)
sb $t2,7($t1)
lb $t2,8($t0)
sb $t2,8($t1)
lb $t2,9($t0)
sb $t2,9($t1)
lb $t2,10($t0)
sb $t2,10($t1)
lb $t2,11($t0)
sb $t2,11($t1)
addiu $t1,$fp,-24
addiu $t0,$sp,-44
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
addiu $t0,$fp,-12
addiu $t2,$sp,-56
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
lb $t1,8($t0)
sb $t1,8($t2)
lb $t1,9($t0)
sb $t1,9($t2)
lb $t1,10($t0)
sb $t1,10($t2)
lb $t1,11($t0)
sb $t1,11($t2)
addiu $sp,$sp,-56
addiu $sp,$sp,-12
jal function
addi $t0,$sp,0
addiu $sp,$sp,68
lb $t1,0($t0)
sb $t1,0($t3)
lb $t1,1($t0)
sb $t1,1($t3)
lb $t1,2($t0)
sb $t1,2($t3)
lb $t1,3($t0)
sb $t1,3($t3)
lb $t1,4($t0)
sb $t1,4($t3)
lb $t1,5($t0)
sb $t1,5($t3)
lb $t1,6($t0)
sb $t1,6($t3)
lb $t1,7($t0)
sb $t1,7($t3)
lb $t1,8($t0)
sb $t1,8($t3)
lb $t1,9($t0)
sb $t1,9($t3)
lb $t1,10($t0)
sb $t1,10($t3)
lb $t1,11($t0)
sb $t1,11($t3)
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

