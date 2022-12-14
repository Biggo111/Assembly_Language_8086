.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "OUT OF THE RANGE $"
MSG2 DB "IN THE RANGE $" 
.CODE      
MAIN PROC
           
    MOV AX, @DATA
    MOV DS, AX
    
    
    MOV AH, 1
    INT 21H
    MOV BL, AL

    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    
    CMP BL, 51
    JGE L1
    JMP L2
    
    
    
    L1:
    CMP BL, 56
    JLE L3
    JMP L2
    
    L2: 
    
    MOV AH, 9
    LEA DX, MSG1
    INT 21H
    
    JMP EXIT
  
    
    L3:
    MOV AH, 9
    LEA DX, MSG2
    INT 21H
    
    JMP EXIT
    
         
    
    EXIT:
    MOV AH, 4CH
    INT 21H
ENDP MAIN

    