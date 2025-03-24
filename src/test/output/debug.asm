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
la $t1,array_size
lw $t6,0($t1)
addi $t1,$zero,1
addi $t0,$zero,0
la $t2,array1
init_array1_loop:
sw $t1,0($t2)
addi $t1,$t1,1
addi $t2,$t2,4
addi $t0,$t0,1
slt $t0,$t0,$t6
bne $t0,$zero,init_array1_loop
addi $t0,$zero,20
addi $t2,$zero,0
la $t1,array2
init_array2_loop:
sw $t0,0($t1)
addi $t0,$t0,-1
addi $t1,$t1,4
addi $t2,$t2,1
slt $t0,$t2,$t6
bne $t0,$zero,init_array2_loop
addi $t5,$zero,0
addi $t3,$zero,0
la $t4,array1
la $t2,array2
compute_loop:
lw $t0,0($t4)
lw $t1,0($t2)
mul $t0,$t0,$t1
add $t5,$t5,$t0
addi $t3,$t3,1
addi $t4,$t4,4
addi $t2,$t2,4
slt $t0,$t3,$t6
bne $t0,$zero,compute_loop
addi $v0,$zero,4
la $a0,result_msg
syscall
addi $v0,$zero,1
addi $a0,$t5,0
syscall
addi $v0,$zero,4
la $a0,newline
syscall
addi $v0,$zero,10
syscall

