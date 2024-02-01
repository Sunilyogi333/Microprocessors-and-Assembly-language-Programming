;Write an alp to display an English alphabet from a to z
.MODEL SMALL
.STACK
.DATA
    alpha db 'A'
.CODE
MAIN proc
.STARTUP
 MOV CX, 1AH      
 MOV BL, alpha
 again: MOV DL, BL 
        MOV AH,02H      
        INT 21H
        INC BL  
        LOOP again     
        .EXIT
        MAIN ENDP
        END MAIN