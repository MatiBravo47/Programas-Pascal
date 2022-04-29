{Ej 3) En un archivo se almacenaron Y números enteros en cada línea. Cada línea se cargará en una fila
de la matriz si cumple que el primero es divisor del último (el Y-ésimo). Mostrar la matriz generada. La
dimensión será N x Y (N se debe calcular)}
program Cap6Eje3;
Type
TM=array [1..10,1..10]of integer;
Var
ArchE:text;
j,i,y:Byte;
Prim,ult:Integer;
M:TM ;
Begin
i:=1;
Y:=4;
Assign(ArchE,'Datos63.txt');Reset(ArchE);
While not eof (ArchE) do
  Begin
  For J:=1 to Y do
    Begin
    Read(ArchE,M[i,j]);
    If j=1 then
    Prim:=M[i,j];
    If j=Y then
    Ult:=M[i,j];
    end;
    If (Prim mod Ult) = 0 then
      Begin
      For j:=1 to Y do
        Write(' ',M[i,j]);
      i:=i+1;
       end;
     Readln(ArchE);
  end;
Close(ArchE);
Readln;
end.


