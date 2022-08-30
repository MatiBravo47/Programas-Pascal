//Ej 9) A un vendedor le pagan un sueldo básico de $8000 por mes más
//una comisión del 5% de las ventas;si superó en ventas un monto X
//(dato ingresado por teclado) se le agrega un 3%. Por presentismo cobra
//$1000 más ó 2% de las ventas, lo que resulte mayor. Si faltó más
//de 2 días se le descuenta un 7% del total.
//Definir los datos a ingresar. Calcular e informar lo que debe
//cobrar el vendedor
program Cap2Eje9;
uses crt;
const
  presentismo = 1000;
Var
  Monto,X,Total,porce,SueldoB:Real;
	Faltas:Integer;

begin
clrscr;
SueldoB:=8000;
Writeln('Ingrese monto obtenido en ventas');Readln(Monto);
Total:= SueldoB + (Monto * 1.05);//+ %5 comisiones de las ventas
Writeln('Ingrese monto para obtener el beneficio');Readln(X);
If (monto > x) then
	 Total := Total * 1.03; //+ %3 por superar
	 Porce :=((2 * Monto) / 100);//%2 de monto
Writeln('Indique cantidad de dias que falto');Readln(Faltas);
If (faltas = 0) then
	 If (Porce > Presentismo ) then
	 		Total := Total + porce
	 else
      Total := Total + Presentismo;
If (faltas>2) then
  Total := Total * 0.93; //-7% total
Writeln('El vendedor va a cobrar $',Total:5:2);
readln;
end.

