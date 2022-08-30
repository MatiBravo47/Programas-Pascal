//Ej 13) Dada una cantidad X de pesos y un tipo de moneda extranjera,
//ambos ingresados por teclado, se desea determinar e informar cuánto
//se puede comprar dada la siguiente tabla de cotizaciones:
//D=Dolar 120.80
//E=Euro  150.10
//R=Real 26.50
program Cap2Eje13;
uses crt;
const
  D=120.80;
  E=150.10;
  R=26.50;

Var
X:real;
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
1: Writeln('Se pueden comprar ', (X / D):5:2, ' Dolares');
2: Writeln('Se pueden comprar ', (X / E):5:2, ' Euros');
3: Writeln('Se pueden comprar ', (X / R):5:2, ' Reales');
end;
Readln;
end.

