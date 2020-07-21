
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

#a DB 10h, 15h, 10h, 11h, 12h;

b DB 10 DUP(?);

c DB 10 DUP(4,0,2,0,6,0,8,0,10,0);

ret



