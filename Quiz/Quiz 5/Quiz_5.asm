


.MODEL SMALL                                    
.STACK 100H  
                                   
.DATA                                           
 PROMPT DB 'Enter a number less than 9 : $'                
 MSG DB 'The entered number is : $' 
              
.CODE 
                                          
    MAIN PROC                                      
    MOV AX, @DATA              
    MOV DS, AX                                  
    LEA DX, PROMPT      
    MOV AH, 9                                   
    INT 21H                                     
    MOV AH, 1                
    INT 21H                                     
    MOV BL, AL 
    MOV AH, 2                  
    MOV DL, 0DH                                 
    INT 21H                                     
    MOV DL, 0AH                     
    INT 21H                                     
    LEA DX, MSG            
    MOV AH, 9                                   
    INT 21H    
    
    
    MAIN ENDP                                 
   END MAIN