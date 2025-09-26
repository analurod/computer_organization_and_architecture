# Faça um programa em assembly MIPS que leia três valores e apresente o maior dos três valores lidos seguido da mensagem “Maior: ”. 
# Implemente uma versão que consiga ler e testar vários casos de teste (Sem número prévio / até digitar zero)

.data
    msg_inicial: .asciiz "Digite numeros (0 para parar): "
    msgfinal:   .asciiz "Maior: "
.text
.globl main

main:
    # mensagem inicial
    li $v0, 4
    la $a0, msg_inicial
    syscall

    # lê o primeiro número
    li $v0, 5
    syscall
    move $t0, $v0       # t0 = maior

    beq $t0, $zero, end # se for 0, encerra sem comparar

loop:
    li $v0, 5
    syscall
    move $t1, $v0

    beq $t1, $zero, print # se for 0, termina e imprime

    ble $t1, $t0, nao_maior # se t1 <= t0, não atualiza
    move $t0, $t1           # senão, t0 = t1
nao_maior:
    j loop
print:
    li $v0, 4
    la $a0, msgfinal
    syscall

    move $a0, $t0
    li $v0, 1
    syscall
end:
    li $v0, 10
    syscall
