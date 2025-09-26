; Exercícios - Simulador 8 bits (https://schweigi.github.io/assembler-simulator/)
; Baseado no exemplo inicial do simulador (print "Hello World!"), imprima os caracteres em posição par da string.

JMP start
hello: DB "Hello World!"
       DB 0   ; terminador

start:
    MOV C, hello    ; endereço da string
    MOV D, 232      ; saída
    CALL print_pares
    HLT

print_pares:        
    PUSH A
    PUSH B
    MOV B, 0
.loop:
    MOV A, [C]      ; pega caractere atual
    MOV [D], A      ; escreve na saída
    INC D           ; avança saída
    ADD C, 2        ; avança 2 posições na string (pula ímpar)
    CMP B, [C]      ; chegou no terminador?
    JNZ .loop
    POP B
    POP A
    RET