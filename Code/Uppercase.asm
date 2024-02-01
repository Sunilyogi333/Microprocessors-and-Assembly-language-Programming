;Write a ALP to change string into Uppercase
.MODEL small
.STACK 100H
.DATA
NAME1 DB 'Pokhara University $'
.CODE 
MAIN PROC
    .STARTUP
    MOV DX, OFFSET NAME1
    MOV AH, 09H
    INT 21H  

    MOV CX, 18
    MOV SI, OFFSET NAME1

    UPPERCASE: 
        MOV AL, [SI]     
        CMP AL, 'a'       
        JB  NOT_LOWER    
        SUB AL, 20H      
        MOV [SI], AL     
    NOT_LOWER:
        MOV DL, [SI]  
        MOV AH, 02H       
        INT 21H
        INC SI            
        LOOP UPPERCASE   

    .EXIT
MAIN ENDP
END MAIN
