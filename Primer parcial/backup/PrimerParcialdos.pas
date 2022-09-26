Ejercicio tipo 1er parcial
Una imprenta realiza folletos y su costo depende de la cantidad de palabras, del tipo y tamaño de letra.
Un archivo de texto contiene en cada línea (finalizada con un punto) los datos de un folleto.
El primer carácter es el tipo (A,B,C), luego un blanco el tamaño (1,2), luego un blanco seguido de una secuencia de
caracteres que forman palabras separadas por uno o mas blancos, al final un punto.
Ejemplo: A 2 xxxxx xxxxxxxxx xxxxxx xxxxxxx.
Se pide procesar el archivo y generar 3 arreglos paralelos: Costo, CantPal y MasLarga, contendrán de cada folleto su
costo, la cantidad de palabras y la cantidad de caracteres de la palabra más larga
El costo se calcula de la siguiente manera: $1 la palabra, dependiendo del Tipo de letra: 'A' duplica el importe,
'B' triplica,'C' quintuplica. Además si el tamaño es 2 tiene un costo adicional del 50%
Ejemplo:
Luego:
a) Indicar el costo del folleto que contenga la palabra mas larga, si hay mas de uno el costo promedio de los mismos.
b) Para un entero N que ingresa por teclado, buscar el primer folleto que contenga exactamente N palabras y
mostrar su costo. (considerar que puede no existir)
program ejercicioTipoParcial2019;
Uses crt;
Type
  TVB=Array[1..4] of byte;
  TVR=Array[1..4]of real;
Const
  X=1.0;

Var
  VCant,VMasL:TVB;
  VCosto:TVR;
  N,Z:byte;
Function Costo(Tipo:char;Tam,Cant:byte):real;
Var
  Imp:real;
Begin
Imp:=Cant*X;
Case Tipo of
  'A':Imp:=Imp*2;
  'B':Imp:=Imp*3;
  'C':Imp:=Imp*5;
end;
If Tam=2 then
  Costo:=Imp*1.5
else
  Costo:=Imp;
end;

Procedure LeeArch(Var N:byte;Var VCant,VMasL:TVB;Var VCosto:TVR);
Var
  Arch:Text;
  Tipo,Car:Char;
  i,Tam:Byte;
Begin
  N:=0;
  ASSIGN(Arch,'PrimerParcialDos.txt');RESET(Arch);
  While not eof (arch) do
    Begin
    n:=n+1;
    VCant[n]:=0; VMasL[n]:=0;
    Read(Arch,Tipo,Tam,Car);
    While Car<>'.' do
      If Car=' ' then
      Read(Arch,Car)
    else
      Begin  //Es el comienzo de palabra
      VCant[n]:=VCant[n]+1;
      i:=0;
      While (car<>' ') and (Car<>'.') do
        Begin
        i:=i+1;
        Read(Arch,Car);
        end;//Termina la palabra
      If i>VMasL[n] then //Evalua si es la mas larga
        VMasL[n]:=i;
      end;
    VCosto[n]:=Costo(Tipo,Tam,VCant[n]);
    Readln(Arch);
    end;//Termina la oracion
CLOSE(Arch);
end;
Procedure Escribe(VCosto:TVR;VMasL,VCant:TVB;N:byte);
Var
  i:byte;
Begin
Writeln('Cantidad  Pal mas larga   costo');
For i:=1 to N do
  Writeln(Vcant[i]:10,VMasL[i]:12,VCosto[i]:8:2);
end;
Function MaxCosto(VCosto:TVR;VMasL:TVB;N:byte):real;
Var
  i,iMax:byte;
  Max:Word;
Begin
Max:=VMasL[1];
IMax:=i;
For i:=1 to N do
  if VMasL[i]>Max then
    begin
    Max:=VMasL[i];
    iMax:=i;
    end;
MaxCosto:=(VCosto[iMax]);
end;

Procedure Busca(VCant:TVB;VCosto:TVR;Z,N:byte);
Var
  i,pos:byte;
Begin
For i:=1 to N do
  If Z=VCant[i] then
    Pos:=i;
Writeln('El primer folleto que se escuentra con esas cantidad de palabras tien un costo de: ', (VCosto[Pos]):5:2);
end;


begin
clrscr;
LeeArch(N,VCant,VMasL,VCosto);
Escribe(VCosto,VMasL,VCant,N);
Writeln('El costo del folleto de mayor coste es ', MaxCosto(VCosto,VMasL,N):5:2);
Writeln('Ingrese un numero por teclado');Readln(Z);
Busca(VCant,VCosto,Z,N);
Readln;
end.

