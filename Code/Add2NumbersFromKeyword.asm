;Write a ALP to add two numbers from keyword
.MODEL SMALL 
.STACK 100H
.DATA
.CODE
MAIN PROC
    .STARTUP
    MOV AH, 01H
    INT 21H 
    SUB AL, 30H 
    MOV BL, AL
    MOV AH, 01H
    INT 21H   
    SUB AL, 30H    
    ADD AL,BL  
    PUSH AX
    jnc SKIP  
    MOV DL, '1'
    MOV AH, 02H
    INT 21H
    SKIP: POP AX
          ADD AL,30H
          MOV DL,AL
          MOV AH, 02H
          INT 21H
    .EXIT
    MAIN ENDP
    END MAIN