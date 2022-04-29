program Cap3Eje21;
uses crt;
Var
  Arch:Text;
  subcon,SubM:Byte;
  dosceros:Boolean;
  n,max:integer;
  cant,CantMax:Byte;

begin
  clrscr;
  Subcon:=0;
  dosCeros:=false;
  Writeln ('Subconjunto        Maximo');
  assign(Arch,'Ejercicio321.txt');Reset(Arch);
  Read(Arch,n);
  while not dosceros do
  begin
  max:=-99;
  Cant:=0;
  CantMax:=0;
    While N<>0 do
      Begin
      If n>Max then
      Max:=N;
      Cant:=Cant+1;
      Read(Arch,N);
      end;
    //Sale el primer Cero
    Subcon:=SubCon+1;
    If Cant>CantMax then
        begin
        CantMax:=Cant;
        SubM:=Subcon;
        end;
    Writeln(Subcon,'             ',Max);
    Read(Arch,N);//posible 2do Cero
    If N=0 then
    Dosceros:=true;
  end;
  Close(Arch);
  Writeln('El subconjunto con mas elementos es: ',SubM );
  readln;
end.

