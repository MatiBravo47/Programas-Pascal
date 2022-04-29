program ultimofinal;
type
tm=array[1..10,1..10] of byte;
var 
N,N1,N2,k:byte;
matriz,M2:tm;
 
procedure LeerMatriz(var matriz:tm; var N:byte);
var
  i,j:byte;
begin
  write('Ingrese el tamanio de la matriz cuadrada');
   readln(N);
  for i:=1 to N do
    for j:=1 to N do
    begin
     writeln('ingrese los valores de la matriz en la posicion', i ,'', j);
     readln(matriz[i,j]);
    end;
end;

Function MCD(N1, N2: Integer): Integer;
Var
Resto: Integer;
Begin
Resto := N1 mod N2;
While Resto <> 0 do
Begin
N1 := N2;
N2 := Resto;
Resto := N1 mod N2;
End;
MCD := N2;
End;

Function MCM (N1, N2: Integer): Integer;
Begin
MCM := N1 * N2 div MCD(N1,N2);
End;

procedure crearmatriz(var M2:tm; var k:byte;  N:byte; matriz:tm);
var
i,j,M:byte;

begin

 for i:=1 to N do 
  begin
    N1:= matriz[i,1];
    N2:=matriz[i,2];
    for j:=3 to N do 
     begin 
      N1:= MCD(N1, N2);  
      N2:=matriz[i,j];
      M:= MCD (N1, N2);
     end;
   k:=k+1;
   M2[k,1]:=M;
 end;
K:=0;
for j:=1 to N do 
 begin
   N1:= matriz[1,j];
   N2:=matriz[2,j];
   for i:=3 to N do 
    begin 
      N1:= MCM (N1, N2);  
      N2:=matriz[i,j];
      M:= MCM (N1, N2);
    end;
   K:=K+1;
   M2[K,2]:=M;

 end;

end;
{p.p}
begin
LeerMatriz(matriz,N);
crearmatriz(M2,k,N,matriz);
end.
