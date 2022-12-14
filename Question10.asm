.MODEL SMALL
.STACK 100H
.DATA
FIRST DB "ENTER FIRST NUMBER: $"
SECOND DB "ENTER SECOND NUMBER: $"
THIRD DB "ENTER THIRD NUMBER: $"
MSG DB "GREATEST: $"
 
.CODE      
MAIN PROC
           
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, FIRST
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
    LEA DX, SECOND
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BH, AL
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 9
    LEA DX, THIRD
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV CL, AL
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    
    CMP BL, BH
    JGE L1
    JMP L2
    
    
    
    L1:
    CMP BL, CL
    JG L3
    
    MOV AH, 9
    LEA DX, MSG
    INT 21H
    
    MOV AH, 2
    MOV DL, CL
    INT 21H
    
    JMP EXIT
    
    
    L2: 
    
    CMP BH, CL
    JG L4
    
    MOV AH, 9
    LEA DX, MSG
    INT 21H
    
    MOV AH, 2
    MOV DL, CL
    INT 21H
    
    JMP EXIT
  
    
    L3:
    MOV AH, 9
    LEA DX, MSG
    INT 21H
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    JMP EXIT
    
    L4:
    
    MOV AH, 9
    LEA DX, MSG
    INT 21H
    
    MOV AH, 2
    MOV DL, BH
    INT 21H
    
    JMP EXIT     
    
    EXIT:
    MOV AH, 4CH
    INT 21H
ENDP MAIN

    