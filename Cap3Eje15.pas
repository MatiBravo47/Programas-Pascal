//A partir de un archivo de texto que contiene una secuencia de
//caracteres terminada en punto, desarrollar un programa para cada item:
//a) Cuántas palabras comienzan con una letra que ingresa por teclado
//Lorem Ipsum es simplemente el texto de relleno de las imprentas y
//archivos de texto.
program Cap3Eje15;
uses crt;
Var
  Letra, Caracter: Char;
  Arch: Text;
  fin: Boolean;
  Palabras: Byte;
begin
  clrscr;
  palabras:= 0;
  fin:= false;
  Writeln('Ingrese una letra'); Readln(Letra);
  Letra:= Upcase(letra);
  Assign(Arch,'Ejercicio315.txt'); Reset(Arch);
  Read(arch, Caracter);
  caracter:= Upcase(Caracter);
  While not fin do
    Begin
    If (caracter <> letra) then //si la palabra no empieza con la letra
      begin
      Repeat
        Read(arch,Caracter);  //lee caracteres hasta que encuentre espacio o punto
      until (caracter=' ') or (caracter='.');
      if caracter='.' then
        fin:= True; //si es punto, fin de la de oracion
      end
    else //si empieza con la letra
      begin
      Palabras:= palabras + 1; //cuenta palabras
      Repeat
        Read(arch, Caracter); //lee hasta que encuentre punto o espacio
        until (caracter=' ') or (caracter='.');
        if caracter='.' then
          fin:= True;
      end;
    Read(arch, Caracter);
    caracter:= Upcase(Caracter);
    end;
Close(Arch);
Writeln('Hay ',palabras,' que empiezan con la letra ',Letra);
readln;
end.

