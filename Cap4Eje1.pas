program Cap4Eje1;

Function LetraoNo(Car:Char):boolean;
Begin
  If (Car in ['a'..'z']) or (car in['A'..'Z'] )then
  letraoNo:=true
  else
    letraoNo:=False;
end;
Var
  Car:Char;
begin
  Writeln('Ingrese una caracter');Readln(Car);
  LetraoNo(Car);
  If LetraoNo(Car) then
  Writeln('El caracter ingresado es una letra')
  else
  Writeln('El caracter ingresado no es una letra');
Readln;
end.

