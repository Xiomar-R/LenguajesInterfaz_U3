;02 - Sizeof
;leer un nombre del teclado y mostrar cuantos caracteres tiene

INCLUDE Irvine32.inc		

.data
	mensajeEntrada BYTE "Escribe tu nombre: ",0			
	caracteresEscritos BYTE "Numero de caracteres: ",0	
	nombre BYTE 20 DUP(0)			


.code
main PROC
	mov edx, OFFSET mensajeEntrada	
	call WriteString				


	mov edx, OFFSET nombre		;Direccion hacia donde va a apuntar el primer caracter
	mov ecx, SIZEOF nombre		;sizeof da el numero de caracteres que se almacenan en la etiqueta

	call ReadString
	call Crlf						

	mov edx, OFFSET nombre			
	call WriteString				
	call Crlf						
	mov edx, OFFSET caracteresEscritos	;edx apunta al mensaje Numero de caracteres
	call WriteString				;imprime el mensaje
	call WriteDec					;imprime eax 



	exit 							
main ENDP

END main
