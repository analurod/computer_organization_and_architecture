# Faça um programa em assembly MIPS que leia três valores e apresente o maior dos três valores lidos seguido da mensagem “Maior: ”. 
# Implemente uma versão que consiga ler e testar vários casos de teste (CONTROLADO)

.data
    msgfinal: .asciiz "Maior: "
    msgcasos: .asciiz "Quant de casos de teste: "
.text
.globl main
 
main: 
    # Perguntar quantidade de casos
    li $v0, 4
    la $a0, msgcasos
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, $zero      # t0 = número de casos

    # Lê o primeiro número -> maior atual
    li $v0, 5
    syscall
    move $t2, $v0   # t2 = maior

    li $t1, 1       # contador = 1 (já lemos o primeiro)

loop: 
    beq $t1, $t0, end    # se contador == casos, termina

    li $v0, 5       # lê próximo número
    syscall
    move $t3, $v0

    # if (t3 > t2) maior = t3
    ble $t3, $t2, nao_maior
    move $t2, $t3
nao_maior:
    addi $t1, $t1, 1   # contador++
    j loop
end: 
    # imprime "Maior: "
    li $v0, 4
    la $a0, msgfinal
    syscall

    # imprime maior
    move $a0, $t2
    li $v0, 1
    syscall
    
    li $v0, 10
    syscall