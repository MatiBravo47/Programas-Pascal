program Cap5Eje5;
Uses crt;
Type
  TvNum=Array[1..10]of integer;
Procedure LeeVector(Var V1:TvNum;var N:Byte);
Var
  ArchE:Text;
  Num:Integer;
Begin
N:=0;
Assign(ArchE,'Datos55.txt');
Reset(ArchE);
While not eof (ArchE) do
  Begin
  N:=N+1;
  Readln(ArchE,Num);
  V1[N]:=Num;
  end;
Close(ArchE);
End;
Function Max(V1:TvNum;N:Byte):integer;
Var
  Aux:Byte;
  Maximo:Integer;
begin
Max:=V1[1];
For Aux:=2 to N do;
  if V1[Aux]>Max then
  maximo:=V1[aux];
Max:=Maximo;
end;
Procedure Divi(N,Max:Integer;V1:Tvnum;Var J:Byte;Var V2:TvNum);
Var
  i:Byte;
  Maximo:Integer;
Begin
  j:=1;
  For i:=1 to N do
  Begin
  If Maximo mod V1[i]=0 then
    Begin
    V2[j]:=V1[i];
    J:=J+1;
    end;
  end;
  Writeln ('El promedio es de divisores del maximo es: ',J/N:2:2);
End;

Procedure Muestra(J,N:Byte;V1,V2:TvNum);
Var
  i:Byte;
Begin
For i:=1 to J do
Write(V1[i],' ');
Readln;
For i:=1 to N do
Write(V2[i],' ');
end;
{Programa principal}
Var
  N,J:Byte;
  V1,V2:TvNum;
begin
  Clrscr;
  LeeVector(V1,N);
  Max(V1,N);
  Divi(N,Max(V1,N),V1,J,V2);
  Muestra(J,N,V1,V2);
  Readln;
end.

