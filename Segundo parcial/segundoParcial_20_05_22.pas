program segundoParcial_20_05_22 ;
Uses crt;
Type
  TregP = record
    cod:string[2];
    Prov:string[30];
  end;

  TV=array[1..10] of integer;
  TM=array[1..10,1..10]of integer;
  TVR=array[1..10] of TregP;
Procedure LeeArchP(Var N:byte;Var V:TVR);
Var
  car:char;//Espacio en blanco
  archp:text;
  cod:string[3];
  prov:string[30];
Begin
ASSIGN(Archp,'Provincias.txt');RESET(Archp);
  While not eof (Archp) do
  begin
    N:=N+1;
    With V[N] do
    Readln(Archp,cod,car,Prov);
  end;
CLOSE(Archp);
end;

Procedure LeeArchI(Var Mat:TM;N,M:byte;V:TVR);//Matrices
Var
  arch:text;
  dni:word;
  edad,i:byte;
  cod:string[2];
  car:char;//espacio en blanco
Begin
ASSIGN(arch,'Inscriptos.txt');RESET(Arch);
  While not eof (Arch) do
  begin
    Readln(Arch,Dni,Edad,car,cod);
    For i:=1 to N do //recorre todo el registro
      If (Cod=V[i].cod) then//busca codigo
        case edad of
        10..19:Mat[i,1]:=Mat[i,1]+1;//cuenta inscriptos en matriz
        20..29:Mat[i,2]:=Mat[i,1]+1;
        30..39:Mat[i,2]:=Mat[i,1]+1;
        40..49:Mat[i,2]:=Mat[i,1]+1;
        50..59:Mat[i,2]:=Mat[i,1]+1;
        60..69:Mat[i,2]:=Mat[i,1]+1;
        70..79:Mat[i,2]:=Mat[i,1]+1;
        80..89:Mat[i,2]:=Mat[i,1]+1;
        90..99:Mat[i,2]:=Mat[i,1]+1;
        end;
  end;
CLOSE(Arch);
end;

Function BuscoProv(V:TVR;N:byte;x:string):byte; //busco prov
begin
  if n>0 then
    if v[n].cod = x then
      BuscoProv :=N
    else
    BuscoProv:=BuscoProv(v,n-1,x)
  else
    BuscoProv:=0;
end;


Procedure InicioMat(Var Mat:TM;N,M:byte);
Var
  i,j:byte;
begin
for j:=1 to M do
  for i:=1 to N do
    Mat[i,j]:=0;
end;

Function SinInscr(M,buscaProv:Byte;Mat:TM):byte;
Var
  j,sin:byte;
begin
For j:=1 to m do
  if (Mat[BuscaProv,j]=0) then
    Sin:=Sin+1;
SinInscr:=Sin;
end;

Function MenosCant(V:tv;N:integer):Integer;
Var
  i,min,iMin:integer;
begin
  min:=V[1];
  for i:=2 to N do
    if V[i]< min then
      begin
      min:=V[i];
      iMin:=i;
      end;
  MenosCant:=iMin;
end;

//Suma total de cada fila
Function TotalFila(Mat:TM;N,M:byte):word;
var
  j:byte;
  acum:word;
begin
Acum:=0;
for j:=1 to M do
  Acum:=Acum+Mat[N,j];
TotalFila:=Acum;
end;

//Almacena total de cada fila en un vector
Procedure VectorTotalFilas(Mat:TM;N,M:byte;Var VTotFila:TV);
var
  i:byte;
Begin
for i:=1 to N do
  VTotFila[i]:=TotalFila(Mat,i,m)
end;

Function TotalInscr(V:TV;N:byte):integer;
begin
  if (n=1) then
  TotalInscr:=V[n]
  else
  TotalInscr :=V[N] + TotalInscr(V,N-1);
end;


Var
  n,m,r,t:byte;
  Mat:TM;
  v:tvR;
  VTotFila:tv;
  X:String[2]; //codigo de provincia
//Programa principal
begin
clrscr;
M:=9;//Cantidad de rangos etarios (se sabe con anterioridad)
InicioMat(Mat,N,M);//Inicializo matriz en 0 de rangos--> Mat acumuladora
LeeArchp(N,V);//Almaceno registros
LeeArchI(Mat,n,m,v);//Almaceno edad
//A)
Writeln('Ingrese el codigo de provincia');Readln(X);
If (buscoprov(v,n,x) <> 0) then
  Writeln('Tiene ',SinInscr(m,buscaprov,Mat),'no inscriptos') //busco ceros en fila matriz rango/prov
else
  Writeln('La provincia no se escuentra');
//B)
Writeln('Ingrese menor edad');Readln(R);
Writeln('Ingrese mayor edad');Readln(T);
SumoFilas();//Sumo las filas que incluye y guardo en vector
//Vec es el vector con las sumas de las filas
//Evaluo cual es el minimo del vector,guardo pos
Writeln('La provincia que menos inscriptos tienes es',V[MenosCant(Vec,n)].Prov);
//C)

VectorTotalFilas(Mat,n,m,VTotFila);
TotalInscr(VectorTotalFilas,N);//Calculo total inscriptos
GeneraVector();//Par Provincia-Rango
Supera();//Analizo si (Cant*100)/18>10
readln;
end.

