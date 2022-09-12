//15)A partir de un archivo de texto que contiene una secuencia
//de caracteres terminada en punto, desarrollar un programa para
//cada item:
//b) Cuántas palabras contienen una letra que ingresa por teclado
program Cap3Eje15B;
uses crt;
Var
  letra, caracter: char;
  arch: text;
  cant: byte;
  palabra, fin: boolean;

begin
clrscr;
fin:= false;
palabra:= false;
cant:= 0;
Writeln('Ingrese una letra'); Readln(Letra); //letra a buscar
Letra:= Upcase(Letra);
Assign(Arch,'Ejercicio315.txt'); Reset(Arch);
Read(Arch, Caracter);
caracter:= upcase(caracter);
while not fin do
begin
if (caracter = letra) then //si encuentra la letra en la palabra
   begin
   if not palabra then //si ya no fue contada en la palabra
     begin
     cant:= cant + 1;  //cuenta la palabra
     palabra:= true; //la palabra ya fue contada
     end
	 end;
if (caracter = ' ') or (caracter = '.') then
   palabra:= false;  //termino la palabra
if (caracter = '.') then
   fin:= true;
Read(arch, caracter);
caracter:= upcase(caracter);
end;
close(arch);
writeln('Contienen la letra ',cant,' palabras');
Readln;
end.

