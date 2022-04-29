program Cap3Eje9;
uses crt;
Var
 Asc:Boolean;
 Arch:Text;
 Pri,Seg:Integer;
begin
  Clrscr;
  Asc:=True;
  Assign(Arch,'Ejercicio39.txt');Reset(Arch);
  Read(Arch,Pri);
  While not eof (Arch) do
  Begin
  Read(Arch,Seg);
  If Pri>Seg then
  Asc:=False;
  Pri:=Seg;
  end;
  Close(Arch);
  If Asc then
  Writeln('Esta en forma ascendente')
  else
  Writeln('No esta en forma ascendente');
  Readln;
end.

