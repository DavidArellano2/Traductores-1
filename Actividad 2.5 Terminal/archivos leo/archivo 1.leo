#!/usr/bin/env foremb 
#Lo antes mencionado se pone para poder abrir el archivo sin poner la extencion en la maquina virtual y solo poner el nombre del archivo.

20       	#ALTO
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
swap
drop
cr
drop
