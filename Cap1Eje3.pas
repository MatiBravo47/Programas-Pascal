program Cap1Eje3;
Uses crt;
Var
 X:integer;
 SueldoB,SueldoN:Real;
begin
  clrscr;
  Writeln ('Ingrese cantidad de horas de trabajo');Readln(X);
  SueldoB:=(X*200);
  SueldoN:=SueldoB*0.84;
  Writeln('El sueldo bruto es $', SueldoB:4:2, ' y el sueldo neto es $',SueldoN:4:2);
  readln;
end.

