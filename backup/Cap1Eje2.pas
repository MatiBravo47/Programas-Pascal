program Cap1Eje2;
Uses crt;
Const
  A1=1;
Var
  K:Integer;
  An,Dif:Real;
begin
clrscr;
Writeln('Ingrese un valor por teclado');Readln(K);
An:=A1+3*(K-1);
Writeln('El k-enesimo termino es ',AN);
Dif:=An-(A1+3*K);
Writeln('La diferencia es: ',Dif);
readln;
end.

