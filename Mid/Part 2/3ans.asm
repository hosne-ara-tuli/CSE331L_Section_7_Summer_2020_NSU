.MODEL SMALL
 .STACK 100H
 
 .DATA
    PROMPT  DB  'Digits: $'
    PROMPT2  DB  'Sum: $'
    SUM DW 0h
 
 .CODE
   MAIN PROC
     MOV AX, @DATA                
     MOV DS, AX
 
     LEA DX, PROMPT                
     MOV AH, 9
     INT 21H
 
     MOV CX, 10                   
 
     MOV AH, 2                      
     MOV DL, 48                   
 
     @LOOP:                       
       MOV BL, DL
       MOV DL, 10
       INT 21h
       MOV DL, 13
       INT 21h
       MOV DL, BL
       INT 21H                    
       SUB DL, 48
       ADD SUM, DX
       ADD DL, 48
 
 
       INC DL                     
       DEC CX                     
     JNZ @LOOP