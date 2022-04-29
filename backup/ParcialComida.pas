program ParcialComida ;
Type
  TRDT=Record
  Dia:Byte;
  Turno:Char;
  end;
TVR=Array [1..11] of TRDT;
TVN=Array[1..3] of word;
TM=Array[1..11,1..3] of word;
Const
  VP:TVN=(700,400,500);
{a) Dado un día ingresado por teclado, mostrar la recaudación total incluyendo
ambos turnos (tener en cuenta que el
día puede no existir o no tener ventas en algún turno)}
//Inicio vector promos acumulador
// matriz de NxN
{procedure IniciaMat(fil,col,num:byte;var mat:TM);
begin
if (fil=1) and (col=1) then
  mat[fil,col]:=0
else
  begin
  mat[fil,col]:=0;
  if col>1 then
    IniciaMat(fil-1,col,num,mat)
  else
    IniciaMat(num,col-1,num,mat);
  end;
end;}
procedure IniciaMat(var Mat:TM;i,j,k:byte); //Recursiva
begin
  if (i=1) and (j=1) then
  mat[i,j]:=0
  else
  begin
  mat[i,j]:=0;
  if i>1 then
    iniciamat(mat,i-1,j,k)//Desde ultima columna para arriba
  else
    iniciamat(mat,i,j-1,k)
  end;
end;
// sirve para MxN si se edita
{Procedure IniciaMat(Var Mat:TM);
Var
  i,j:Byte;
Begin
For i:=1 to 11 do
  For j:=1 to 3 do
    Mat[i,j]:=0;
end;}

Procedure LeeArch(Var Mat:TM;Var N:Byte;Var VR:TVR);
Var
  Arch:Text;
  Blanco:Char;
  Cant,i,prom:Byte;
Begin
N:=0;
Assign(Arch,'Comidas.txt');Reset(Arch);
While not eof (Arch) do
  Begin
  N:=N+1;
  Read(Arch,VR[N].Dia,Blanco,VR[N].turno,Cant);
  For i:=1 to Cant do
    Begin
    Read(Arch,Prom);
    Mat[N,Prom]:=Mat[N,Prom]+1;
    end;
  Readln(Arch);
  end;
end;
//Muestra recaudacion
Function Total(VR:TVR;N:Byte;Mat:TM;VP:TVN;X:Byte):Real;
Var
  i,j:Byte;
  Monto:Real;
Begin
Monto:=0;
For i:=1 to N do
  Begin
  If (VR[i].Dia)=(X) then
    Begin
    If (VR[i].turno)=('M') then
      Begin
      For j:=1 to 3 do
        Monto:=Monto + Mat[i,J]*VP[J]
      end
    else
      Begin
      For J:=1 to 3 do
        Monto:=Monto + ((Mat[i,J]*VP[J])*1.10);;
      end;
    end;
  end;
Total:=Monto;
end;
//Recaudacion total
Procedure ReTotal(VR:TVR;VP:TVN;N:Byte;Mat:TM);
Var
  i,j:Byte;
  MTot:Real;
Begin
For J:=1 to 3 do
  Begin
  MTot:=0;
    For i:=1 to N DO
      Begin
      If VR[i].turno='M' then
        MTot:=MTot+(Mat[i,j]*VP[J])
      Else
        MTot:=MTot+(Mat[i,j]*VP[J])*1.10;
       end;
  Writeln('Promo ',J, ': ',MTot:6:2);
  end;
end;
//Mostrar registro y mostrar matriz
Procedure MuestraMat(Mat:TM;N:Byte);
Var
  i,j:Byte;
Begin
For i:=1 to N do
  Begin
  For J:=1 to 3 do
    Write(Mat[i,j],' ');
  Writeln();
  end;
end;
Procedure MuestraReg(VR:TVR;N:Byte);
Var
  i:Byte;
Begin
  For i:=1 TO N do
    Writeln ('',VR[i].Dia,' ', VR[i].Turno);
end;
//Programa principal
Var
  VR:TVR;
  Mat:TM;
  N,X:Byte;
begin
{IniciaMat(Mat);}
IniciaMat(Mat,11,3,11);
LeeArch(Mat,N,VR);
//Punto A
Writeln('Ingrese un dia');Readln(X);
If Total(VR,N,Mat,VP,X)<>0 then
Writeln('El dia ',X,' la recaudacion es :',Total(VR,N,Mat,VP,X):4:0)
Else
Writeln ('No se registran pagos en ese dia');
//Punto B
ReTotal(VR,VP,N,Mat);
//Punto C
Writeln('La matriz generada es: ');
Writeln;
MuestraMat(Mat,N);
Writeln('El registro generado es:' );
Writeln;
MuestraReg(VR,N);
Readln;
end.

