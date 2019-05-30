// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(END)
@color
M=0
@8192
D=A
@num
M=D
@SCREEN
D=A
@address
M=D
@KBD
D=M
@BLACK
D;JGT
@color
M=0
D=M
@DRAWING
0;JMP
(BLACK)
@color
M=-1
D=M
(DRAWING)
@color
D=M
@address
A=M
M=D
@address
M=M+1
@num
M=M-1
D=M
@DRAWING
D;JGT


@END
0;JMP
