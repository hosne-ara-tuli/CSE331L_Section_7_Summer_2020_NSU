
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA
 PROMPT DB 'Enter the digit : $'
 MSG DB 'The entered digit is : $'
.CODE
    MAIN PROC
    MOV AX, @DATA ; initialize DS
    MOV DS, AX
    LEA DX, PROMPT ; load and print PROMPT
    MOV AH, 9
    INT 21H
    MOV AH, 1 ; read a character
    INT 21H
    MOV BL, AL ; save the input character into BL
    MOV AH, 2 ; carriage return
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH ; line feed
    INT 21H
    LEA DX, MSG ; load and print MSG
    MOV AH, 9
    INT 21H
    CMP BL, 30H ; compare input digit and 0
    JL @NEGATIVE ; jump to label @NEGATIVE if digit<0
    JZ @ZERO ; jump to label @ZERO if digit=0
    JG @POSITIVE ; jump to label @POSITIVE if digit>0
    @NEGATIVE: ; jump label
    MOV DL, 'N'
    JMP @DISPLAY ; jump to label @DISPLAY
    @ZERO: ; jump label
    MOV DL, 'Z'
    JMP @DISPLAY ; jump to label @DISPLAY
    @POSITIVE: ; jump label
    MOV DL, 'P'
    JMP @DISPLAY ; jump to label @DISPLAY
    @DISPLAY: ; jump label
    MOV AH, 2 ; print the character
    INT 21H
    MOV AH, 4CH ; return control to DOS
    INT 21H
  MAIN ENDP
END MAIN

ret




