;05 - Macros
;una macro es un bloque de codigo que se copia cada vez que se usa

INCLUDE Irvine32.inc		

;macro para mostrar un mensaje en pantalla
MostrarMensaje MACRO texto
	mov edx, OFFSET texto	
	call WriteString		
	call Crlf				
ENDM						

;macro para multiplicar dos numeros y mostrar el resultado
Multiplicar MACRO op1, op2
    mov eax, op1        	
    imul eax, op2       	
    call WriteInt			
    call Crlf		
ENDM						

.data
	mensajeBienvenida BYTE "Bienvenido al sistema", 0	
	mensajeFin BYTE "Hasta luego, vuelva pronto", 0		

.code
main PROC
	MostrarMensaje mensajeBienvenida	;usamos la macro con el mensaje de bienvenida
	MostrarMensaje mensajeFin			;usamos la macro con el mensaje de fin

	Multiplicar 5, 6					

	exit								
main ENDP

END main
