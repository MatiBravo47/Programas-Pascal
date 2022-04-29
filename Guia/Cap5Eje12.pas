{Ej 12) En un archivo de texto se ha grabado por cada línea, una cadena (es una clave encriptada que
puede contener letras, números y caracteres especiales (&, $, #, etc), y que siempre termina en letra),
luego uno o más blancos y tres números separados por blancos, por último uno o más blancos y una letra.
Ejemplo: mU&1#hT34*A 80 40 30 P
Se pide cargar tres arreglos paralelos:
• VClave contendrá las claves sin los caracteres especiales, que registren en su encriptación hasta
tres caracteres especiales (las claves que tengan más de tres invalidan la información de la línea,
que no se almacena)
• VProm almacena el promedio de los tres números.
• VCar almacena el caracter que está al final de la línea, siempre que no coincida con la última letra
de la clave, en cuyo caso invalida la información de la línea, que no se almacena)
Mostrar los arreglos generados, y luego para una letra y una clave que se ingresan por teclado:
a) Para la letra ingresada, calcular e informar la clave de máximo promedio.
b) Para la clave ingresada, informar el promedio y la letra asociada (puede no existir)}

program Cap5Eje12;
Uses crt;
Type
  TvString=Array[1..10]of string;
  TvReal=Array[1..10]of real;
  TvChar=Array[1..10]of char;
Procedure GeneraVectores(Var Vnom: TvString;Var Vprom:TvReal;Var Vletra:TvChar; Var V: Byte); {Genera vector con datos ingresados por archivo}
    Var
      ArchE: Text;
      CarSpe,Suma,i,num,n:Byte;
      car,Ucar:Char;
    Begin
      N:=1;
      Assign (ArchE, 'Datos512.txt');
      Reset(ArchE);          {Prepara para lectura}
      While not eof (ArchE) do
      begin
      CarSpe:=0;
      Suma:=0;
      Vnom[N]:='';
      Read(ArchE,Car);
       While car<>' ' do
       begin
         If (car in ['a'..'z']) or (car in ['A'..'Z']) or (car in ['1'..'9']) then
         Vnom[N]:=Vnom[N] + car
         else
         CarSpe:=CarSpe+1;
       Ucar:=Car;
       Read(ArchE,Car);
       end;
       For i:=1 to 3 do
         Begin
         Read(ArchE,Num);
         Suma:=Suma+Num;
         end;
       Vprom[N]:=Suma/3;
       While Car=' ' do
         Read(ArchE,car);
       Vletra[N]:=car;
       If (CarSpe<=3) and (Ucar<>Vletra[N])then
         Begin
         N:=N+1;
         V:=V+1;
         end;
       Readln(ArchE);
      end;
    End;
Procedure MuestraVector(V:Byte;Var Vnom:TvString;Var Vprom:TvReal;Var Vletra:TvChar);
Var
  i:Byte;
Begin
  For i:=1 to V do
    Write(' ',Vnom[i],'  ',Vprom[i]:4:2,' ',Vletra[i]);
end;

{PROGRAMA PRINCIPAL}
Var
  V:Byte;
  Vprom:TvReal;
  Vletra:TvChar;
  VNom:TvString;
begin
  Clrscr;
  GeneraVectores(Vnom,Vprom,Vletra,V) ;
  MuestraVector(V,Vnom,Vprom,Vletra);
  Readln;
end.

