//1)Una compañía Láctea recibe la producción diaria de, en litros de
//leche, de N tambos de la zona,
//durante varios días consecutivos (no se conoce).
//Los datos vienen de la siguiente manera:
// Código del Tambo (cadena de 4 caracteres) y a continuación
//o la entrega diaria en litros, 0=fin de datos.
//Se pide, armar 3 vectores paralelos, COD, TOT, PROM y además
//calcular e informar:
//a) Código del tambo que más leche entregó a la compañía.
//b) Cuántos superaron un promedio de X litros de entrega.
//c) Dado un código, el total y el promedio diario entregado,
//(si es que existe dicho código).
//COD con los códigos de cada Tambo
//TOT con los totales de litros entregados
//PROM con el promedio diario entregado
program PrimerParcialUno;
Uses crt;
Type
  TVecWord = array[1..4] of word;
  TVString = array[1..4] of String[4];
  TVecReal = array[1..4] of real;
Var
  X: Word;
  N: Byte;
  Tot: TVecWord;
  Prom: TVecReal;
  Cod: TVString;
Procedure LeeArch(Var N: Byte; Var Tot: TVecWord; Var Prom: TVecReal; Var Cod: TVString);
Var
  Arch: Text;
  i, P: Byte;
  Suma, Num: Word;
Begin
  Assign(Arch,'PrimerParcialuno.txt'); Reset(Arch);
  Readln(Arch,N);
  For i:= 1 to N do
    Begin
    Tot[i]:= 0;
    Prom[i]:= 0;
    P:= 0;
    Suma:= 0;
    Readln(Arch, Cod[i]);
    Read(Arch, Num);
    While (Num <> 0) do
      Begin
      P:= P + 1;
      Suma:= Suma + Num;
      Read(Arch, Num);
      end;
    Tot[i]:= Tot[i] + Suma;
    Prom[i]:= Suma / P;
    Readln(Arch);
    end;
end;

Function MasLeche(Tot: TVecWord; N: Byte): String;
Var
  i ,IMax: byte;
  Max: Word;
Begin
Max:= Tot[1]; //Maximo temporal al primer elemento
iMax:= 1;
For i:=2 to N do
  Begin
  If (Tot[i] > Max) then
    Begin
    Max:= Tot[i];
    iMax:= i;
    end;
  end;
MasLeche:= Cod[IMax];
end;

Function Sup(X: Word; N: Byte; Prom: TVecReal): Byte;
Var
  Supera: Byte;
  i: Word;
Begin
Supera:= 0;
For i:=1 to N do
  Begin
  If (Prom[i] > X) then
    Supera:= Supera + 1;
  end;
Sup:= Supera;
end;

Procedure Mostrar(Tot: TVecWord; Prom: TVecReal; N: Byte; Cod: TVString);
Var
  Codigo: String[4];
  i: Byte;
Begin
Writeln('Ingrese un codigo'); Readln(Codigo);
For i:=1 to N do
  Begin
  If (cod[i] = Codigo) then
    Begin
    Writeln('Total: ',Tot[i]);
    Writeln('Promedio diario: ',(Prom[i]):5:2);
    end;
  end;
end;
begin
Clrscr;
LeeArch(N, Tot, Prom, Cod);
Writeln('El codigo que mas leche entrego es ', MasLeche(Tot, n));
Writeln('Ingrese una cantidad de litros');Readln(X);
Writeln('Superaron el promedio de entrega ',Sup(X, N, Prom));
Mostrar(Tot, Prom, N, Cod);
Readln;
end.

