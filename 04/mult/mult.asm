// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// put ram[0] into variable which address is x (16)
@R0  
D=M
@x
M=D
// put ram[1] into variable which address is y (17)
@R1  
D=M
@y
M=D
//initialize variable  whose address is(18) : sum =0
@sum
M=0
//initialize variable  whose address is(19) : counter =0
@counter
M=0
D=M
//
(LOOP)
@counter
D=M
@y
D=M-D
@RESULT
D;JEQ
@counter
M=M+1
@x
D=M
@sum
M=M+D
@LOOP
0;JEQ
(RESULT)
@sum
D=M
@R2
M=D
(END)
@END
0;JEQ