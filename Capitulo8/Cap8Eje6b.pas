program Cap8Eje6b;
uses crt;
type
  tv=array[1..10] of integer;
Procedure LeeArch(Var V:TV;Var N:byte);
Var
  arch:text;
Begin
  N:=0;
  ASSIGN(arch,'Ejercicio86b.txt');RESET(arch);
  While not eof (Arch) do
  begin
    N:=N+1;
    Readln(Arch,V[N])
  end;
  CLOSE(arch);
end;

function buscapos (v:TV; pri,ult,medio,X:byte):byte;   {busco posicion del numero}
begin
If (pri<ult) then
   begin
   If (X=v[medio]) then
      buscapos:=medio
   else
      If (X<v[medio]) then
         begin
         ult:=medio-1;
         medio:=(pri+ult) div 2;
         buscapos:=buscapos(v,pri,ult,medio,X);
         end
      else
         begin
         pri:=medio+1;
         medio:=(pri+ult) div 2;
         buscapos:=buscapos(v,pri,ult,medio,X);
         end;
   end
else
   buscapos:=0;
end;

procedure Binaria(v:TV; N,X:byte);
var
   pos,pri,ult,medio:byte;
begin
pri:=1;
ult:=N;
medio:=(pri+ult) div 2;
pos:=buscapos(v,pri,ult,medio,X);
If (pos<>0) then
   Writeln('La posicion de ',X:2,' es ',pos)
else
   Writeln('No se encontro el numero ',X);
end;

//programa principal
Var
  x,n:byte;
  v:tv;
begin
  clrscr;
  leeArch(v,n);
  Writeln('Ingrese un numero');Readln(x);
  Binaria(V,N,X);
  readln;
end.

