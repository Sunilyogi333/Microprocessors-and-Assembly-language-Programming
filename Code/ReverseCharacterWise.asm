;Write a ALP to display 'microprocessor' in reverse order 
.MODEL SMALL
.STACK
.DATA
STRING DB 'MICROPROCESSOR$'
.CODE 
MAIN PROC
    .STARTUP
    MOV CX, 14
    MOV SI, offset STRING  
    ADD SI, 13
    again:
    MOV DL, [SI]
    MOV AH, 02H
    INT 21H
    DEC SI
    LOOP again
    .EXIT
    MAIN ENDP
    END MAIN