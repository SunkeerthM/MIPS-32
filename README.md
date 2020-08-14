# MIPS-32

MIPS (Microprocessor without Interlocked Pipelined Stages) is a reduced instruction set computer (RISC) instruction set architecture (ISA) developed by MIPS Computer Systems, now MIPS Technologies, based in the United States.

![Image of MIPS architecture](https://i.imgur.com/6R3Xz.png)

## Components
###   Combinational
- [x] MUX
- [x] Sign - Extender
- [ ] Adder
- [x] ALU
- [ ] ALU Control
- [ ] PC updte Control

 ###  State
- [ ] Program Counter
- [ ] Register
- [ ] Program Memory 
- [ ] Data Memory
------------------------------------------------------------------
#### ALU
Function | ALU Control | Semantics
------------| ------------------|-------------------------
AND | 0000  |   F = A and B (bitwise AND); Z update, V,C = zero
OR  | 0001	 |   F = A or B (bitwise OR); Z update, V,C = zero
add | 0010 	|   F = A + B; Z,V,C update
sub | 0110	 |   F = A - B; Z,V,C update
slt	| 0111	 |   F = (A < B) ? 1 : 0
NOR	| 1100  |   F = ~ ( A or B ) (bitwise NOR); Z update, V,C = zero
