.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "ENTER FIRST NUMBER: $"
MSG2 DB "ENTER SECOND NUMBER: $"
PLUS DB "+$"
EQUAL DB "=$" 
.CODE      
MAIN PROC
           
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, MSG1
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    MOV BH, BL
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 9
    LEA DX, MSG2
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV CL, AL
    MOV CH, CL
    
    ADD BL, CL
    SUB BL, 48
    
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    
    
    MOV AH, 2
    MOV DL, BH
    INT 21H
    
    
    
    LEA DX, PLUS
    INT 21H
    
    MOV DL, CH
    INT 21H
    
    
    ;LEA DX, EQUAL
    MOV DL, '='
    INT 21H
    
    MOV DL, BL
    INT 21H
         
    
    EXIT:
    MOV AH, 4CH
    INT 21H
ENDP MAIN

    