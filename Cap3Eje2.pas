//Ej 2) Se debe liquidar el sueldo de N empleados, de ellos se sabe el
//nombre y la antigüedad en años.
//Todos parten de un básico de $15000 y la antigüedad se calcula
//según la siguiente tabla:
//- Hasta 5 años …………. 5%
//- De 6 a 10 años……….. 8%
//- De 11 a 15 años…….. 12%
//- Más de 15 años …… 20%
//Además se descuenta un 11% por cargas sociales y $500 por seguro
//obligatorio.
//Calcular e informar:
//a) Nombre y sueldo de cada empleado.
//b) Nombre del empleado que más cobra (suponer que es único).
//c) Monto del sueldo promedio.
program Cap3Eje2;
uses crt;
Const
  Basico=15000;
Var
  SueldoMax, Sueldo, SueldoTotal: Real;
  N, anios: Byte;
  Arch: Text;
  Nombre, NombreMax: String[6];

begin
Clrscr;
SueldoMax := -1000; //sueldo maximo imposible
N := 0; //cantidad de empleados
SueldoTotal := 0;
Assign(Arch,'Ejercicio32.txt'); Reset(Arch);
While not eof(Arch) do //Mientras no termine el archivo
  Begin
  Readln (Arch, Nombre , Anios);
  N := N + 1;
  Sueldo := 0;//Resetea el sueldo para cada empleado
  Case Anios of
  1..5:  Sueldo:= Basico * 1.05; //basico + %5
  6..10: Sueldo := Basico * 1.08; //basico + %8
  11..15: Sueldo := Basico * 1.12; //basico + %12
  else
  Sueldo := Basico * 1.20; //basico + $20-15 anios o más
  end;
  Sueldo := (Sueldo * 0.88) - 500; //-%11 cargas sociales y -$500 cargas sociales
  If (Sueldo > SueldoMax) then
    Begin
    NombreMax := Nombre;
    SueldoMax :=  Sueldo;
    end;
  Writeln('El sueldo de ',Nombre, ' es $',Sueldo:8:2 );
  SueldoTotal := SueldoTotal + Sueldo;
  End;
Close(Arch);
Writeln('El que mas cobra es ', NombreMax);
Writeln('El saldo promedio es $',(SueldoTotal / N):8:2);
Readln;
end.

