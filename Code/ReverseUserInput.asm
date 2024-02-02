.MODEL
.STACK
.DATA  
;USERINPUT DB 'ENTER STRING: $'  
STRING DB ?  
LEN DW 10
.CODE 
MAIN PROC
    .STARTUP   
  ;  MOV DX, OFFSET USERINPUT
   ; MOV AH, 09H
    ;INT 21H   
    
    MOV CX, LEN
    MOV SI, OFFSET STRING
    
    AGAIN:
           MOV AH, 01H
           INT 21H
           MOV [SI], AL
           INC SI
           LOOP AGAIN
           MOV CX, 10
    REPEAT: 
            MOV DL, [SI]
            MOV AH, 02H
            INT 21H
            DEC SI
            LOOP REPEAT
    .EXIT
    MAIN ENDP
    END MAIN
    