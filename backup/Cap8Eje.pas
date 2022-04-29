{Ej 3) Considerar la siguiente función recursiva:
function confuso(a,b:integer):integer;
begin
if (b = 0) then
confuso := 0
else
if (b mod 2 = 0) then
confuso := confuso(a+a, b div 2)
else
confuso := confuso(a+a, b div 2) + a;
end;
a) Probarlo con los siguientes invocaciones: confuso(2, 17) y confuso(4, 25)
b) Determinar qué función matemática define confuso.
}
program Cap8Eje3;
Function confuso(a,b:integer):Integer;
Begin
  If (B=0) then
  confuso:=0
  else
    if (B mod 2=0) then
    confuso:=Confuso(a+a ,b div 2 )
    else
      confuso:=confuso(a+a,b div 2)+a;
end;
Var
x,y:Integer;
begin
Writeln('Ingrese x');Readln(X);
Writeln('Ingrese y');Readln(Y);
Writeln(Confuso(x,y));
Readln;
end.

