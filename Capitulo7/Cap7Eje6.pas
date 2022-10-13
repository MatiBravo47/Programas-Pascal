//Ej 6) Idem ejercicio 5, leer dos matrices y calcular la matriz resultante
//de la suma de ambas
program Cap7Eje6;
Type
  TRPos = Record
    i, j: Byte;
  end;
  TRD = Record
    Pos: TRPos;
    Valor: Integer;
  end;
TV = array [1..9]of TRD;
TM = array[1..3,1..3]of Real;


Procedure LeeArch(Var vectorRegistro1: TV; Var K: Byte);
Var
  Arch: Text;
Begin
K:= 0;
Assign(Arch, 'Matriz1.txt'); Reset(Arch);
While not eof (Arch) do
  Begin
  K:= K + 1;
  With vectorRegistro1[K] do
    Readln(Arch, Pos.i, Pos.j, Valor);
  end;
end;

Procedure LeeArch2(Var vectorRegistro2: TV; Var P: Byte);
Var
  Arch: Text;
Begin
P:= 0;
Assign(Arch, 'Matriz2.txt'); Reset(Arch);
While not eof (Arch) do
  Begin
  P:= P + 1;
  With (vectorRegistro2[P]) do
    Readln(Arch, Pos.i, Pos.j, Valor);
  end;
end;

Procedure sumaMatriz(P: Byte; vectorRegistro1, vectorRegistro2: TV; Var Matriz: TM; Var N, M: Byte);
Var
  i, j, K: Byte;
Begin
K:= 0;
For i:= 1 to vectorRegistro1[P].Pos.i do
Begin
  For j:=1 to vectorRegistro1[P].Pos.j do
    Begin
    K:=K + 1;
    Matriz[i,j]:= vectorRegistro1[K].Valor + vectorRegistro2[K].Valor;
    end;
end;
N:= i;
M:= J;
end;

Procedure MuestraMatriz(N, M: Byte; Matriz: TM);
Var
  i, j: Byte;
Begin
For i:= 1 to N do
  Begin
  Writeln;
  For j:= 1 to M do
    Write(' ',(matriz[i,j]):2:0);
  end;
end;

//Programa principal
Var
  matriz : TM;
  vectorRegistro1, vectorRegistro2: TV;
  P, K, N, M: Byte;

begin
LeeArch(vectorRegistro1, K);
LeeArch2(vectorRegistro2, P);
SumaMatriz(P, vectorRegistro1, vectorRegistro2, Matriz, N, M);
Writeln('La matriz resultante de la suma de las 2 matrices es:');
MuestraMatriz(N, M, Matriz);
Readln;
end.

