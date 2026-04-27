# AOC  

This repository contains practical exercises from the **Computer Organization and Architecture (COA)** course.  
The goal is to reinforce concepts learned in class, such as **assembly, memory organization, machine instructions, register manipulation, and basic hardware structures**.  

---

## 📌 General Information  

- **Course:** Computer Organization and Architecture (COA)  
- **Term:** 2025.2  

---

## 👩‍🎓 Student  

- **Name:** Ana Luisa  
- **Class:** Evening  

---

## 🔑 Features  
- 📌 **Assembly Exercises**: Programs developed to practice instructions.  
- 📌 **Explanatory Comments**: Each code includes annotations to make understanding easier.  

---

## 🛠️ Technologies Used  
- **MIPS Assembly** (for simulations in MARS/SPIM)  
- **x86 Assembly** (for traditional architecture exercises)  
- **MARS / SPIM** (MIPS simulators)  

---

## 📂 Exercise Folder Contents

### 📂 Lesson 1 – 8-bit Simulator  
Exercises based on the string `"Hello World!"`, using the [8-bit Simulator](https://schweigi.github.io/assembler-simulator/).  

- **Exercise 1** → Prints characters at **even positions** in the string.  
- **Exercise 2** → Prints characters at **odd positions** in the string.  
- **Exercise 3** → Prints only the characters `'O'` and `'o'`.  
- **Exercise 4** → Prints the string **in reverse order**.  
- **Exercise 5** → Prints `'o'` and `'O'`, replacing other characters with **spaces**.  

➡️ **Concepts practiced**: pointer manipulation, character filtering, reverse printing, and ASCII usage.  

### 📂 Lesson 3 – MIPS Exercises  
Basic **MIPS Assembly** exercises focused on input/output, arithmetic operations, and conditions.  

- **Exercise 1** → Reads a number; if positive, prints its **double**.  
- **Exercise 2** → Reads 3 numbers and prints the **sum of the two smallest**.  
- **Exercise 3** → Checks if numbers are **powers of 2**, using `(x & (x-1)) == 0`.  

➡️ **Concepts practiced**: simple conditions, comparisons, loops, subroutines, and bitwise operations.  

### 📂 Lesson 4 – MIPS Exercises  
All exercises aim to find the **maximum value** among inputs, using different approaches.  

- **Exercise 1** → Direct comparisons using **conditional branches (`bgt`)**.  
- **Exercise 2** → Uses the mathematical formula:  
  \[
  \text{max}(a, b) = \frac{(a+b) + |a-b|}{2}
  \]  
- **Exercise 3** → Controlled loop: reads **N values** defined by the user and prints the maximum.  
- **Exercise 4** → Sentinel loop: reads values until the user enters **0**, then prints the maximum.  

➡️ **Concepts practiced**: decision structures, functions, counter-controlled loops, sentinel loops.  
