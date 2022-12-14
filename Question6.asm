.MODEL SMALL
.STACK 100H
.DATA
PRE DB "3"
USER DB ?
MSG1 DB "USER VALUE: $"
MSG2 DB "PRE-DEFINE VALUE: $" 
.CODE      
MAIN PROC
           
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1
    INT 21H
    MOV USER, AL
    
    MOV AH,2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    
    MOV AH, 9
    LEA DX, MSG1
    INT 21H
    
    
    MOV AH,2
    MOV DL, USER
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
    MOV DL, PRE
    INT 21H
    
         
    
    EXIT:
    MOV AH, 4CH
    INT 21H
ENDP MAIN

    