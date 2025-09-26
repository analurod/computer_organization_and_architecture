# Exercício introdutório: MIPS
# Leia um número inteiro e, se for maior que zero, imprima o dobro.

.data
    num: .word 0             # Reserva uma palavra (4 bytes) para armazenar o número lido
    msg: .asciiz "Dobro: "  

.text
.globl main

main:
    # 1. Ler um número inteiro do usuário
    li $v0, 5          # Leitura de inteiro
    syscall            
    
    # 2. Guardar o número lido na memória (em 'num')
    la $t0, num         # carrega o ENDEREÇO de 'num' em $t0
    sw $v0, 0($t0)      # salva o valor lido ($v0) em num

    # 3. Carregar o valor em um registrador para processamento
    lw $t1, 0($t0)      # $t1 = num

    # 4. Verificar se o número é maior que zero
    blez $t1, end       # se $t1 <= 0, pula para end

    # 5. Calcular o dobro
    add $t2, $t1, $t1   

    # 6. Imprimir mensagem "Dobro: "
    li $v0, 4           # imprime string
    la $a0, msg
    syscall

    # 7. Imprimir o dobro
    move $a0, $t2       # move resultado para $a0
    li $v0, 1           # imprime inteiro
    syscall

end:
    # 8. Encerrar o programa
    li $v0, 10          # exit
    syscall
