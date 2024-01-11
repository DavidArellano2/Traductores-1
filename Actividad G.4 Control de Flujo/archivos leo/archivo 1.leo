#!/usr/bin/env foremb 
#Lo antes mencionado se pone para poder abrir el archivo sin poner la extencion en la maquina virtual y solo poner el nombre del archivo.

#haremos un if donde si seleccionas el numero correspondiente haga la indicación. En cada if estarán los codigos antes explicados...

5 #El numero de opciones en el menu
if dup 1 =
{
 0 .
 0
 dup
 
while 9 <
 {
  1 +
  dup .
  dup
 }}
elif dup 2 =
{
 -9
 while dup
 {
  dup S.
  ++
 }
 0 .
}
elif dup 3 =
{
 for 97 upto 122
 {
  dup emit
 }
}
elif dup 4 =
{
 65
 repeat
 dup emit
 ++
 dup
 until 91 = end
}
elif dup 5 =
{
 0 .
 0
 dup
 while 9 <
 {
  1 +
  dup .
  dup
 }
 cr
 -9
 while dup
 {
  dup S.
  ++
 }
 0 .
 cr
 for 97 upto 122
 {
  dup emit
 }
 cr
  65
 repeat
 dup emit
 ++
 dup
 until 91 = end
 cr
}
