ORG 100H
          
LEA SI, BLOCK1
MOV AL, 80H
MOV CX, 16

FILL_BLOCK1:
MOV [SI], AL
INC AL
INC SI
LOOP FILL_BLOCK1
          
LEA DI, BLOCK2
MOV AL, 7FH
MOV CX, 16

FILL_BLOCK2:
MOV [DI], AL
DEC AL
INC DI
LOOP FILL_BLOCK2                


LEA SI, BLOCK1
LEA DI, BLOCK2 
LEA BX, BLOCK3
MOV CX, 16

ADD_TO_BLOCK3:
MOV AL, [SI]
ADD AL, [DI]
MOV [BX], AL
INC SI
INC DI
INC BX
LOOP ADD_TO_BLOCK3













RET
BLOCK1 DB 16 DUP(?)
BLOCK2 DB 16 DUP(?)
BLOCK3 DB 16 DUP(?)