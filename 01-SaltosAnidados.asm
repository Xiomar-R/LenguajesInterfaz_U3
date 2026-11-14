;01 - Saltos anidados
;un procedimiento que llama a otro procedimiento

INCLUDE Irvine32.inc		

.data
	msgA BYTE "Evento A ejecutandose", 0
	msgB BYTE "Evento B ejecutandose", 0	
.code
main PROC
	call eventoA		
	nop					
main ENDP

eventoA PROC
	mov edx, OFFSET msgA	
	call WriteString		
	call Crlf				
	call eventoB			
	nop						
	ret						
eventoA ENDP

eventoB PROC
	mov edx, OFFSET msgB	
	call WriteString		;imprime el mensaje B
	call Crlf				
	ret						;regresa a eventoA
eventoB ENDP

END main

