[org 0x0100]
    jmp start
data : dw "+" 
data1 : dw "-" 
data2 : dw "|" 

clrscrn:
push ax;
push di;
push es;
mov ax,0x0b800
mov es,ax
mov di,0
loop1:
       mov word [es:di],0x0720;
       add di,2
       cmp di,4000
       jbe loop1
       pop es
       pop di
       pop ax
       ret

drawtri:
        push bp
        mov bp,sp
        push ax 
        push bx
        push cx
        push dx
        push di
        push si
        mov ax,0x0b800
        mov es,ax
    loop2:
        add di,2
        cmp di,80
        jne loop2
        mov ax ,[bp+10]
        mov ah 0x07
    loop3:
        add di ,2
        cmp di ,238
        jne loop3
        mov ax,[bp + 6]
        mov ah 0x07
    loop4:
        add di,2
        cmp di,242
        jne loop4
        mov ax,[bp + 6]
        mov ah 0x07
    loop5:
        add di,2
        cmp di,394
        jne loop5
        mov ax,[bp + 6]
        mov ah 0x07
    loop6:
        add di,2
        cmp di,406
        jne loop6
        mov ax,[bp + 6]
        mov ah 0x07
        mov di,396
    loop7:
        mov ax,[bp + 8]
        mov ah 0x07
        add di,2
        cmp di,404
        jne loop7
        
        pop si
        pop di
        pop dx
        pop cx
        pop bx
        pop ax
        pop bp
        int 0x21

      
start:
    mov ax,[data]
    mov bx,[data1]
    mov cx,[data2]
    push ax 
    push bx 
    push cx
    call clrscrn

    call drawtri

    pop cx
    pop bx
    pop ax

    mov 0x04c00
    int 0x21
