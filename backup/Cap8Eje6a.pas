program Cap8Eje6a;
uses
   crt;
const
   maxelem=10;
type
   TV=array[1..maxelem] of byte;

procedure LECTURA (var vec:TV; var N:byte);
var
   arch:text;
begin
Assign(arch,'datos_8_6a.txt');Reset(arch);
While not eof (arch) do
   begin
   N:=N+1;
   Readln(arch,vec[N]);
   end;
Close(arch);
end;

function buscapos (vec:TV; N,X:byte):byte;   {busco posicion del numero}
begin
If (vec[N]=X) then    {pruebo con el ultimo}
   buscapos:=N
else
   begin
   If (vec[1]=X) then      {pruebo con el primero}
      buscapos:=1
   else        {si no funcionan esos, busco en todo lo del medio}
      buscapos:=buscapos(vec,N-1,X);
   end;
If (buscapos>N) then
   buscapos:=0;
end;

procedure BUSQUEDA (vec:TV; N,X:byte);
var
   pos:byte;
begin
Writeln('Ingrese el numero que desea buscar: ');Readln(X);
pos:=buscapos(vec,N,X);
If (pos<>0) then
   Writeln('La posicion de ',X:2,' es ',pos)
else
   Writeln('No se encontro el numero ',X);
end;

//Programa Principal//

var
   vec:TV;
   N,X:byte;

begin
LECTURA(vec,N);
BUSQUEDA(vec,N,X);
Readln;
end.
