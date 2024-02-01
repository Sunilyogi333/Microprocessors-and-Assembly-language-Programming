;Write an alp to display an English alphabet from z to a
.MODEL SMALL
.STACK
.DATA
    alpha db 'z'
.CODE
MAIN proc
.STARTUP
 MOV CX, 1AH      
 MOV BL, alpha
 again: MOV DL, BL 
        MOV AH,02H      
        INT 21H
        DEC BL  
        LOOP again     
        .EXIT
        MAIN ENDP
        END MAIN