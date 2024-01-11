#!/usr/bin/env foremb 
#Lo antes mencionado se pone para poder abrir el archivo sin poner la extencion en la maquina virtual y solo poner el nombre del archivo.
9 -1 S*
S.
9
etiqueta: #aqui metemos el codigo como un tipo "swtich"
1 -
dup -1 S* S. #Con la S imprimimos numeros negativos
dup    #con dup duplicamos la celda superior de la pila
0 =
jumpz etiqueta #aqui mandamos llamar la etiqueta