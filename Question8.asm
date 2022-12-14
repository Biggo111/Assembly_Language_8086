.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "ENTER FIRST NUMBER: $"
MSG2 DB "ENTER SECOND NUMBER: $"
MSG3 DB "IS GREATER$"
MSG4 DB " IS SMALLER$" 
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
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    CMP BL, CL
    JG L1
    JMP L2
    
    
    L1:
    MOV AH, 2
    MOV DL,BL
    INT 21H
    
    MOV AH, 9
    LEA DX, MSG3
    INT 21H
    
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 2
    MOV DL,CL
    INT 21H
    
    MOV AH, 9
    LEA DX, MSG4
    INT 21H
    JMP EXIT
    
    L2:
    
    MOV AH, 2
    MOV DL,CL
    INT 21H
    
    MOV AH, 9
    LEA DX, MSG3
    INT 21H
    
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 2
    MOV DL,BL
    INT 21H
    
    MOV AH, 9
    LEA DX, MSG4
    INT 21H
    JMP EXIT
    
         
    
    EXIT:
    MOV AH, 4CH
    INT 21H
ENDP MAIN

    