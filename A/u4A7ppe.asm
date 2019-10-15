	extrn _moo:near
	pila segment para stack 'stack'
	
	DW 1000 DUP (?)
	
	pila ends
	datos segment para public 'data'
	
	datos ends
	extra segment para public 'data'
	
	extra ends
		assume cs:codigo, ds:datos, es:extra,ss:pila
	codigo segment para public 'code'
		public main
	main proc far
		push ds
		mov ax,0
		push ax
		mov ax,datos
		mov ds,ax
		mov ax,extra
		mov es,ax
        
        mov cx,4
        push cx
        call _moo
        add sp,2

        mov dx,ax
        mov dh,0
        add dl,30h
        mov ah,2
        int 21h
		
		ret
	main endp
	
	codigo ends
			end main