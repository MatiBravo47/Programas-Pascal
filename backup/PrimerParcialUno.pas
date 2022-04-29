program PrimerParcialUno;
Uses crt;
Type
  TVecWord=array[1..4] of word;
  TVString=array[1..4] of String[4];
  TVecReal=array[1..4] of real;
Var
  X:Word;
  N:Byte;
  Tot:TVecWord;
  Prom:TVecReal;
  Cod:TVString;
Procedure LeeArch(Var N:Byte;Var Tot:TVecWord;Var Prom:TVecReal;Var Cod:TVString);
Var
  Arch:Text;
  i,P:Byte;
  Suma,Num:Word;
Begin
  Assign(Arch,'PrimerParcialuno.txt');Reset(Arch);
  Readln(Arch,N);
  For i:=1 to N do
  Begin
  Tot[i]:=0;
  Prom[i]:=0;
  P:=0;
  Begin
    Suma:=0;
    Readln(Arch,Cod[i]);
    Read(Arch,Num);
    While Num<>0 do
    Begin
      P:=P+1;
      Suma:=Suma+Num;
      Read(Arch,Num);
    end;
    Tot[i]:=Tot[i]+Suma;
    Prom[i]:=Suma/P;
    Readln(Arch);
  end;
  end;
end;
Function MasLeche(Tot:TVecWord;N:Byte):String;
Var
  i,IMax:byte;
  Max:Word;
Begin
  Max:=Tot[1];
  iMax:=1;
  For i:=2 to N do
  Begin
    If Tot[i]>Max then
    Begin
      Max:=Tot[i];
      iMax:=i;
    end;
  end;
MasLeche:=Cod[IMax];
end;
Function Sup(X:Word;N:Byte;Prom:TVecReal):Byte;
Var
  Supera:Byte;
  i:Word;
Begin
Supera:=0;

For i:=1 to N do
  Begin
  If Prom[i]>X then
  Supera:=Supera+1;
  end;
Sup:=Supera;
end;

Procedure Mostrar(Tot:TVecWord;Prom:TVecReal;N:Byte;Cod:TVString);
Var
  Codigo:String[4];
  i:Byte;
Begin
Writeln('Ingrese un codigo');Readln(Codigo);
For i:=1 to N do
  Begin
  If cod[i]=Codigo then
    Begin
    Writeln('Total: ',Tot[i]);
    Writeln('Promedio diario: ',Prom[i]);
    end;
  end;
end;
begin
   Clrscr;
  LeeArch(N,Tot,Prom,Cod);
  Writeln('El codigo que mas leche entrego es ', MasLeche(Tot,n));
  Writeln('Ingrese una cantidad de litros');Readln(X);
  Writeln('Superaron el promedio de entrega ',Sup(X,N,Prom));
  Mostrar(Tot,Prom,N,Cod);
  Readln;
end.

