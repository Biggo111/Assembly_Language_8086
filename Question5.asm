.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "MICROPROCESSOR $"
MSG2 DB "ASSEMBLY LANGUAGE $"
MSG3 DB "COMPUTER INTERFACING SESSIONAL$" 
.CODE      
MAIN PROC
           
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, MSG1
    INT 21H
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    
    MOV AH, 9
    LEA DX, MSG2
    INT 21H
    
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 9
    LEA DX, MSG3
    INT 21H
    
         
    
    EXIT:
    MOV AH, 4CH
    INT 21H
ENDP MAIN

    