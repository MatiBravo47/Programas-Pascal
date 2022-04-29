program Cap3Eje1;
Uses crt;
Var
 Arch:Text;
 N,Ocur,Pos,i:Byte;
 Max,Num,MinImp:Integer;
begin
Clrscr;
Max:=-1000;
MinImp:=4000;
N:=10;
Assign(Arch,'Ejercicio31.txt');
Reset(Arch);
//Readln(Arch,N);
For i:=1 to N do
Begin
Read(Arch,Num);
If odd(Num) then
  If Num<MinImp then
    MinImp:=Num;
If Num > Max then
  Begin
  Max:=Num;
  Ocur:=1;
  Pos:=i;
  end
else
  if Num = Max then
  Ocur:=Ocur+1;
end;
Close(Arch);
Writeln('El maxino numero es ',Max);
Writeln('Ocupa el ',pos,' lugar' );
Writeln(Ocur,' ocurrencias');
If MinImp=4000 then
Writeln ('No existen impares')
else
Writeln ('El minimo de los impares es',MinImp) ;
Readln;
end.

