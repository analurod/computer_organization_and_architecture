; Exercícios - Simulador 8 bits (https://schweigi.github.io/assembler-simulator/)
; Baseado no exemplo inicial do simulador (print "Hello World!"),  imprima a string de trás para a frente.

JMP start
       DB 0   ; sentinela do inicio
hello: DB "Hello World!"
       DB 0   ; terminador

start:
    MOV C, hello    ; endereço da string
    MOV D, 232      ; saída
    CALL print_reverse
    HLT

print_reverse:        
    PUSH A
    PUSH B
    MOV B, 0
    
.find_end:
    MOV A, [C]      ; pega caractere atual
    CMP B, A      ; é o terminador?
    JZ .go_back    ; se sim, chama "volta"
    INC C           ; se não, incrementa
    JMP .find_end   ; repete
.go_back:
    DEC C           ; recua 1 (para o último caractere válido)

; imprime
.loop:
    MOV A, [C]
    CMP A, B            ; segurança (não deve imprimir o terminador)
    JZ .end

    MOV [D], A           ; imprime
    INC D

    DEC C                ; vai para o caractere anterior
    JMP .loop
.end:
    POP B
    POP A
    RET