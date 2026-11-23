(MAIN)
    @KBD
    D=M
    @BLACK
    D;JNE
    @color
    M=0
    @FILL
    0;JMP

(BLACK)
    @color
    M=-1

(FILL)
    @SCREEN
    D=A
    @addr
    M=D

(FILLLOOP)
    @addr
    D=M
    @KBD
    D=D-A
    @MAIN
    D;JEQ

    @color
    D=M
    @addr
    A=M
    M=D

    @addr
    M=M+1
    @FILLLOOP
    0;JMP
