;04 - Manejo de pila manual
;mandar parametros a un procedimiento usando la pila

INCLUDE Irvine32.inc

.data

.code

main PROC
	mov ebx, 999		;valor en ebx para ver que no se pierde despues del call

	push 3				;primer parametro a la pila
	push 25				;segundo parametro a la pila

	call SumarPila		;llamamos al procedimiento
	nop 
	exit				

main ENDP

SumarPila PROC
push ebp			
mov ebp, esp		

push ebx			

mov eax, [ebp+8]	;eax = 25 
mov ebx, [ebp+12]	;ebx = 3

imul eax, ebx 		

pop ebx				
pop ebp				

ret 8				;regresa a main y saca los 2 parametros de la pila 

SumarPila ENDP

END main
