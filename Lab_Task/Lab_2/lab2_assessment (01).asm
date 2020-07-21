
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX,K;
ADD AX,M;
ADD AX,N;
ADD AX,L;

K EQU 1
M EQU 2
N EQU 2
L EQU 1

ret




