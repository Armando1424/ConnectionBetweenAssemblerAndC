PILA SEGMENT PARA STACK 'STACK'
 DB 1000 DUP(?)
PILA ENDS
DATOS SEGMENT PARA PUBLIC 'DATA'
a1 DB "INSTITUTO TECNOLOGICO DE CUIDAD GUZMAN$"
a2 DB "Trabajo Unidad 4 $"
a3 DB "INTEGRANTES: $"
a4 DB "Jacobo Jacobo Miguel Angel $"
a5 DB "Mejia Martinez Jose Manuel $"
a6 DB "Baltazar Torres Jose Ernerto $"
DATOS ENDS
EXTRA SEGMENT PARA PUBLIC 'DATA'
EXTRA ENDS

_CODIGO SEGMENT PARA PUBLIC 'CODE'
	PUBLIC _proce  
	 _proce PROC FAR   ;far porque sera usado por otro programa
		ASSUME CS:_CODIGO, DS:DATOS, SS:PILA, ES:EXTRA
			PUSH DS
			MOV AX,00
			PUSH AX
			MOV AX,DATOS
			MOV DS,AX
			MOV AX,EXTRA
			MOV ES,AX
			;-------------limpiamos pantalla
            mov al,0
            mov ch,0
            mov cl,0
            mov dh,24
            mov dl,79
            mov bh,7
            mov ah,6
			int 10h 
			;--- las demas impresiones
			mov ah,2
			mov dh,2 ; fila 2
			mov dl,20 ; columna 10
			mov bh,0 
			int 10h
			lea dx,a1
			mov ah,9
			INT 21h
			
			mov ah,2
			mov dh,3 ;fila 
			mov dl,30 ;columna 
			mov bh,0 
			int 10h
			lea dx,a2
			mov ah,9
			INT 21h
			
			mov ah,2
			mov dh,5 ;fila 
			mov dl,30 ;columna 
			mov bh,0 
			int 10h
			lea dx,a3
			mov ah,9
			INT 21h
			
			mov ah,2
			mov dh,6 ;fila
			mov dl,30 ;columna 
			mov bh,0 
			int 10h
			lea dx,a4
			mov ah,9
			INT 21h
			
			mov ah,2
			mov dh,7 ; fila 
			mov dl,30 ;columna 
			mov bh,0 
			int 10h
			lea dx,a5
			mov ah,9
			INT 21h
			
			mov ah,2
			mov dh,8 ; fila 
			mov dl,30 ;columna 
			mov bh,0 
			int 10h
			lea dx,a6
			mov ah,9
			INT 21h
			RET
	_proce ENDP
 _CODIGO ENDS
 END _proce