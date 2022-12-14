.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "G IN DEC: $"
 
.CODE      
MAIN PROC
           
    MOV AX, @DATA
    MOV DS, AX
    
    
    MOV AH, 9
    LEA DX, MSG1
    INT 21H
           
    
    MOV BL, 'G'
    SUB BL , 17
    
    MOV AH, 2
    MOV DL, '1'
    INT 21H
    
    MOV DL,BL
    INT 21H 
    
         
    
    EXIT:
    MOV AH, 4CH
    INT 21H
ENDP MAIN

    