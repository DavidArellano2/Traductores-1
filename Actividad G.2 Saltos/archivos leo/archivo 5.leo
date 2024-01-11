#!/usr/bin/env foremb 
#Lo antes mencionado se pone para poder abrir el archivo sin poner la extencion en la maquina virtual y solo poner el nombre del archivo.
5
dup 1 = jumpnz funcion1 #para brincar a la direccion de memoria mencionada
dup 2 = jumpnz funcion2
dup 3 = jumpnz funcion3
dup 4 = jumpnz funcion4
dup 5 = jumpnz funcion5

funcion1: #en cada funcion colocamos lo que hará cada ejercicio (son los realizados anteriormente)
0 .
0
etiqueta:
1 +
dup .
dup    
9 =
jumpz etiqueta
jump Final

funcion2:
9 -1 S*
S.
9
etiqueta1:
1 -
dup -1 S* S.
dup    
0 =
jumpz etiqueta1
jump Final

funcion3:
97 emit
97
etiqueta2:
++
dup emit
dup    
122 =
jumpz etiqueta2
jump Final

funcion4:
65 emit
65
etiqueta3:
++
dup emit
dup    
90 =
jumpz etiqueta3
jump Final

funcion5:
0 .
0
etiqueta4:
1 +
dup .
dup    
9 =
jumpz etiqueta4

cr
9 -1 S*
S.
9
etiqueta5:
1 -
dup -1 S* S.
dup    
0 =
jumpz etiqueta5
cr
97 emit
97
etiqueta6:
++
dup emit
dup    
122 =
jumpz etiqueta6
cr
65 emit
65
etiqueta7:
++
dup emit
dup    
90 =
jumpz etiqueta7
cr
Final:
