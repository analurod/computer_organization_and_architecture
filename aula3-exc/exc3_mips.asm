# Exercícios introdutórios: MIPS
# Inicialize 3 registradores com números inteiros quaisquer e verifique se
# correspondem a uma sequencia em potencia de 2 (imprima uma mensagem com os números e se são potência de 2)

.data
msg:     .asciiz " é potência de 2\n"
msgnao:  .asciiz " não é potência de 2\n"
sep:     .asciiz ": "

.text
.globl main

main:
    # Inicializa 3 números
    li $t0, 20
    li $t1, 16
    li $t2, 8

    # Verifica cada número
    move $a0, $t0
    jal check_pow2
    move $a0, $t1
    jal check_pow2
    move $a0, $t2
    jal check_pow2

    li $v0, 10
    syscall

# Função check_pow2
# Recebe número em $a0 e imprime: "<numero>: é ou não é potência de 2"
check_pow2:
    # Salva número em registrador temporário para teste
    move $t6, $a0

    # Imprime o número
    li $v0, 1
    syscall

    # Imprime separador ": "
    li $v0, 4
    la $a0, sep
    syscall

    # Verifica se zero
    beq $t6, $zero, nao

    # Verifica (x & (x-1)) == 0
    add $t3, $t6, $zero
    addi $t4, $t3, -1
    and $t5, $t3, $t4
    beq $t5, $zero, pot

nao:
    li $v0, 4
    la $a0, msgnao
    syscall
    jr $ra

pot:
    li $v0, 4
    la $a0, msg
    syscall
    jr $ra
