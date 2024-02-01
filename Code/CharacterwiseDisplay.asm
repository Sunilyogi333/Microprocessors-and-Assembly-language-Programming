;Write a ALP to display a string 'microprocessor' character wise
.MODEL SMALL
.STACK
.DATA
STRING DB 'microprocessor$'
.CODE
MAIN PROC
    .STARTUP  
    MOV CX,14
    MOV SI, offset STRING
    again: 
    MOV DL,[SI]
    MOV AH,02H
    INT 21H  
    INC SI
    loop again
    .EXIT
    MAIN endp
    END MAIN