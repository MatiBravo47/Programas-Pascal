program Cap6Eje1;
uses crt;
type
  TM=array[1..4,1..5] of byte;
  TV=array[1..10]of byte;
Var
  impares:tv;
  V:TM;
  N,M,w,x:Byte;
Procedure LeeArch(Var N,M:Byte;Var V:TM);
Var
  i,j:Byte;
  Arch:text;
Begin
  ASSIGN(Arch,'Ejercicio61.txt');RESET(Arch);
  Readln(Arch,N,M);
  For i:=1 to N do
  Begin
    For j:=1 to M do
    Read(Arch,V[i,j]);
  Readln(Arch);
  end;
  CLOSE(Arch);
end;
Function Max(I,M:Byte;V:TM):Byte;
Var
  Maximo,j:Byte;
Begin
  Maximo:=0;
  For j:=1 to M do
    If V[i,j]>Maximo then
    Maximo:= V[i,j];
  Max:=Maximo
end;
Procedure RecorreFila(N,M:byte;V:TM);
Var
  i:byte;
Begin
  For i:=1 to N do
    Writeln('El maximo de la fila ',i ,' es ', Max(I,M,V))
end;

Procedure ArregloSI(N,M:byte;Var V:Tm;Var w:byte;var Impares:TV);
Var
  i,j,sumaImpares:byte;
Begin
w:=0;
For j:=1 to M do //Columna
    Begin
    SumaImpares:=0;
    For i:=1 to N do //Analiza toda la columna
        begin
        IF odd(v[i,j]) then
        SumaImpares:=SumaImpares+V[i,j];
        end;
If SumaImpares<>0 then
   begin
   W:=W+1;
   Impares[W]:=SumaImpares;
   end;
   end;
end;
Procedure Mostrar(W:Byte;Impares:Tv);
Var
  i:byte;
begin
For i:=1 to W do
  Write(Impares[i],' ');
end;
Function Prom(N,X:byte;v:TM):real;
Var
  i:byte;
  Total:word;
Begin
Total:=0;
For i:=1 to N do
  Total:=Total+V[i,X];
Prom:=Total/N;
end;
begin
  clrscr;
  LeeArch(N,M,V);
  RecorreFila(N,M,V);
  Arreglosi(n,m,v,w,Impares);
  mostrar (w,impares);
  Writeln;
  Writeln('Ingrese una numero de columna' );Readln(X);
  Writeln('El promedio es',Prom(n,x,v):5:2);

  Readln;
end.

