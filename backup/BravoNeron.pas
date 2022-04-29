program BravoNeron;
Const
  MAXN=5;
  MAXM=4;
Type
  TReg=Record
  Cod:String[4];
  TipoC:String[8];
  end;
  St10=String[10];
  St4=String[4];
  TM=array [1..MAXN,1..MAXM] of Real;
  TVT=array [1..MAXN] of st10;
  TVR=Array [1..MAXN] of TReg;
  TVS=Array [1..5] of st4;
  TVP=Array[1..4] of Real;
//Lee Archivo
Procedure LeeArch1(Var M:Byte;Var VTipoC:TVT;Var Precio:TVP);
Var
  Arch1:Text;
  i:Byte;
  TipoC:st10;
Begin
Assign(Arch1,'Combustible.txt');Reset(Arch1);
Readln(Arch1,M);
For i:=1 TO M do
  Begin
  Readln(Arch1,VTipoC[i],Precio[i]);
  end;
Close(Arch1);
end;
Procedure LeeArch2(M:Byte;Var N:Byte;Var Mat:TM;Var Vcod:TVS);
Var
Arch2:Text;
J:Byte;
Begin
N:=0;
Assign(Arch2,'Ventas.txt');Reset (Arch2);
While not eof (Arch2) do
  Begin
  N:=N+1;
  Read(Arch2,VCod[N]);
  For J:=1 to M do
    Begin
    Read(Arch2,Mat[N,j]);
    end;
  Readln(Arch2);
  end;
Close(Arch2);
End;
//Punto A
function buscar(N:byte;Vcod:TVS;Cod:St4):byte;
begin
  if N>0 then
    if (VCod[N])=(Cod) then
      buscar:=N
    else
      buscar(N-1,Vcod,Cod)
  else
    buscar:=0;
end;
//Punto B
function sumar_Columna(N,num:byte;mat:TM): Real;
begin
if num=1 then
  sumar_Columna:=mat[N,1]
else
  sumar_Columna:=sumar_Columna(N,num-1,mat)+mat[N,num];
end;
Procedure CreaVector(M:Byte;Var VAcum:TVP);
Var
  J:Byte;
Begin
For J:=1 To M do
  VAcum[J]:=0;
end;

Procedure AcumulaSumaColumna(M:byte,VAcum:TVP);
Begin
 For J:=1 to M do
   Begin
   sumar_Columna(N,num,mat);
   VAcum[J]:=VAcum[J]+Sumar_Columna(N,num,Mat);
   end;
end;

//Punto C
procedure x_litros (Mat:TM; vec:TReg; N,M:byte; var k:byte);
var
  i,j:byte;
  X:real;
begin
k:=0;
Write('Ingrese cantidad minima de litros de combustible: ');Readln(X);
For i:=1 to N do
   For j:=1 to M do
      If (Mat[i,j]>X) then
         begin
         k:=k+1;
         vec[k].Cod:=VCod[k];
         vec[k].TipoC:=VTipoC[k];
         Write(VTipoC[k].Cod,'-',VTipoC[k].TipoC,'; ');
         end;
end;
Procedure Promedio();
Begin
  For i:=1


Var
  N,M,K,Indice:Byte;
  VCod:TVS;
  Cod:ST4;
  Mat:TM;
  VTipoC:TVT;
  Precio,VAcum:TVP;
begin
LeeArch1(M,VTipoC,Precio );
LeeArch2(M,N,Mat,VCod);
//Punto A
Writeln('Ingrese codigo');Readln(Cod);
Indice:=Buscar(N,VCod,Cod);
If Indice<>0 then
  Writeln('El tipo de combustible que mas se vendio fue:', VTipoC[Indice])
Else
  Writeln('Ningun combustible se vendio mas');
//Punto B
CreaVector(M,Var VAcum);
AcumulaSumaColumna(M,VAcum);


//Punto C
x_litros(Mat,vec,N,M,k);

Readln;
end.

