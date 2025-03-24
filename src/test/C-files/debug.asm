.data
array1:
.space 80
array2:
.space 80
array_size:
.word 20
result_msg:
.asciiz "Sum of products: "
.align 2
newline:
.asciiz "\n"
.align 2

.text
.globl main

main:
la v1, array_size
lw v0, 0(v1)
addi v1, $zero, 1
addi v2, $zero, 0
la v3, array1
init_array1_loop:
sw v1, 0(v3)
addi v1, v1, 1
addi v3, v3, 4
addi v2, v2, 1
slt v4, v2, v0
bne v4, $zero, init_array1_loop

addi v5, $zero, 20
addi v6, $zero, 0
la v7, array2
init_array2_loop:
sw v5, 0(v7)
addi v5, v5, -1
addi v7, v7, 4
addi v6, v6, 1
slt v8, v6, v0
bne v8, $zero, init_array2_loop
addi v9, $zero, 0
addi v10, $zero, 0
la v11, array1
la v12, array2
compute_loop:
lw v13, 0(v11)
lw v14, 0(v12)
mul v15, v13, v14
add v9, v9, v15
addi v10, v10, 1
addi v11, v11, 4
addi v12, v12, 4
slt v16, v10, v0
bne v16, $zero, compute_loop
addi $v0, $zero, 4
la $a0, result_msg
syscall
addi $v0, $zero, 1
addi $a0, v9, 0
syscall
addi $v0, $zero, 4
la $a0, newline
syscall
addi $v0, $zero, 10
syscall
