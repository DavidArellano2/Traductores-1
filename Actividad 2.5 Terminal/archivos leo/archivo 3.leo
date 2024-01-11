#!/usr/bin/env foremb 
#Lo antes mencionado se pone para poder abrir el archivo sin poner la extencion en la maquina virtual y solo poner el nombre del archivo.

#----------------- INICIA RECUADRO -------------
10       	#ALTO
80       	#ANCHO
2 - #restamos 2 caracteres a la pila (las orillas superiores)
swap
2 - #restamos 2 caracteres a la pila (las orillas inferiores)
swap
"+" $. #Ingresamos la orilla superior izquierda
dup
2 /
8 -
dup
while dup 0 > #ciclo para hacer linea superior
{
 "-" $.
 1 -
}
drop
"¦" $. #simbolo antes de finalizar la palabra 'principal'
" Menu_Principal " $. #palabras puestas de 'titulo'
"+" $. #simbolo antes de comenzar la palabra 'menu'
dup
while dup 0 > #ciclo para hacer linea inferior
{
 "-" $.
 1 -
}
drop
swap
"+" $. #Ingresamos la orilla superior derecha
cr
swap
drop
swap
dup
swap
rot
swap
while dup 0 > #ciclo para hacer lineas de los costados
{
  "¦" $. #primer linea izquierda del primer renglón
  swap
  dup
  while dup 0 >
  {
  " " $. #Imprimir espacios
  1 -
  }
  drop
  swap
  1 -
  "¦" $. #Linea final del primer renglón
  cr
}
drop
"+" $. ##Ingresamos la orilla inferior izquierda
dup
while dup 0 > #ciclo de la linea final
{
 "-" $. 
 1 -
}
swap
"+" $. #Ingresamos la orilla inferior derecha
#----------------------- ACABA RECUADRO --------
#---------- INICIA MENU DE SECUENCIAS -------- 
swap
drop
cr
drop
#las siguientes cantidades son para ubicar al puntero en dicha posición
3 
14
OS:gotoxy #indicacion para colocar el puntero 
"1. Secuencia 1" $. #ingresamos la palabra requerida
3
15
OS:gotoxy #ubicamos cursor y ponemos la palabra
"2. Secuencia 2" $.
3
16
OS:gotoxy #ubicamos cursor y ponemos la palabra
"3. Secuencia 3" $.
3
17
OS:gotoxy #ubicamos cursor y ponemos la palabra
"4. Secuencia 4" $.
3
18
OS:gotoxy #ubicamos cursor y ponemos la palabra
"5. Salir" $.
3 -
dup
while dup 0 >
{
cr
1 -
}
drop
drop
