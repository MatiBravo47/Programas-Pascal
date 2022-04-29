program EjercicioParcial1;
Const
N=4;//Cant Sinistros
M=5;//Cantidad de meses
Type
St30=String[30];
TM=array[1..4,1..5]of Word;
TRS=Record
Sin:St30;
Cant:byte;
end;
TV=array[1..5] of TRS;
Procedure Leearch(M:Word;Var Mat:TM;Var Vec:TV);
Var
Arch1,Arch2:Text;
i,mes,cod:Byte;
pago:Word;
Begin
Assign(Arch1,'Siniestros.txt');Reset(Arch1);
Assign(Arch2,'Pagos.txt');Reset(Arch2);
While not eof (Arch2) do
  Begin
  Read(Arch2,mes,cod,pago);
  Mat[mes,cod]:=Mat[mes,cod] + pago;
  Vec[Cod].Cant:=Vec[Cod].cant+1
  end;
Close(Arch2);
For i:=1 to M do
Readln(Arch1,Vec[i].sin);
Close(Arch1);
end;
procedure IniciaMat(var Mat:TM;i,j,N:byte); //Recursiva
begin
  if (i=1) and (j=1) then
  mat[i,j]:=0
  else
  begin
  mat[i,j]:=0;
  if j>1 then
    iniciamat(mat,i-1,j,N)
  else
    iniciamat(mat,m,j-1,N)
  end;
end;
Procedure MuestraMatRec(Mat:TM;I,J,M:Byte);
Begin
if i>0 then
  If j>0 then
    begin
    muestraMatRec(Mat,i,j-1,M);
    write(Mat[i,j]:4);
    end
else
  Begin
  MuestraMatRec(Mat,i-1,M,M);
  Write(Mat[i,j]:4);
  Writeln;
  end
end;



Function Cumple(X,M:word;Mat:TM):Boolean;
Var
j:Word;
Begin
cumple:=true;
For j:=1 to M do
  If Mat[X,j]=0 then
  Cumple:=False;
end;
Function Busca_Maximo (Vec:Tv;M:Byte):Byte;
Var
  Max:Byte;
Begin
If (M=1) then
  Busca_Maximo:=1
else
  Begin
  Max:=Busca_Maximo(Vec,M-1);
  If (Vec[m].cant>Vec[Max].cant) then
     busca_Maximo:=M
  Else
    Busca_Maximo:=Max
  end;
end;
Function MesPagoMenos(Mat:Tm;M,N:byte):Word;
Var
Suma,Min:Real;
MinFila,I,j:byte;
Begin
Suma:=0;
For j:=1 to M do
  Suma:=Suma + Mat[1,j];
MinFila:=1;
Min:=Suma;
Suma:=0;
For i:=2 To N do
  Begin
    For j:=1 to M do
      Begin
      If j<=M then
        Suma:=Suma + Mat[i,j];
      If j=M then
        If Suma<Min then
          Begin
          Min:=Suma;
          MinFila:=i;
          end;
       end;
    Suma:=0;
  end;
MesPagoMenos:=MinFila;
end;
//Programa principal
Var
X:Byte;
Mat:TM;
Vec:TV;
begin
Leearch(M,Mat,Vec);
MuestraMatRec(Mat,N,M,N);
Writeln();
//Punto A
Writeln('Ingrese un mes');Readln(X);
If cumple(X,M,Mat) then
Writeln('Si')
else
Writeln('No');
//Punto B
Writeln ('En el Siniestro',Busca_Maximo(Vec,M),' se hizo mayor cantidad de pagos');
Writeln('El siniestro :',Vec[Busca_Maximo(Vec,M)].Sin);
Writeln('Pago menos el mes :',MesPagoMenos(Mat,M,N));
Readln;
end.

