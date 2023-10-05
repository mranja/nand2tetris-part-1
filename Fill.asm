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
@SCREEN
D=A
@ARR
M=D
@I
M=0

@8191
D=A

@LIMIT
M=D


(CONDITION)
    @I
    M=0
    @24576
    D=M
    @LOOP
    D;JGT
    
    (LOOP1)
        @LIMIT
        D=M
        @I
        D=M-D
        @CONDITION
        D;JGE
        @I
        D=M
        @ARR
        A=M+D
        M=0
        @I
        M=M+1
        @LOOP1
        0;JMP


    @CONDITION
    0;JMP   
    
    


(LOOP)
    @LIMIT
    D=M
    @I
    
    D=M-D
    @END
    D;JGE
    @I
    D=M
    @ARR
    A=M+D
    M=-1
    @I
    M=M+1

   
    @LOOP
    0;JMP

(END)
    @CONDITION
    0;JMP    