.MODEL SMALL
.STACK 100H
.DATA
M1 DB "NAME: BIGGO$"
DEPT DB "DEPARTMENT: CSE$"
SEC DB "SECTION: G$"
ID DB "STUDENT ID: 2012020310$"
 
.CODE      
MAIN PROC
           
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, M1
    INT 21H

    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 9
    LEA DX, DEPT
    INT 21H
    
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 9
    LEA DX, SEC
    INT 21H
   
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 9
    LEA DX, ID
    INT 21H
      
    
    EXIT:
    MOV AH, 4CH
    INT 21H
ENDP MAIN

    