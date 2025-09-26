# Faça um programa em assembly MIPS que leia três valores e apresente o maior dos três valores lidos seguido da mensagem “Maior: ”. 
# Utilizando comparações

.data
    num1: .word 0
    num2: .word 0
    num3: .word 0
    msg: .asciiz "Maior: "
.text
.globl main
 
main: 
    # Leitura do primeiro num
    li $v0, 5 
    syscall
    sw $v0, num1
 
    # Leitura do segundo num
    li $v0, 5 
    syscall
    sw $v0, num2
 
    # Leitura do terceiro num
    li $v0, 5 
    syscall
    sw $v0, num3
 
    # Carregar var em registradores
    lw $t0, num1
    lw $t1, num2
    lw $t2, num3
 
    bgt $t0, $t1, num_maior1  # se num1 > num2, vai para num_maior1
    bgt $t2, $t1, num_maior2  # se num1 < num2 e num3 > num2, vai para num_maior2
 
    
    # se num2 > num3 e num2 > num1
    li $v0, 4 
    la $a0, msg  # Imprime 'Maior: '
    syscall
 
    add $a0, $t1, $zero            
    li $v0, 1 # Imprime $t1
    syscall
    j end     # Pula para end
 
#se num1 > num2
num_maior1:  
    bgt $t2, $t0, num_maior2  # se num3 > num1, vai para num_maior2
 
    # se num1 > num2 e num1 > num3
    li $v0, 4 
    la $a0, msg  # Imprime 'Maior: '
    syscall
 
    add $a0, $t0, $zero
    li $v0, 1 # Imprime $t0
    syscall
    j end     # Pula para end
 
# se num1 > num2 e num3 > num1
num_maior2:
    li $v0, 4 
    la $a0, msg  # Imprime 'Maior: '
    syscall
 
    add $a0, $t2, $zero
    li $v0, 1    # Imprime $t0
    syscall
    j end        # Pula para end

end: 
    li $v0, 10    # Exit call system
    syscall