//Ej 4) Escribir un subprograma recursivo que
//retorne una cadena de caracteres recibida como
//parametro con su contenido invertido.
//Ejemplo: ‘lamina’  ‘animal’
program Cap8Eje4;
uses crt;

Function Invierte(Pal: String; i: byte): String;
Begin
  if (i = 1) then   //si llega a la ultima letra
    invierte:= pal[i]
  else
    invierte:= pal[i] + invierte(pal, i - 1);
end;
//Ejemplo lamina
//pal[1]:= l
//pal[2]:= a
//pal[3]:= m
//pal[4]:= i
//pal[5]:= n
//pal[6]:= a
//invierte(6):= pal[6] + invierte(lamina, 5)
//Invierte(5):= pal[5] + invierte(lamina, 4)
//Invierte(4):= pal[4] + invierte(lamina, 3)
//Invierte(3):= pal[3] + invierte(lamina, 2)
//Invierte(2):= pal[2] + invierte(lamina, 1)
//Invierte(1):= pal[1]
//i = 1 => invierte := pal[1]
//=> invierte:=L;
//i = 2 => invierte := pal[2] + invierte(1);
//=> invierte:= 'a' + 'l';
//i = 3 => invierte := pal[3] + invierte(2);
//=> invierte:= 'm' + 'al';
//i = 4 => invierte := pal[4] + invierte(3);
//=> invierte:= 'i' + 'mal'
//i = 5 => invierte := pal[5] + invierte(4)
//=> invierte:= 'n' + 'imal'
//i = 6 => invierte := pal[6] + invierte(5)
//=> invierte:= 'a'+ 'nimal'
//==> 'animal'
Var
  palabra: string;
  j: byte;

begin
  clrscr;
  writeln('Ingrese una palabra a invertir'); Readln(Palabra);
  j:= Length(palabra);
  Writeln('La palabra invertida queda:', invierte(Palabra, j));
  readln;
end.

