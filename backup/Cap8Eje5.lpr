program Cap8Eje5;
Type
  TipoVec=array[1..10] of integer;

Procedure LeerVec(Var Vec:TipoVec; Var N:Byte);
Var
  i:Byte;
Begin
  Writeln('Ingresar cantidad de elementos del vector');
  Readln(N);
  For i:=1 to N do
  begin
    Writeln('Ingresa el numero ',i,' del vector');
    Readln(Vec[i]);
  end;
end;
Function Sum(Vec:TipoVec; N:Byte):Word;
Begin
  If (N=1) then
    Sum:=Vec[N]
  else
    Sum:=Vec[N] + Sum(Vec,N-1);
end;
function max(Vec:TipoVec;N:Byte):integer;
var
aux:integer;
begin
if N=1 then
  max:=Vec[N]
else
  begin
  aux:=max(Vec,N-1);
  if Vec[N]>aux then
    max:=Vec[N]
  else
    max:=aux;
  end;
end;
Function Promedio(Vec:TipoVec; N:Byte):Real;
begin
  Promedio:=Sum(Vec,N) / N;
end;

Procedure Mostrar(Vec:TipoVec;N:Byte);
Begin
if (N>1) then
  Begin
  Mostrar(Vec,N-1);
  end;
Write(Vec[N]);Write(' ');
end;
procedure al_reves(cont:byte;vec:TipoVec);
begin
write (' ',vec[cont]);
if cont>1 then
  al_reves (cont-1,vec);
end;
Var
  Vec:TipoVec;
  N,X:Byte;
  Y:Word;
begin
  LeerVec(Vec,N);
  Writeln('La suma de los numeros es: ',Sum(Vec,N));Writeln();
  Writeln('LOS NUMEROS DEL ARREGLO SON: ');
  Mostrar(Vec,N);Writeln();Writeln();
  Writeln('Los numeros del arreglo alrevez son: ');
  al_reves(N,vec);Writeln();
  Writeln('El numero maximo es: ',Max(Vec,N));Writeln();
  Writeln('El promedio es: ',Promedio(Vec,N):4:2);
  Readln();
end.

