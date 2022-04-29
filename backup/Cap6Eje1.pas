{Ej 1) Leer desde un archivo una matriz de NxM elementos enteros, (N y M vienen en la primera línea del
archivo y luego en las restantes N líneas vienen los M elementos). Se pide:
a) Generar un arreglo con el máximo de cada fila y mostrarlo.
b) Generar un arreglo con la suma de los impares de cada columna, no generar elemento si la
columna no tiene impares.
c) Dada una columna X, ingresada por el usuario, hallar el promedio de sus elementos}
program Cap6Eje1;
Type
  TM=array [1..3,1..4] of integer;
  TVNum=array[1..10]of integer;
Procedure LeeMatriz(Var Mat:TM;Var N,M:Byte); //Lee archivo
Var
  ArchE:Text;
  i,j:Byte;
Begin
Assign(ArchE,'Datos61.txt');Reset(ArchE);
Readln(ArchE,N,M);
For i:=1 To N do
  Begin
  For J:=1 to M do
    Read(ArchE,Mat[i,j]);
  end;
Close(ArchE);
end;
Procedure MaximoFila(Mat:TM;N,M:Byte);
Var
  i,j,k:Byte;
  Max:Integer;
  V:TVNum;
Begin
k:=1;
Writeln('El arreglo con el maximo de cada fila es :');
For i:=1 to N do
  Begin
  Max:=Mat[i,1];
  For j:=1 to M do
    If Max<Mat[i,j] then
       Max:=Mat[i,j];
  V[K]:=Max;
  Write(' ',V[k]);
  K:=K+1;
  end;
Writeln('');
end;
Function Promedio(N:Byte;x:Integer;Mat:TM):Real;
Var
  Acu:Word;
  Cant,i:Byte;
Begin
Acu:=0;
Cant:=0;
For i:=1 to N do
  Begin
  Acu:=Acu + Mat[i,X];
  Cant:=Cant+1;
  end;
Promedio:=Acu/Cant;
end;
{Generar un arreglo con la suma de los impares de cada columna, no generar elemento si la
columna no tiene impares.}
Procedure IniciaVec(M:Byte;Var Acum:TvNum);
Var
I:Byte;
Begin
For i:=1 To M do
  Acum[i]:=0;
end;
Procedure Impar(N,M:Byte;Mat:TM;Acum:TvNum);
Var
i,j,k:Byte;
Imp:Boolean;
Begin
Writeln('El arreglo que suma impares es :');
K:=1;
Imp:=False;
For j:=1 to N do
  Begin
  for i:=1 to M do
    Begin
    If Odd(Mat[i,j]) then
       begin
       Acum[K]:=Acum[K]+ Mat[i,j];
       Imp:=True;
       end;
    end;
If imp then
   Begin
   Write(' ',Acum[K]) ;
   K:=K+1;
   Imp:=False;
   end;
  end;
end;

//Programa principal
Var
  N,M:Byte;
  Mat:TM;
  X:Integer;
  Acum:TVNum;

//Programa principal
begin
LeeMatriz(Mat,N,M);
Writeln('Ingrese numero de columna');Readln(X);
Writeln ('El promedio de los elementos de la columna es :',Promedio(N,X,Mat):2:2);
MaximoFila(Mat,N,M);
IniciaVec(M,Acum);
Impar(N,M,Mat,Acum);
Readln;
end.

