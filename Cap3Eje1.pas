//Ej 1) Dados N números enteros, calcular e informar:
//a) El máximo, qué lugar ocupa la primera aparición y cuántas ocurrencias tiene.
//b) El mínimo de los impares (informar si no existe)
//Ejemplo: N = 10        78, 45, 80, 56, 80, 32, 90, 89, 90, 45
program Cap3Eje1;
Uses crt;
Var
 Arch:Text;
 N, Ocur, Pos, i: Byte;
 Max, Num, MinImp: Integer;
 impar : boolean;
begin
Clrscr;
//Inicio maximo y minimo con valores imposibles
Max := -1000;
MinImp := 4000;
impar := false;
Assign(Arch,'Ejercicio31.txt');//asigno archivo a Arch
Reset(Arch);//preparo para lectura
Readln(Arch,N);//leo N primera linea
For i := 1 to N do
Begin
Read(Arch, Num);
If odd(Num) then //odd verifica si es impar
  If (Num < MinImp) then //verifica si es menor que el impar existente
    begin
    MinImp := Num;
    impar := true; //existe impar
    end;
If (Num > Max) then
  Begin
  Max := Num; //almaceno maximo
  Ocur := 1; //reset ocurrencias
  Pos := i; //guarda posicion aparicion
  end
else
  if Num = Max then
  Ocur := Ocur + 1; //cuenta ocurrencias
end;
Close(Arch); //cierra archivo
Writeln('El maxino numero es ', Max);
Writeln('Ocupa el ', pos,' lugar' );
Writeln(Ocur,' ocurrencias');
If impar then
   Writeln ('El minimo de los impares es ',MinImp)
else
   Writeln ('No existen impares');
Readln;
end.

