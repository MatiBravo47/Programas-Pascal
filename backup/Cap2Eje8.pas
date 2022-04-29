program Cap2Eje8;
uses crt;
var
 Edad,CuotaB,CantDep,Dia:Integer;
 Total:Real;
 Pileta:char;

begin
clrscr;
Writeln('Ingrese edad');Readln (Edad);
Case edad of
5..12  : CuotaB:=750;
13..18 : CuotaB:=1200;
19..120 : CuotaB:=1800;
else
CuotaB:=0;
end;
Writeln('Ingrese cantidad de deportes');Readln(CantDep);
If CantDep>2 then
  begin
  Writeln('Incluye pileta escuela?(S/N)');Readln(Pileta);
  Pileta:=Upcase(Pileta);
    If pileta='S' then
    Total:= CuotaB+((CantDep-3)*250)+800
    else
    Total:=CuotaB+(CantDep-2)*250;
  end
else
Total:=CuotaB;
Writeln('Ingrese dia de pago');Readln(Dia);
If dia>15 then
Total:=Total*1.05;
readln;
end.

