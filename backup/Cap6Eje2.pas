{Ej 2) En un archivo se almacenó el Nombre del alumno y la nota de los K parciales, pasar los datos a un
vector Nbre paralelo a la matriz Notas e informar:
a) Listado de los alumnos que aprobaron los K parciales.
b) Por cada alumno determinar su situación:
 Promociona: si el promedio es >= 7
 Habilita: si promedio >= 5 y < 7; y la K-ésima nota >= 5
 Desaprobado: en otro caso
y generar un arreglo con los nombres de aquellos que promocionaron.}
program Cap6Eje2;
Uses crt;
Type
St6=String[6];
TM=array [1..10,1..10] of byte;
TvNom=Array [1..10]of st6;
Procedure LeeArch(Var Nota:TM;vAR VNom:TvNom;Var N,K:Byte);
Var
ArchE:Text;
J:Byte;
Begin
N:=1;
Writeln('Ingrese cantidad de notas');Readln(K);
Assign(ArchE,'Datos62.txt');Reset(ArchE);
While not eof (ArchE) do
  Begin
  Read(ArchE,VNom[N]);
  For j:=1 to K do
    Read(ArchE,Nota[N,j]);
  N:=N+1;
  Readln(ArchE)
  end;
Close(ArchE);
end;
Procedure Aprobaron(N,K:Byte;Nota:TM;VNom:TvNom);
Var
Apro,i,j:Byte;
Begin
Apro:=0;
Writeln('Aprobaron todos los parciales :');
For i:=1 to N do
  Begin
  For j:=1 to K do
    Begin
    If Nota[i,j]>=5 then
    Apro:=Apro+1;
    end;;
  If Apro=3 then
  Write(' ',VNom[i]);
  Apro:=0;
  end;
end;
Procedure Estado(VNom:TVNom;N,K:Byte;Nota:TM);
Var
Tot,Prom:Real;
i,j:Byte;
Begin
Tot:=0;
For i:=1 to N do
  Begin
  For j:=1 to K do
    Tot:=Tot+Nota[i,j];
  Prom:=Tot/3;
  If Prom>=7 then
  Writeln ('El alumno ',VNom[i],' promociono')
  else
    Begin
    If (Prom>=5) and (Nota[i,K]>=5) then
      Writeln ('El alumno ',VNom[i],'habilito')
    else Writeln ('El alumno ',VNom[i], 'desaprobo')
    end;
  Prom:=0;
  Tot:=0;
  end;
end;

//Programa principal
Var
Nota:TM;
Vnom:TvNom;
N,k:Byte;


begin
Clrscr;
LeeArch(Nota,VNom,N,K);
Aprobaron(N,K,Nota,VNom);
Readln;
Estado(VNom,N,K,Nota);
Readln;
end.

