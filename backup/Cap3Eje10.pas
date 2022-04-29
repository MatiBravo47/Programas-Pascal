program Cap3Eje10;
uses crt;
Var
  Frec:Byte;
  Arch:Text;
  Pri,Seg:Integer;

begin
  Clrscr;
  Assign(Arch,'Ejercicio310.txt');Reset(Arch);
  Read(Arch,Pri);
  Frec:=1;
  Writeln('Numero    Frecuencia');
  While not eof (Arch) do
    Begin
    Read(Arch,Seg);
    If Pri=Seg then
    Frec:=Frec+1
    Else
      If (Pri<>Seg) then
      Begin
      Writeln (Pri,'            ',Frec);
      Frec:=1;
      end;
    Pri:=Seg;
  end;
  Close(Arch);
  If Pri=Seg then
  Writeln (Pri,'            ',Frec);
  Readln;
end.

