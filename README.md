# U3 Prácticas de Lenguajes de Interfaz

## Datos Generales
- **Materia:** Lenguajes de Interfaz
- **Unidad:** 3
- **Alumno:** Eber Angulo Ramirez
- **Horario:** 8 a 9
- **Docente:** Dr. José Luis Medina Jiménez

---

## Índice de Prácticas

| Práctica | Título | Descripción | Qué se comprobó al ejecutarlo | Archivo / Enlace |
| :--- | :--- | :--- | :--- | :--- |
| **1** | Saltos anidados | Un procedimiento que llama a otro procedimiento usando CALL y RET. | Se imprime "Evento A" y después "Evento B"; después de cada CALL el programa regresa a la instrucción siguiente. | [Ver código](01-SaltosAnidados.asm) |
| **2** | Sizeof | Lectura de un nombre desde el teclado y conteo de caracteres usando SIZEOF y ReadString. | El nombre se imprime igual y el número de caracteres coincide con lo escrito (ReadString lo deja en EAX). | [Ver código](02-Sizeof.asm) |
| **3** | Validación | Revisión de valores en cero usando TEST y salto condicional JZ. | Con EAX = 0, TEST activa la bandera ZF y JZ realiza el salto. | [Ver código](03-validacion.asm) |
| **4** | Manejo de pila manual | Paso de parámetros por la pila con PUSH, lectura con EBP y limpieza con RET 8. | EAX termina en 75 (25 x 3) y EBX conserva su valor de 999. | [Ver código](04-MANEJO%20DE%20PILA%20MANUAL.asm) |
| **5** | Macros | Macros con parámetros para mostrar mensajes y multiplicar dos números. | Se imprimen los dos mensajes y el resultado +30 (5 x 6). | [Ver código](05-Macros.asm) |
