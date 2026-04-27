# AOC  
[English Version](https://github.com/analurod/computer_organization_and_architecture/blob/main/englishversion.md)<br>

Este repositório contém exercícios práticos da disciplina **Arquitetura e Organização de Computadores (AOC)**.  
O objetivo é consolidar conceitos aprendidos em aula, como **assembly, organização de memória, instruções de máquina, manipulação de registradores e estruturas básicas de hardware**.  

---

## 📌 Informações Gerais  

- **Disciplina:** Arquitetura e Organização de Computadores (AOC)
- **Período:** 2025.2  

---

## 👩‍🎓 Aluna  

- **Nome:** Ana Luisa  
- **Turma:** Noturno  

---

## 🔑 Funcionalidades  
- 📌 **Exercícios em Assembly**: Programas desenvolvidos para praticar instruções.  
- 📌 **Comentários Explicativos**: Cada código contém anotações para facilitar a compreensão do funcionamento.  

---

## 🛠️ Tecnologias Utilizadas  
- **Assembly MIPS** (para simulações no MARS/SPIM)  
- **Assembly x86** (para exercícios de arquitetura tradicional)  
- **MARS / SPIM** (simuladores para MIPS)  

---

## 📂 Conteúdos das Pastas de Exercícios
### 📂 Aula 1 – Simulador 8 bits  
Exercícios baseados na string `"Hello World!"`, utilizando o [Simulador 8 bits](https://schweigi.github.io/assembler-simulator/).  

- **Exercício 1** → Imprime caracteres em **posição par** da string.  
- **Exercício 2** → Imprime caracteres em **posição ímpar** da string.  
- **Exercício 3** → Imprime apenas os caracteres `'O'` e `'o'`.  
- **Exercício 4** → Imprime a string **de trás para frente**.  
- **Exercício 5** → Imprime `'o'` e `'O'`, substituindo os demais caracteres por **espaços**.  

➡️ **Conceitos praticados**: manipulação de ponteiros, filtragem de caracteres, impressão reversa e uso de ASCII.  

### 📂 Aula 3 – Exercícios em MIPS  
Exercícios básicos em **Assembly MIPS**, focados em entrada/saída, operações aritméticas e condições.  

- **Exercício 1** → Lê um número; se for positivo, imprime o **dobro**.  
- **Exercício 2** → Lê 3 números e imprime a **soma dos dois menores**.  
- **Exercício 3** → Verifica se números são **potências de 2**, usando `(x & (x-1)) == 0`.  

➡️ **Conceitos praticados**: condições simples, comparações, laços, sub-rotinas e operações bit a bit.  

### 📂 Aula 4 – Exercícios em MIPS  
Todos os exercícios têm como objetivo encontrar o **maior valor** entre entradas, mas utilizando abordagens diferentes.  

- **Exercício 1** → Comparações diretas com **desvios condicionais (`bgt`)**.  
- **Exercício 2** → Usa a fórmula matemática:  
  \[
  \text{max}(a, b) = \frac{(a+b) + |a-b|}{2}
  \]  
- **Exercício 3** → Loop controlado: lê **N valores** definidos pelo usuário e imprime o maior.  
- **Exercício 4** → Loop com sentinela: lê valores até o usuário digitar **0**, e imprime o maior.  

➡️ **Conceitos praticados**: estruturas de decisão, funções, loops com contador, loops com sentinela.  

---

## Executando os Códigos  
1. Baixe ou clone este repositório:  
   ```bash
   git clone https://github.com/usuario/exercicios-aoc.git
2. Abra o simulador correspondente (MARS/SPIM/NASM).
3. Carregue o arquivo .asm e execute.


