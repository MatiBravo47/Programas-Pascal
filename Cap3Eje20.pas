program Cap3Eje20;
uses crt;
var
Arch:Text;
N,Total:Integer;
Cant:Byte;
begin
clrscr;
Assign(Arch,'Ejercicio320.txt');Reset(Arch);
Read(Arch,N);
While not eof (Arch) do
Begin
Total:=0;
Cant:=0;
  If n<0 then
    begin
    Read(Arch,N);//Primer numero positivo desde el negativo
    while N>=0 do
      begin
      Total:=Total+N;
      if n<>0 then
        Cant:=Cant+1;
      Read(Arch,N);
      end;
    If (N<0) and (cant<>0) then
    Write((Total/cant):5:2);
    end
  else
   Read(Arch,N);//Sino encuentra negativo,sigue buscando
end;
Close(Arch);
readln;
end.

