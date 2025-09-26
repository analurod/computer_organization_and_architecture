# Exercícios introdutórios: MIPS
# Leia 3 números e imprima a soma dos dois menores.

.data
    num:  .word 0
    num1: .word 0
    num2: .word 0

.text
.globl main

main:
    # --- Leitura do 1º número ---
    li $v0, 5
    syscall
    sw $v0, num       # salva em num

    # --- Leitura do 2º número ---
    li $v0, 5
    syscall
    sw $v0, num1      # salva em num1

    # --- Leitura do 3º número ---
    li $v0, 5
    syscall
    sw $v0, num2      # salva em num2

    # --- Carregar em registradores ---
    lw $t0, num       # t0 = num
    lw $t1, num1      # t1 = num1
    lw $t2, num2      # t2 = num2

    # --- Soma total ---
    add $t3, $t0, $t1
    add $t3, $t3, $t2   # t3 = num + num1 + num2

    # --- Encontrar o maior ---
    add $t4, $t0, $zero   # maior = t0

    bge $t1, $t4, maior1
    j check2
maior1:
    add $t4, $t1, $zero   # maior = t1
check2:
    bge $t2, $t4, maior2
    j soma_final
maior2:
    add $t4, $t2, $zero   # maior = t2

soma_final:
    # --- Soma dos dois menores = soma total - maior ---
    sub $t5, $t3, $t4

    # --- Imprimir resultado ---
    add $a0, $t5, $zero   # "move" sem usar move
    li $v0, 1
    syscall

end:
    li $v0, 10
    syscall
