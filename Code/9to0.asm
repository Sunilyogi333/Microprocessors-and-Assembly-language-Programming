;Write an ALP in 8086 to print the numbers from 0 to 9
.MODEL SMALL
.STACK
.DATA
DESC DB '9'  
.CODE 
MAIN PROC
    .STARTUP
    MOV BL, DESC
    MOV CX, 10   
  AGAIN:  
    MOV DL,BL
    MOV AH,02H
    INT 21H
    DEC BL
    LOOP AGAIN  
    .EXIT
    MAIN ENDP
    END MAIN