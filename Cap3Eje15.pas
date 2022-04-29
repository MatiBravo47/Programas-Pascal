program Cap3Eje15;
uses crt;
Var
  Letra,Caracter:Char;
  Arch:Text;
  fin:Boolean;
  Palabras:Byte;
begin
  clrscr;
  palabras:=0;
  fin:=false;
  Writeln('Ingrese una letra');Readln(Letra);
  Letra:=Upcase(letra);
  Assign(Arch,'Ejercicio315.txt');Reset(Arch);
  Read(arch,Caracter);
  caracter:=Upcase(Caracter);
  While not fin do
    Begin
    If caracter<>letra then
      begin
      Repeat
      Read(arch,Caracter);
      until (caracter=' ') or (caracter='.');
      if caracter='.' then fin:=True;
      end
    else
      begin
      Palabras:=palabras+1;
      Repeat
        Read(arch,Caracter);
        until (caracter=' ') or (caracter='.');
        if caracter='.' then fin:=True;
      end;
    Read(arch,Caracter);
    caracter:=Upcase(Caracter);
    end;
Close(Arch);
Writeln('Hay ',palabras,' que empiezan con la letra ',Letra);
readln;
end.

