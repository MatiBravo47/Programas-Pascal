program Cap8Eje5;
uses crt;
type
  TV=array[1..10] of integer;
Procedure LeeArch(var V:TV;Var n:byte);
var
  Arch:text;
Begin
  n:=0;
  ASSIGN(Arch,'Ejercicio85.txt');RESET(arch);
  While not eof (arch)do
  begin
    N:=N+1;
    Readln(Arch,V[N]);
  end;
  CLOSE(arch);
end;
Var
  v:tv;
  n:byte;
begin
  clrscr;
  LeeArch(v,n);
  readln;
end.

