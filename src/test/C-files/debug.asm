.data

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,0
addi v0, $zero, 0
addi v1, $zero, 1
addi v2, $zero, 2
addi v3, $zero, 3
addi v0, v0, 1
addi v1, v1, 1
addi v2, v2, 1
addi v3, v3, 1
add v0, v0, v0
add v1, v1, v1
add v2, v2, v2
add v3, v3, v3
addiu $sp, $sp, -4
sw v0, 0($sp)
jal print_i
sw v1, 0($sp)
jal print_i
sw v2, 0($sp)
jal print_i
sw v3, 0($sp)
jal print_i
li $v0,10
syscall

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

