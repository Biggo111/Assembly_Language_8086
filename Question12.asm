.MODEL SMALL
.STACK 100H
.DATA
.CODE      
MAIN PROC
           
    MOV CX, 10
    MOV AH, 2
    MOV DL, '0'
    
    L:
    INT 21H
    INC DL
    LOOP L  
    
    EXIT:
    MOV AH, 4CH
    INT 21H
ENDP MAIN

    