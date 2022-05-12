//En un archivo se almacenaron Y números enteros en cada línea.
//Cada línea se cargará en una fila de la matriz si cumple que el
//primero es divisor del último (el Y-ésimo). Mostrar la matriz
//generada. La dimensión será N x Y (N se debe calcular)
program Cap6Eje3;
Uses crt;
Type
    TM=array[1..4,1..5] of integer; //Matriz
Var
  N,Y:byte;
  VM:TM;

Procedure LeeArch(Var N,Y:byte;Var VM:TM );
Type
  Tv=array[1..5] of integer;//Matriz que guarda momentaneamente datos
Var
  Arch:text;
  i:byte;
  Prim,Ult:Integer;
  V:TV;
Begin
N:=0;
ASSIGN(Arch,'Ejercicio63.txt');RESET(Arch);
Readln(Arch,Y); //lee cantidad de numeros por linea
while not eof (Arch) do
begin
  For i:=1 to Y do //Almacena todo en un vector
    Begin
    Read(Arch,V[i]);
    IF i=1 then
      Prim:=V[1]; //guarda primer componente vector
    if i=y then
      Ult:=V[y]   //guarda ultimo componete vector
    end;
  If Ult mod Prim = 0 then //Verifica si deshace el vector o no
    Begin
    N:=N+1;//Suma fila a la matriz
    For I:=1 to Y do //Pasa vector a matriz
      VM[N,I]:=V[i];//Cambia columna,mantiene fila
     end;
  readln(Arch);
end;
end;

Procedure MostrarM(Y,N:byte;VM:TM);
Var
  i,j:byte;
Begin
  For i:=1 to N do //fila
  begin
    For j:=1 to Y do //columna
    Write (VM[i,j],' ');
  writeln;
  end;

end;

begin
clrscr;
LeeArch(N,Y,VM);
Writeln('La matriz es' );
MostrarM(Y,N,VM);
Readln;
end.

