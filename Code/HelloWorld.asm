;Write a ALP to display string "HELLO WORLD"
.MODEL small    ; Set the memory model to "small"
.STACK 100h     ; Allocate 256 bytes for the stack
.DATA           ; Start the data segment
STRING DB "HELLO WORLD$"  ; Declare and initialize a string variable
.CODE           ; Start the code segment
MAIN PROC       ; Begin the main procedure

    MOV AX, @DATA  ; Load the address of the data segment into AX
    MOV DS, AX     ; Set the data segment register to the address in AX

    MOV AH, 09H    ; Set AH register to 09H (DOS function for displaying a string)
    INT 21H        ; Call DOS interrupt 21H to display the string

    MOV AX, 4C00H  ; Load the value 4C00H into AX (DOS function for program termination)
    INT 21H        ; Call DOS interrupt 21H to terminate the program

MAIN ENDP       ; End the main procedure
END MAIN       ; End of the program
