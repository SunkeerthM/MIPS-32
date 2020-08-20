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
- [x] Register File


 ###  State
- [ ] Program Counter
- [ ] Register
- [ ] Program Memory 
- [ ] Data Memory
------------------------------------------------------------------
#### ALU 
[Reference](http://personal.denison.edu/~bressoud/cs281-s08/homework/MIPSALU.html)

Function | ALU Control | Semantics
---------|-------------|----------------------------------------------------------------
AND      | 0000        |   F = A and B (bitwise AND); Z update, V,C = zero
OR       | 0001	       |   F = A or B (bitwise OR); Z update, V,C = zero
add      | 0010 	      |   F = A + B; Z,V,C update
sub      | 0110	       |   F = A - B; Z,V,C update
slt	     | 0111	       |   F = (A < B) ? 1 : 0
NOR     	| 1100        |   F = ~ ( A or B ) (bitwise NOR); Z update, V,C = zero


#### Register 
[Reference](http://www.cs.uwm.edu/classes/cs315/Bacon/Lecture/HTML/ch05s03.html)


Register   | Number    |	Conventional Name	Usage
-----------| ----------|--------------------------------------------------------
$0	        |$zero      |	Hard-wired to 0
$1	        |$at	       | Reserved for pseudo-instructions
$2 - $3	   |$v0, $v1	  | Return values from functions
$4 - $7	   |$a0 - $a3	 | Arguments to functions - not preserved by subprograms
$8 - $15	  |$t0 - $t7	 | Temporary data, not preserved by subprograms
$16 - $23	 |$s0 - $s7  |	Saved registers, preserved by subprograms
$24 - $25	 |$t8 - $t9  |	More temporary registers, not preserved by subprograms
$26 - $27	 |$k0 - $k1  |	Reserved for kernel. Do not use.
$28	       |$gp	       | Global Area Pointer (base of global data segment)
$29	       |$sp	       | Stack Pointer
$30	       |$fp	       | Frame Pointer
$31	       |$ra	       | Return Address









