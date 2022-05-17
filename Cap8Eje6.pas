program Cap8Eje6;
uses crt;
type
  TV=array[1..10] of integer;
Procedure LeeArch(Var V:TV;Var N:byte);
Var
  arch:text;
Begin
  N:=0;
  ASSIGN(arch,'Ejercicio86a.txt');RESET(arch);
  While not eof (Arch) do
  begin
    N:=N+1;
    Readln(Arch,V[N])
  end;
  CLOSE(arch);
end;

function buscapos (V:TV;N,X:byte):byte;   //busco posicion del numero
begin
If (V[N]=X) then    //pruebo con el ultimo
   buscapos:=N
else
   begin
   If (v[1]=X) then      {pruebo con el primero}
      buscapos:=1
   else        {si no funcionan esos, busco en todo lo del medio}
      buscapos:=buscapos(v,N-1,X);
   end;
If (buscapos>N) then
   buscapos:=0;
end;

procedure busqueda (v:TV; N,X:byte);
var
   pos:byte;
begin
pos:=buscapos(v,N,X);
If (pos<>0) then
   Writeln('La posicion de ',X:2,' es ',pos)
else
   Writeln('No se encontro el numero ',X);
end;

//programa principal
Var
  V:TV;
  N,X:byte;
begin
  clrscr;
  LeeArch(V,N);
  Writeln('Ingrese un valor');Readln(x);
  Busqueda (V,N,X);
  readln;
end.

