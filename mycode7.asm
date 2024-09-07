org 100h              

mov al, 03h           
mov bl, 05h           
mul bl                

mov bl, al            
mov ah, al           

; Convert upper nibble to ASCII
and ah, 0F0h          
shr ah, 4             
add ah, 30h           

cmp ah, 39h           
jle print_first_digit 
add ah, 7             

print_first_digit:
mov dl, ah           
mov ah, 02h           
int 21h               

; Convert lower nibble to ASCII
mov ah, bl            
and ah, 0Fh          
add ah, 30h           

cmp ah, 39h           
jle print_sec_digit   
add ah, 7             

print_sec_digit:
mov dl, ah            
mov ah, 02h           
int 21h               

mov ah, 4Ch           
int 21h               


