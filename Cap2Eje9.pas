program Cap2Eje9;
uses crt;
Var
Monto,X,Total,porce,SueldoB:Real;
Faltas:Integer;

begin
clrscr;
SueldoB:=800;
Writeln('Ingrese monto obtenido en ventas');Readln(Monto);
Total:=SueldoB+((5*Monto)/100);
Writeln('Ingrese monto para obtener el beneficio');Readln(X);
If monto>x then
Total:=Total*1.03;
Porce:=((2*Monto)/100);
If Porce > 1000 then
Total:=Total + porce
else
Total:=Total + 1000;
Writeln('Indique cantidad de dias que falto');Readln(Faltas);
If faltas>2 then
Total:=Total*0.93;
Writeln('El vendedor va a cobrar ',Total);
readln;
end.

