program Cap2Eje1;
uses crt;
var
x:char;
begin
clrscr;
Writeln('Ingrese un caracter');Readln(X);
If (X>='A') and (X<='Z') then
  Writeln ('Es mayuscula')
Else
  If (X>='a') and (X<='z') then
    writeln ('Es minuscula')
  else
    Writeln ('No es mayuscula ni minuscula');
readln;
end.

