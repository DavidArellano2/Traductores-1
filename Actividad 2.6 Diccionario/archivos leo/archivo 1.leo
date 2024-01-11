#!/usr/bin/env foremb 
#Lo antes mencionado se pone para poder abrir el archivo sin poner la extencion en la maquina virtual y solo poner el nombre del archivo.

#------------------ MARCO ------------------
7        	#ALTO
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
swap
drop
cr
drop
drop
#------------ IMPRIMIR MENU --------------------
#iniciamos en 3 en la pila y de ahi imprimimos todas las opciones, en cada uno de los siguientes if se hará lo mismo mientras vas bajando o subiendo en el menú se seguirá impriendo el menú. (termina la programacion de menu hasta que sale el siguiente comando #***** :*)
3 
repeat 
if dup 3 =
{
3
2
OS:gotoxy #ubicamos en la posicion dada anteriormente
"\ESC[7m" $.
"1. Imprime del 0-9" $.
"\ESC[0m" $.
3
3
OS:gotoxy
"2. Imprime del -9-0" $.
3
4
OS:gotoxy
"3. Imprime de la a-z" $.
3
5
OS:gotoxy
"4. Imprime de la A-Z" $.
3
6
OS:gotoxy
"5. Salir" $.
}
#pos 4 en la pila
elif dup 4 =
{
3
2
OS:gotoxy
"1. Imprime del 0-9" $.
3
3
OS:gotoxy
"\ESC[7m" $.
"2. Imprime del -9-0" $.
"\ESC[0m" $.
3
4
OS:gotoxy
"3. Imprime de la a-z" $.
3
5
OS:gotoxy
"4. Imprime de la A-Z" $.
3
6
OS:gotoxy
"5. Salir" $.
}
#pos 5 en la pila
elif dup 5 =
{
3
2
OS:gotoxy
"1. Imprime del 0-9" $.
3
3
OS:gotoxy
"2. Imprime del -9-0" $.
3
4
OS:gotoxy
"\ESC[7m" $.
"3. Imprime de la a-z" $.
"\ESC[0m" $.
3
5
OS:gotoxy
"4. Imprime de la A-Z" $.
3
6
OS:gotoxy
"5. Salir" $.
}
#pos 6 en la pila
elif dup 6 =
{
3
2
OS:gotoxy
"1. Imprime del 0-9" $.
3
3
OS:gotoxy
"2. Imprime del -9-0" $.
3
4
OS:gotoxy
"3. Imprime de la a-z" $.
3
5
OS:gotoxy
"\ESC[7m" $.
"4. Imprime de la A-Z" $.
"\ESC[0m" $.
3
6
OS:gotoxy
"5. Salir" $.
}
#7 en la pila (ESC)
elif dup 7 =
{
3
2
OS:gotoxy
"1. Imprime del 0-9" $.
3
3
OS:gotoxy
"2. Imprime del -9-0" $.
3
4
OS:gotoxy
"3. Imprime de la a-z" $.
3
5
OS:gotoxy
"4. Imprime de la A-Z" $.
3
6OS:gotoxy
"\ESC[7m" $.
"5. Salir" $.
"\ESC[0m" $.
}
#***** :*
#------ RESTRICCIONES ---------
elif dup 1 =
{
7 +
}
elif dup 2 =
{
6 +
}
elif dup 8 =
{
6 -
}
elif dup 9 =
{
7 -
}
#---------------- TECLAS --------------
#en los siguientes if moveremos la posicion dependiendo la flecha que eligas...
OS:key
if dup 1792834 =
{
swap
1 +
swap
drop
}
elif dup 1792833 =
{
swap
1 -
swap
drop
}
elif dup 1792835 =
{
swap
2 +
swap
drop
}
elif dup 1792836 =
{
swap
2 -
swap
drop
}
#--------- EJERCICIOS ------------
#aqui inician los ejercicios que si al dar enter haces la opcion solicitada
elif dup 10 =
{
drop
cr cr
#opcion 1
if dup 3 =
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
drop
}
#opcion 2
elif dup 4 =
{
cr
-9
while dup
{
dup S.
++
}
0 .
drop
}
#opcion 3
elif dup 5 =
{
cr cr
for 97 upto 122
{
dup emit
}
}
#opcion 4
elif dup 6 =
{
cr cr cr
65
repeat
dup emit
++
dup
until 91 = end
drop
}
#opcion 5
elif dup 7 =
{
jump final
}
}
until dup 27 = end
final: cr cr cr cr
