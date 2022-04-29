{Se pide, armar 3 vectores paralelos, COD, TOT, PROM y además calcular e informar:
a) Código del tambo que más leche entregó a la compañía.
b) Cuántos superaron un promedio diario de X litros de entrega.
c) Dado un código, el total y el promedio diario entregado, (si es que existe dicho código).}
program Propuesto;
Uses crt;
Type
  St4=String[4];
  TvNum=Array[1..10]of Real;
  TvString=Array[1..4] of st4;
Function Maximo(Total:TvNum;N:Byte;Cod:TvString):String; //A)
Var
  Max:Real;
  i:Byte;
Begin
  Max:=0;
  For i:=1 to N do
  Begin
    If Total[i]>Max then
    Begin
      Max:=Total[i];
      Maximo:=Cod[i];
    End;
  end;
end;
Function Sup(Prom:TvNum;N:Byte):Byte;  //B)
Var
  i,Superaron:Byte;
  X:Real;
Begin
  Superaron:=0;
  Writeln('Ingresa algo ');
  For i:=1 to N do
  Begin
    If Prom[i]>X then
    Superaron:=Superaron+1;
  end;
  Sup:=Superaron;
end;
Procedure Codigo(N:Byte;Cod:TvString;Prom,Total:TvNum);
Var
  i:Byte;
  Codi:String;
Begin
Writeln('Ingrese un codigo');Readln(Codi);
For i:=1 to N do
Begin
  If Cod[i]=Codi then
  Begin
  Writeln('  Promedio Total');
  Writeln('  ',Prom[i],' ',Total[i]);
  end
  Else
  Writeln('Te equivocaste maquina');
end;
End;

Procedure LeeArch(Var Prom,Total:TvNum;Var Cod:TvString;Var N:Byte); //LeeArch
Var
  i,Dias:Byte;
  Leche:Integer;
  ArchE:Text;
Begin
 Assign(ArchE,'Propuesto.txt');
 Reset(ArchE);
 Readln(ArchE,N);
 For i:=1 to N do
 Begin
   Dias:=0;
   Readln(ArchE,Cod[i]);
   Read(ArchE,Leche);
   While Leche<>0 do
   Begin
     Total[i]:=Total[i]+Leche;
     Dias:=Dias+1;
     Read(ArchE,Leche);
   end;
   Prom[i]:=Total[i]/Dias;
   Readln();
 end;
end;
{Programa Principal }
Var
  Total,Prom:TvNum ;
  Cod:TvString;
  N:Byte;
begin
  Clrscr;
  LeeArch(Prom,Total,Cod,N);
  Maximo(Total);
  Sup(Prom,N);
  Codigo(N,Cod,Prom,Total);
  Readln;
end.

