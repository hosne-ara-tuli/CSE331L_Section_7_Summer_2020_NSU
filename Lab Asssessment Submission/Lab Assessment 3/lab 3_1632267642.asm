
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

DATA SEGMENT
    MSG1 DB "HELLO WORLD$"

START: 
    MOV AX, DATA
    MOV DS, AX
    LEA DX, MSG1   
    
    MOV AH,9
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
END START

DATA SEGMENT
    MSG2 DB "Assembly Language CSE 331$"
    
  START:
      MOV AX, DATA
      MOV DS, AX
      LEA DX, MSG2
      
      MOV AH,9
      INT 21H  
      
      MOV AH, 4CH
      INT 21H
      
   END START   

ret




