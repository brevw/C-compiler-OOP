.data
msg:
.asciiz "Result: "

.text
.globl main
main:
li $v0, 5
syscall
addi v0, $v0, 0
li v1, 1
li v2, 1
loop:
mul v1, v1, v2
addi v2, v2, 1
addi v3, v0, 100
sub v4, v0, v2
blt v2, v0, loop
li $v0, 4
la $a0, msg
syscall
li $v0, 1
addi $a0, v1, 0
syscall
li $v0, 10
syscall
