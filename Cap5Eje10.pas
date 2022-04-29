program Cap5Eje10;
Uses crt;
Type
    TVec=array[1..20] of integer;
Var
  N,M:Byte;
  V,B,C:TVec;
Procedure ArregloA(Var N:Byte;Var V:TVec);
Var
  Arch:Text;
Begin
  N:=0;
  Assign(Arch,'Ejercicio510.txt');Reset(Arch);
  While not eof (Arch) do
  Begin
    N:=N+1;
    Read(Arch,V[N]);
  end;
  Close(Arch);
end;

Procedure ArregloBC(V:TVec;Var M:Byte;Var B,C:TVec);
Var
  Cant,i:Byte;
  Suma:Word;
  Positivo:Boolean;
Begin
  Positivo:=True;
  I:=1;
  m:=0;
  While i<N do
  Begin
    Cant:=0;
    Suma:=0;
    While (V[i]>0) and (Positivo) do //Hasta que encuentra el primer neg
      i:=i+1;
    If V[i]<0 then
    Begin
    i:=i+1;//Saltea negativo
      While V[i]>0 do
      Begin
        Positivo:=false;
        Cant:=Cant+1;
        Suma:=Suma+V[i];
        i:=i+1;
      end;
    end;
    If V[i]<0 then
    Begin
       M:=M+1;
       C[M]:=Cant;
       B[M]:=Suma;
    end;

  end;
end;
Procedure MuestraV(O:Byte;W:TVec);
Var
  i:Byte;
Begin
  For i:=1 to O do
  Write(' ',W[i]);
end;
//Programa principal
begin
  Clrscr;
  ArregloA(N,V);
  Writeln('El vector A es ');
  MuestraV(N,V);
  ArregloBC(V,M,B,C);
  Writeln;
  Writeln('El vector B es ');
  MuestraV(M,B);
  Writeln;
  Writeln('El vector C es ');
  MuestraV(M,C);
  Readln;
end.

