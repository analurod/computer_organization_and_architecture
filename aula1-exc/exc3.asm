; Exercícios - Simulador 8 bits (https://schweigi.github.io/assembler-simulator/)
; Baseado no exemplo inicial do simulador (print "Hello World!"), imprima apenas os caracteres minúsculos

JMP start
hello: DB "Hello World!"
       DB 0   ; terminador

start:
    MOV C, hello    ; endereço da string
    MOV D, 232      ; saída
    CALL print_O:
    HLT

print_O:        
    PUSH A
    PUSH B
    MOV B, 0
.loop:
    MOV A, [C]      ; pega caractere atual
    CMP B, A        ; é o terminador?
    JZ .end

    CMP A, 79       ; A = 'O'
    JZ .print      ; se A == 79, é 'O' maiúscula

    CMP A, 111           ; A = 'o'
    JZ .print            ; se A == 111, é 'o' minúscula

.skip:                   ; não é letra 'o' ou 'O' -> pula
    INC C
    JMP .loop

.print:                  ; é minúscula -> imprime
    MOV [D], A
    INC D
    INC C
    JMP .loop

.end:
    POP B
    POP A
    RET