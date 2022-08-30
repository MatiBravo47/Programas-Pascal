
//Ej 3) Ingresar N números enteros, informar cuántas veces
//un número supera al anterior
//ejemplo:3 2 5 6 7 2 1 9 5 4 3
program Cap3Eje3;
Uses crt;
Var
Arch: Text;
Ant, Num: Integer;
Cont: Byte;
begin
Clrscr;
Cont := 0;
Assign(Arch, 'Ejercicio33.txt');Reset(Arch);
Read(Arch, Ant); //lee primer numero y guarda como anterior
While Not eof(Arch) do //mientras no termine el archivo
Begin
  Read(Arch,Num);
  If (Num > Ant) then
  Cont := Cont + 1;
  Ant := Num;
end;
Writeln('Se supera al numero anterior ',Cont, ' veces');
Readln;
end.

