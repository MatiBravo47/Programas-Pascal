//Ej 5) Una Tarjeta de Crédito tiene información de las compras
//de sus N clientes en un archivo y en cada
//línea se almacenó:
// Número de cliente (puede repetirse)
// Tipo de compras (1=Supermercado, 2=Combustible,
//3=Indumentaria, 4=Otros)
// Monto de la compra.
//Nota: Un cliente puede registrar más de una compra del mismo
//tipo.
//Leer los datos en un arreglo NroCli paralelo a la matriz
//acumulativa Compras de Nx4 donde la 1º columna corresponde a
//la compra en Supermercado, la 2º a Combustible, la 3º a
//Indumentaria y la 4º a Otros.
//Calcular e Informar:
//a) Total de compras en cada rubro.
//b) Listado con los clientes en los cuales el monto en
//Supermercado superó a Indumentaria
//c) Promedio de compra por cliente.
//d) Número de cliente que más consumió.
//e) Cuántos clientes no registraron compras en algún rubro.
//Ejercicio65.txt:
//4
//1 1 200
//2 1 400
//3 1 100
//4 1 600
//1 2 700
//2 3 100
//3 4 200
//4 2 300
//2 1 400
//2 2 200
//2 3 100
//3 1 200
//4 4 1000
//1 2 200
program Cap6Eje5;
uses crt;
const
  M=4;
type
  TM = array [1..M,1..M] of integer;
  TV = array [1..M] of integer;

Procedure IniciaMatriz(n: byte; var matrizCompras: TM);//inicializa matriz en 0
Var
  i, j: byte;
Begin
For i:= 1 to n do// Personas
  for j:= 1 to M do // columna tipo de compra
    MatrizCompras[i, j]:=0;
end;

Procedure LeeArch(Var N: byte; Var matrizCompras: TM);
Var
  Arch: Text;
  NroCli, Tipo: byte;
  Compra: Integer;
begin
ASSIGN(arch, 'Ejercicio65.txt'); RESET(Arch);
Readln(Arch, N);
IniciaMatriz(N, matrizCompras);
While not eof (arch) do
  Begin
  Readln(Arch, NroCli, Tipo, compra);
  matrizCompras[NroCli,Tipo]:= matrizCompras[NroCli, tipo] + compra;
  end;
end;

//Total de compras en cada rubro
Procedure TCompras(matrizCompras: TM; N: byte); //Sumar columna y mostrar
Var
  i, j: byte;
  totalRubro: word;
Begin
  For j:= 1 to M do //tipos de producto
  begin
  totalRubro:= 0;
    For i:= 1 to N do //numero de clientes
    totalRubro:= totalRubro + matrizCompras[I, J];
  Writeln('En el rubro ', j,' se gasto : $', totalRubro);
  end;
end;

//Listado con los clientes en los cuales el monto en Supermercado superó a Indumentaria
Procedure Supero(N: byte; matrizCompras: TM);
Var
  i: byte;
Begin
  For i:=1 to N do
    if ((matrizCompras[i,1]) > (matrizCompras[i,3])) then //si supermercado supera a indumentaria
       Writeln('Cliente ', i,' gasto mas en indumentaria que supermercado ')
end;

//inicia en 0 vector totalCompra
Procedure IniciaTot(n: byte; var totalCompra: TV);
var
  i: byte;
begin
For i:= 1 to N do
  totalCompra[i]:= 0;
end;

//Promedio de compra por cliente
Procedure Prom(N: byte; matrizCompras: TM; totalCompra: tv);
var
  i, j: byte;
Begin            //Recorro por fila
for i:= 1 to N do
  begin
  totalCompra[i]:= 0;
    For j:= 1 to M do
      totalCompra[i]:= totalCompra[i] + matrizCompras[I,J];
  Writeln('Promedio de compra cliente ',i,' : $',(totalCompra[i] / M):5:2);
  end;
end;

Número de cliente que más consumió
Function masConsumo(totalCompra: tv; n: byte): byte;
Var
  i, maxi: byte;
  max: integer;
Begin
Max:= totalCompra[1];
MaxI:= 1;
  For i:=2 to N do
    If (totalCompra[i] > Max) then
      begin
      MaxI:=i;
      Max:=TotalCompra[i];
      end;
Masconsumo:=MaxI;
end;

//Programa principal
Var
  n: byte;
  matrizCompras: TM;
  totalCompra: tv;
begin
  clrscr;
  LeeArch(N, matrizCompras);
  TCompras(matrizCompras, N);
  Supero(N, matrizCompras);
  Prom(N, matrizCompras, totalCompra);
  iniciaTot(n, totalCompra);
  Writeln('Cliente que mas consumio: ', MasConsumo(totalCompra, n));
  readln;
end.

