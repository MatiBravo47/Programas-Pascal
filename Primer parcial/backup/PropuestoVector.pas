//Vectores – Ejercicio adicional propuesto
//A partir de un arreglo de enteros A generar otro arreglo B,
//con los elementos de A sin repetir.
//Donde:
//1) A está ordenado.
//2) A está desordenado.
//3) A está desordenado y B debe quedar ordenado.
//Ejemplos:
//1) A = [ -1, -1, 3, 3, 3, 5, 8, 8, 12 ]  B = [ -1, 3. 5, 8, 12 ]
//2) A = [ 22, -1, 13, -1, 8, 8, -1, 13, 7 ]  B = [ 22, -1, 13. 8, 7 ]
//3) A = [ 22, -1, 13, -1, 8, 8, -1, 13, 7 ]  B = [ -1, 7, 8, 13 ]
program PropuestoVector;
Uses crt;
Type
  TVInt = Array[1..10] of integer;
Var
  N, M: Byte;
  A, B: TVInt;

Procedure LeeArch(Var N: Byte; Var A: TVInt);
Var
  arch: Text;
Begin
  N:= 0;
  Assign(Arch,'PropuestoVector.txt'); Reset(Arch);
  While not eof (Arch)do
    Begin
    N:= N + 1;
    Read(Arch, A[N]);
    end;
  Close (Arch);
end;

Procedure GenOrde(A: TVInt; N: Byte; Var B: TVInt; Var M: Byte);
Var
  i: Byte;
  Ant: Integer;
Begin
  M:= 0;
  B[1]:= A[1];
  A[1]:= Ant;
  For i:= 2 to N do
  Begin
    If (A[i] <> Ant) then
      Begin
      M:= M + 1;
      B[M]:= A[i];
      Ant:= A[i];
      end;
  end;
end;

Procedure GenDes(A: TVInt; N: Byte; Var M: Byte; Var B: TVInt);
Var
  I, J: Byte;
  rep: boolean;
Begin
  M:= 1;
  B[1]:= A[M];
  For i:= 2 to N do
  Begin
    For j:= 1 to M do
    if (A[I] = B[J]) then
      rep:= true;
    if not rep then
      Begin
      M:= M + 1;
      B[M]:= A[I];
      end;
    rep:= false;
  end;
end;

//Programa principal
begin
  Clrscr;
  LeeArch(N, A);
//  GenOrde(A,N,B,M);
  GenDes(A, N, M, B);
  Readln;
end.

