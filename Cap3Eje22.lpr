//Ej 22) A partir de un archivo de texto que contiene palabras separadas
//entre sí por uno o más blancos desarrollar un programa para:
//a) Mostrar la palabra con más cantidad de vocales del texto.
//b) Grabar en un texto de salida las palabras con más de cuatro
//letras pero escritas al revés.
//c) Contar cuántas son palíndromas (capicúas)
program Cap3Eje22;
uses crt;
Var
  ArchEnt,ArchSal:Text;
  VocMax:Integer;
  Car:Char;
  Palabra, VocPalabra, aux:String;
  Voc, capicua:Byte;

begin
  Clrscr;
  VocMax:= -999; //valor imposible de cantidad de vocales
  capicua:= 0;
  Assign(ArchEnt,'Ejercicio322.txt'); Reset(ArchEnt);
  Assign(ArchSal,'Ejercicio322Sal.txt'); Rewrite(ArchSal);
  Read(ArchEnt, Car);
  Car:= Upcase(Car);
  While not eof (ArchEnt) do
  begin
  Voc:=0;//inicializa cant de vocales
  Palabra:='';//inicializa palabra
  aux:='';
    While (Car <> ' ') do //mientras no encuentre un espacio
    begin
      if (car='A') or (car='E') or (car='I') or (car='O') or(car='U') then
        Voc:= Voc + 1; //cuenta vocales
      Palabra:= Palabra + Car ;
      aux:= car + aux;
      read(ArchEnt, Car);
      car:= Upcase(Car);
    end; //Sale un espacio y la palabra completa
    If (Voc > VocMax) then
      begin
      VocMax:= Voc;        //actualiza vocales maximas
      VocPalabra:= Palabra;//actualiza palabra maxima
      end;
    if (length(palabra) > 4 ) then   //escribe palabras al reves
      begin
      write(archSal, aux);
      write(archSal, ' ');
      end;
    if (aux = palabra) and (length(palabra) >2 ) then
      capicua := capicua + 1;
  Read(ArchEnt, Car);
  Car:= Upcase(Car);
  end;
  close(ArchEnt);
  Close(ArchSal);
  Writeln('La palabra con mas vocales es ', VocPalabra);
  writeln('Existen ',capicua, ' palabras capicua');
  readln;
end.

