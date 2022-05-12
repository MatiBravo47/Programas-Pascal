program Cap4Eje5;
uses crt;
type
  TM=array[1..4,1..4] of integer;
  TV=array[1..4] of integer;
Procedure IniciaMatriz(n:byte;var m:TM);//inicializa matriz en 0
Var
  i,j:byte;
Begin
For i:=1 to n do// Personas
  for j:=1 to 4 do // columna tipo de compra
    M[i,j]:=0;
end;

Procedure LeeArch(Var N:byte;Var M:TM);
Var
  Arch:Text;
  NroCli,Tipo:byte;
  Compra:Integer;
begin
ASSIGN(arch,'Ejercicio65.txt');RESET(Arch);
Readln(Arch,N);
IniciaMatriz(N,M);
While not eof (arch) do
  Begin
  Readln(Arch,NroCli,Tipo,compra);
  M[NroCli,Tipo]:=M[NroCli,tipo]+compra;
  end;
end;

Procedure TCompras(M:TM;N:byte); //Sumar columna y mostrar
Var
  i,j:byte;
  Total:integer;
Begin
  For j:=1 to 4 do //tipos de producto
  begin
  Total:=0;
    For i:=1 to N do //numero de clientes
    Total:=Total+M[I,J];
  Writeln('En el rubro ',j,' se gasto : ',total);
  end;
end;

Procedure Supero(N:byte;M:TM);
Var
  i:byte;
Begin
  For i:=1 to N do
    if ((M[i,1])> (M[i,3])) then //si supermercado supera a indumentaria
    Writeln('El cliente ',i,' gasto mas en indumentaria que supermercado ')
end;
Procedure IniciaTot(n:byte;var TOTAL:TV);
var
  i:byte;
begin
For i:=1 to N do
  Total[i]:=0;
end;

Procedure Prom(N:byte;M:TM;total:tv);
var
  i,j:byte;
Begin            //Recorro por fila
for i:=1 to N do
  begin
  total[i]:=0;
    For j:=1 to 4 do
      Total[i]:=total[i] + M[I,J];
  Writeln('El promedio de compra del cliente ',i,' es: ',(total[i]/4):5:2);
  end;
end;

Function masConsumo(total:tv;n:byte):byte;
Var
  i,maxi:byte;
  max:integer;
Begin
Max:=Total[1];
MaxI:=1;
  For i:=2 to N do
    If total[i]>Max then
    begin
    MaxI:=i;
    Max:=Total[i];
    end;
Masconsumo:=MaxI;
end;
//Programa principal
Var
  n:byte;
  m:TM;
  total:tv;
begin
  clrscr;
  LeeArch(N,M);
  TCompras(M,N);
  Supero(N,M);
  Prom(N,M,total);
  iniciaTot(n,total);
  Writeln('El que mas consumo tuvo fue el cliente', MasConsumo(total,n));


  readln;
end.

