org 100h

;nasm 8086 code to print a vlaue stored in register 
; nasm 8086 code to print a vlaue by adding 48 in ascii of character 

   mov al , [RN + 2]
   
   mov  cx, 1       ; ReplicationCount
   mov  bx, 0007h    ; BH is DisplayPage (0) , BL is Attribute (BrightWhiteOnGreen)
   mov  ah, 09h    ; BIOS.WriteCharacterAndAttribute, AL is ASCII ("*")
   add al,48; adding 48 to print charcter not ascii
   int  10h


mov ax, 0x4c00 ; terminate program
int 0x21

RN : dw 3,4,5,6
