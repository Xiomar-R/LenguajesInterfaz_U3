;U3-3 - Validacion
;revisar si un valor es cero usando TEST y saltar si lo es

INCLUDE Irvine32.inc		

.data


.code

main PROC
	mov ecx, 0			
	mov eax, 0			


	test eax, eax		;revisa si eax es cero 
	jz entradaInvalida	;si es cero salta a entradaInvalida

	test ecx, eax		;hace un AND entre ecx y eax sin guardar el resultado
	jz entradaInvalida	;si el resultado es cero salta a entradaInvalida



main ENDP
END main
