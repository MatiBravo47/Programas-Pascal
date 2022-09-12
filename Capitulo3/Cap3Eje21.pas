//Ej 21) Leer un conjunto de números enteros, la presencia de ceros
//intermedios indica fin de un subconjunto y comienzo del siguiente,
//dos ceros consecutivos es fin de datos. Se pide calcular e informar
//el máximo en cada subconjunto y el orden del subconjunto más numeroso.
//Ejemplo: 3,5,2,0,6,7,4,7,0,2,1,0,0
//Respuesta: subconjunto Máximo
//              1          5
//              2          7
//              3          2
//El subconjunto con más elementos es: 2
program Cap3Eje21;
uses crt;
Var
  Arch: Text;
  subcon, SubM: Byte;
  dosceros: Boolean;
  n, max: integer;
  cant, CantMax: Byte;

begin
  clrscr;
  Subcon:= 0;
  CantMax:= 0;
  dosCeros:= false;
  Writeln ('Subconjunto        Maximo');
  assign(Arch,'Ejercicio321.txt'); Reset(Arch);
  Read(Arch, n);
  while not dosceros do //dos ceros consecutivos es fin de datos
  begin
  max:= -99;
  Cant:= 0;
    While (N <> 0) do
      Begin
      If (n > Max) then
          Max:= N;     //guarda el maximo de cada subconjunto
      Cant:= Cant + 1; //cantidad elementos del subconjunto
      Read(Arch, N);
      end;
    //Sale el primer Cero
    Subcon:= SubCon + 1; //cantidad de subconjuntos
    If (Cant > CantMax) then   //evalua subconjunto mayor
        begin
        CantMax:= Cant;
        SubM:= Subcon;
        end;
    Writeln(Subcon,'             ',Max);
    Read(Arch, N);//posible 2do Cero
    If (N = 0) then
      Dosceros:= true;
  end;
  Close(Arch);
  Writeln('El subconjunto con mas elementos es: ', SubM );
  readln;
end.

