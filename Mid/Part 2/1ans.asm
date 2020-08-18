.model small
.data
    NUM1 DW 0h
    NUM2 DW 0h
    ANS DW 0h
.code
 
mov ax, @data
mov ds, ax 
 
mov dl, 10  
mov bl, 0         
 
scanNum1:
 
      mov ah, 01h
      int 21h
 
      cmp al, 13   
      je  exit 
 
      mov ah, 0  
      sub al, 48   
 
      mov cl, al
      mov al, bl   
 
      mul dl      
 
      add al, cl   
      mov bl, al
      mov NUM1, BX
 
      jmp scanNum1
 
scanNum2:
 
      mov ah, 01h
      int 21h
 
      cmp al, 13   
      je  exit 
 
      mov ah, 0  
      sub al, 48   
 
      mov cl, al
      mov al, bl   
 
      mul dl       
 
      add al, cl   
      mov bl, al
      mov NUM2, BX
 
      jmp scanNum2
 
mov AX,NUM1
mov BX,NUM2
mul BX
 
 
exit:
    MOV AH, 4Ch
    INT 21h