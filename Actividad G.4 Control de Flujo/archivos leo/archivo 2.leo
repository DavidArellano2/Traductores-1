#!/usr/bin/env foremb 
#Lo antes mencionado se pone para poder abrir el archivo sin poner la extencion en la maquina virtual y solo poner el nombre del archivo.

10       	#ALTO
80       	#ANCHO
2 -
swap
2 -
swap
DS.
"+" $. #hacer la esquina superior izquierda
dup
while dup 0 > #condicion para hacer la lina horziontal
{
 "-" $.
 1 -
}
swap
"+" $. #hacer la esquina superior derecha
cr
swap
drop
swap
dup
swap
rot
swap
while dup 0 > #hacer la esquina superior vertical
{
  "¦" $.
  swap
  dup
  while dup 0 >
  {
  " " $. #agregar los espacios para que quede rectangular
  1 -
  }
  drop
  swap
  1 -
  "¦" $. #fin de cuadro (linea vertical)
  cr
}
drop
"+" $. #hacer la esquina inferior izquierda
dup
while dup 0 >
{
 "-" $.
 1 -
}
swap
"+" $. #hacer la esquina inferior derecha
swap
drop
cr
