program Cap5Eje8;
uses crt;
Type
  TVec = Array[1..10] of integer;
Var
  V, W: TVec;
  N, M: Byte;

Procedure LeeArch(Var N: Byte;Var V: TVec); //Almacena en vector V
Var
  Arch: Text;
  i: Byte;
Begin
Assign(Arch,'Ejercicio58.txt'); Reset(Arch);
Readln(Arch, N);
For i:=1 to N do
    Read(Arch, V[i]);
Close(Arch);
end;

Procedure Repetidos(N: byte; V: TVec; Var M: Byte);
Var
  Ant: Integer;
  Cant, i: Byte;
Begin
Ant:= V[1]; //Asigna el primer elemento como anterior
Cant:= 1;   //Cuenta frecuencia
M:= 0;     //indice nuevo vector de frecuencias
For i:=2 to N do
    Begin
    If (V[i] = Ant) then  //1)Si es igual al anterior suma frecuencia
      Cant:= Cant + 1
    else
      Begin //2)si no es igual guarda cantidad en elemento de w, reinicia contador
      M:= M + 1;
      W[M]:= Cant;
      Cant:= 1;
      end;
    Ant:= V[i]; //guarda el elemento analizado como anterior
    end;
If (V[N] = Ant) then //Guarda ultimo elemento en caso de estar en caso 1)
  Begin
  M:= M + 1;
  W[M]:= Cant;
  end;
end;

Procedure MostrarVector (P: Byte; X: TVec); //Muestra vector
Var
  i: Byte;
Begin
  For i:=1 to P do
      Write (' ', X[i]);
end;

//Programa principal
begin
  Clrscr;
  LeeArch(N, V);
  Repetidos(N, V, M);
  Writeln('El vector original es');
  MostrarVector(N, V);
  Writeln;
  Writeln('El vector de frecuencias es');
  MostrarVector(M, W);
  Readln;
end.

