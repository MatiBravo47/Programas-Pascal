program Cap2Eje13;
uses crt;
Var
X,Compra:real;
Moneda:Byte;

begin
Clrscr;
Writeln('Ingrese una cantidad de pesos');Readln(X);
Writeln('Elija tipo de moneda extranjera');
Writeln('1)Dolar');
Writeln('2)Euro');
Writeln('3)Real');
Readln(Moneda);
Case Moneda of
1: Compra:=X/120.80;
2: Compra:= X/150.10;
3: Compra:= X/26.50;
end;
If moneda=1 then
Writeln('Se pueden comprar ', Compra:5:2, ' dolares');
If moneda=2 then
Writeln('Se pueden comprar ',Compra:5:2, ' euros');
If moneda=2 then
Writeln('Se pueden comprar ', Compra:5:2, 'Reales');
Readln;
end.

