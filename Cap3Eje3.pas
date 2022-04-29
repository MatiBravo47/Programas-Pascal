program Cap3Eje3;
Uses crt;
Var
Arch:Text;
Ant,Num:Integer;
Cont:Byte;
begin
Clrscr;
Cont:=0;
Assign(Arch,'Ejercicio33.txt');Reset(Arch);
Read(Arch,Ant);
While Not eof(Arch) do
Begin
  Read(Arch,Num);
  If Num>Ant then
  Cont:=Cont+1;
  Ant:=Num;
end;
Writeln('Se supera al numero anterior ',Cont, ' veces');
Readln;
end.

