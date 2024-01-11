#!/usr/bin/env foremb 
#Lo antes mencionado se pone para poder abrir el archivo sin poner la extencion en la maquina virtual y solo poner el nombre del archivo.
0 .
0
etiqueta: #aqui metemos el codigo como un tipo "swtich"
1 +
dup . #con dup duplicamos la celda superior de la pila
dup    
9 =
jumpz etiqueta #aqui mandamos llamar la etiqueta
