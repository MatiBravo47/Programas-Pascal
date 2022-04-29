program Cap5Eje1;
Uses crt;
Type
  Tvec=array[1..5] of integer;
Var
  Arch:Text;
  N,M:Byte;
  V,v2:TVec;

Procedure LeeArch(Var N:Byte;Var V:TVec);
Var
  Arch:text;
  i:Byte;
Begin
  Assign (Arch,'Ejercicio51.txt');Reset(Arch);
  Readln(Arch,N);
  For i:=1 to N do
  Read(Arch,V[i]);
  close (Arch);
end;

Function Suma(V:TVec;N:Byte):Integer;
Var
  i:Byte;
  total:Integer;
Begin
  Total:=0;
  For i:=1 to N do
  Total:=Total+V[i];
Suma:=Total;
end;

Procedure Pares(V:TVec;N:Byte);
Var
  i:Byte;
Begin
i:=2;
  While i<=N do
    Begin
    Write(V[i],' ');
    i:=i+2;
    end;
end;
Function Max(V:TVec;N:Byte):Integer;
Var
  i:Byte;
  Maximo:Integer;
Begin
  Maximo:=V[1];
  For i:=2 to N do
    Begin
    If V[i]>=Maximo then
    Maximo:=V[i];
    end;
Max:=Maximo;
end;

Function Min(V:TVec;N:Byte):Integer;
Var
  i:Byte;
  Minimo:Integer;
Begin
  Minimo:=V[1];
  For i:=2 to N do
    Begin
    If V[i]<=Minimo then
    Minimo:=V[i];
    end;
Min:=Minimo;
end;

Procedure Genera(V:TVec;N:Byte;Var V2: TVec;Var M:Byte);
Var
 i,j:Byte;
Begin
M:=1;
For i:=N downto 1 do
  begin
  M:=M+1;
  V2[M]:=V[i];

  end;
end;

Procedure MuestraV(M:Byte;V2:TVec);
Var
 i:Byte;
Begin
For i:=1 to M do
Write (V2[i],' ');
end;
//Programa principal
begin
  clrscr;
  leeArch(N,V);
  Writeln('La suma de los elementos da: ',Suma(V,N));
  Writeln('Los elementos en posiciones pares son:');
  Pares(V,N);
  Writeln;
  Writeln('El maximo es ',Max(V,N));
  Writeln('El minimo es ',Min(V,N));
  Genera(V,N,V2,M);
  MuestraV(M,V2);
  readln;
end.

