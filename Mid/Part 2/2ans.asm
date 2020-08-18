
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.MODEL SMALL
.STACK 64
.DATA        
	STRING DB ?          
	SYM DB '$'       
	INPUT_M DB 'Input:$'    
	OUTPUT_M DB 'Output:$'
.CODE
	MOV AX,@DATA
	MOV DS,AX
	MOV DX,OFFSET INPUT_M
	MOV AH,09        
	INT 21H        
	MOV SI, OFFSET STRING
INPUT:
	MOV AH,01        
	INT 21H        
	MOV [SI],AL        
	INC SI         
	CMP AL,0DH         
	JNZ INPUT 
	MOV [SI],'$'
OUTPUT:
	MOV DX, OFFSET OUTPUT_M
	MOV AH, 9         
	INT 21H        
	MOV DL,0AH         
	MOV AH,02H         
	INT 21H
	MOV DL,0DH        
	INT 21H        
	MOV DX,OFFSET STRING        
	MOV AH,09H         
	INT 21H        
	MOV AH,4CH         
	INT 21H

ret




