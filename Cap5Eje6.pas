program Cap5Eje6;
Uses crt;
Type
Var

Procedure LeeArch();
Var
  arch:Text;
  Pal:String;
  Car:char;
Begin
  Palabras:=0;
  LongMax:=0;
  Assing(Arch,'Ejercicio56.txt');Reset(Arch);
  While not eof (arch) do
  Begin
  Pal:='';
  Read(Arch,car);
    While (Car<>'.') or (Car<>',') or (Car<>' ') do
    Begin
    Pal:=Pal + car;
    Long:=Long+1;
    Read(Arch,car);
    end;
    If long>LongMax then
    LongMax:=Long;
    Palabras:=Palabras+1;
  end;
  Close(Arch);
end;
begin
  Clrscr;
  LeeArch();
  Readln;
end.

