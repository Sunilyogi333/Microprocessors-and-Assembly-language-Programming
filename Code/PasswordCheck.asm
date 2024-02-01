;Write a ALP to check password, if password is wrong, print 'invalid' 'use' and if right print 'WELCOME'
.MODEL SMALL
.STACK
.DATA
PASSWORD DB 'secret $'
MSG1 DB 'ENTER PASSWORD:$'
MSG2 DB 'WELCOME $'
MSG3 DB 'INVALID USER$'
VAL DB ?

.CODE 
MAIN PROC 
    .STARTUP
    MOV DX, OFFSET MSG1
    MOV AH, 09H
    INT 21H
    MOV BH, 00H
    MOV CX, 06H
    MOV SI, OFFSET PASSWORD
    AGAIN: MOV AH, 01H
           INT 21H
           MOV VAL, AL
           MOV BL, [SI]
           CMP VAL, BL
           JNE SKIP
           INC BH
    SKIP: INC SI
          LOOP AGAIN  
          CMP BH, 06H
          JNE INVALID
          MOV DX, OFFSET MSG2
          MOV AH, 09H
          INT 21H
          JMP EXIT
    INVALID: MOV DX, OFFSET MSG3
             MOV AH, 09H
             INT 21H
       EXIT: 
             .exit
             MAIN ENDP
             END MAIN