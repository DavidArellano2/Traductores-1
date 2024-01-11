#!/usr/bin/env foremb 
#Lo antes mencionado se pone para poder abrir el archivo sin poner la extencion en la maquina virtual y solo poner el nombre del archivo.

16 base #al poner esto cambias los resultados a hexadecimal
repeat #hacemos un ciclo para que no termine hasta que presionemos la tecla de "ESC"
OS:key #indicacion para recibir un caracter

#de aqui en adelante colocaremos varios 'if' comparandolo con la tecla que se nos pidieron en su simbolo ASCII y entrando al if se imprime la tecla que hayas presionado...
if dup 32 =
{
dup
.
"<- ESPACIO" $.
cr #Con el 'cr' hacemos salto de línea para que se siga repitiendo hasta que no presionemos la tecla ESC
}
elif dup 1792833 =
{
dup
.
"<- FLECHA ARRIBA" $.
cr
}
elif dup 1792836 =
{
dup
.
"<- FLECHA IZQUIERDA" $.
cr
}
elif dup 1792834 =
{
dup
.
"<- FLECHA ABAJO" $.
cr
}
elif dup 1792835 =
{
dup
.
"<- FLECHA DERECHA" $.
cr
}
elif dup 10 =
{
dup
.
"<- ENTER" $.
cr
}
elif dup 127 =
{
dup
.
"<- RETROCESO" $.
cr
}
elif dup 458961790 =
{
dup
.
"<- SUPR" $.
cr
}
elif dup 1789776 =
{
dup
.
"<- F1" $.
cr
}
elif dup 1789777 =
{
dup
.
"<- F2" $.
cr
}
elif dup 1789778 =
{
dup
.
"<- F3" $.
cr
}
elif dup 1789779 =
{
dup
.
"<- F4" $.
cr
}
elif dup 458961205 =
{
dup
.
"<- F5" $.
cr
}
elif dup 458961207 =
{
dup
.
"<- F6" $.
cr
}
elif dup 458961208 =
{
dup
.
"<- F7" $.
cr
}
elif dup 458961209 =
{
dup
.
"<- F8" $.
cr
}
elif dup 458961457 =
{
dup
.
"<- F9" $.
cr
}
elif dup 458961458 =
{
dup
.
"<- F10" $.
cr
}
elif dup 458961459 =
{
dup
.
"<- F11" $.
cr
}
elif dup 458961460 =
{
dup
.
"<- F12" $.
cr
}
until dup 27 = end
.
"<- ESC" $.
cr