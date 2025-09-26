# Faça um programa em assembly MIPS que leia três valores e apresente o maior dos três valores lidos seguido da mensagem “Maior: ”. 
# Utilizando fórmula : (a+b)+|a-b| / 2

.data
    a: .word 0
    b: .word 0
    c: .word 0
    msg: .asciiz "Maior: "
.text
.globl main
 
main: 
    # Leitura do primeiro num
    li $v0, 5 
    syscall
    sw $v0, a
 
    # Leitura do segundo num
    li $v0, 5 
    syscall
    sw $v0, b
 
    # Leitura do terceiro num
    li $v0, 5 
    syscall
    sw $v0, c
 
    # Carregar var em registradores
    lw $t0, a
    lw $t1, b
    lw $t2, c
 
    # max(a, b)
    add $t3, $t0, $t1      # a+b
    sub $t4, $t0, $t1      # a-b
    jal abs                # t4 = |a-b|
    add $t3, $t3, $t4      # (a+b)+|a-b|
    sra $t5, $t3, 1        # max(a,b) em t5

    # max(max(a,b), c)
    add $t3, $t5, $t2      # max(a,b)+c
    sub $t4, $t5, $t2      # max(a,b)-c
    jal abs                # t4 = |max(a,b)-c|
    add $t3, $t3, $t4
    sra $t5, $t3, 1        # max(a,b,c) em t5
print:
    li $v0, 4 
    la $a0, msg
    syscall
 
    move $a0, $t5
    li $v0, 1
    syscall 
end: 
    li $v0, 10
    syscall

# função abs 
abs:
    bltz $t4, neg # se $t4 < 0 -> neg
    jr $ra
neg:
    sub $t4, $zero, $t4 #   inverte sinal
    jr $ra
