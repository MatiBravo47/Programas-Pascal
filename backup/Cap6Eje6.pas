program Cap6Eje6;
uses crt;
type
  TM=array[1..10,1..10] of byte;

Procedure CM(var C:TM;N:byte);
var
  k,i,j:byte;
begin
  i:=1;
  j:=N div 2+1;
  for k:=1 to N*N do
    begin
      c[i,j]:=k;
      if k mod n =0 then
      i:=i+1
      else
        begin
        if i=1 then
        i:=n
        else
          i:=i-1; //fila anterior
        if j=n then
         j:=1
        else
          j:=j+1;//Columna siguiente
        end;
    end;
end;
Procedure iniciaMatriz(N:byte;Var C:TM);
var
  i,j:byte;
Begin
for i:=1 to N do
  for J:=1 to N do
    C[i,j]:=0;
end;
Procedure Muestra(N:byte;C:TM);
Var i,j:byte;
begin
  for i:=1 to N do
  Begin
    for j:=1 to N do
      Write(C[i,j],' ');
  Writeln();
  end;
end;

var
  n:byte;
  C:tm;
begin
  clrscr;
  Writeln('Ingrese un numero impar');Readln(N);
  iniciaMatriz(n,c)
  CM(C,N);
  muestra(n,c);
  readln;
end.

