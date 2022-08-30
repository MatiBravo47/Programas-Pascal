//Ej 8) Un club cobra a sus socios una cuota básica por mes que
//incluye dos deportes, su costo depende de la edad del socio:
//Si es mayor de 18: $1800
//Si está entre 13 y 18: $1200
//Si tiene entre 5 y 12 años: $750
//En otro caso no paga
//Además, se cobra $250 por cada deporte adicional que realiza,
//excepto pileta escuela que cuesta $800. Si
//la cuota se abona después del día 15 tiene un recargo del 5%.
//Determinar los datos a ingresar, para calcular e informar cuánto
//paga un socio
program Cap2Eje8;
uses crt;
var
 Edad, Dia, CantDep: word;
 CuotaB: Integer;
 Total: Real;
 Pileta: char;

begin
clrscr;
Writeln('Ingrese edad'); Readln(Edad);
Case edad of //cuota basica socios segun edad
5..12  : CuotaB := 750;
13..18 : CuotaB := 1200;
19..120 : CuotaB := 1800;
else
		CuotaB := 0;
end;
Writeln('Ingrese cantidad de deportes'); Readln(CantDep);
If (CantDep > 2) then
  begin
  Writeln('Incluye pileta escuela?(S/N)');Readln(Pileta);
  Pileta := Upcase(Pileta);
  If pileta = 'S' then //250 adicionales y 800 de pileta
    Total := CuotaB + ((CantDep - 3) * 250) + 800
  else //solo los 250 adicionales
    Total := CuotaB + (CantDep - 2) * 250;
  end
else
		Total := CuotaB;
Writeln('Ingrese dia de pago'); Readln(Dia);
If (dia > 15) then //recargo de 5%
	 Total := Total * 1.05;
Writeln('el total a pagar es: $',Total:4:2);
readln;
end.

