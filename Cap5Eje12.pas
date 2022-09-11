//Ej 12) En un archivo de texto se ha grabado por cada línea, una cadena
//(es una clave encriptada que puede contener letras, números y
//caracteres especiales (&, $, #, etc), y que siempre termina en letra),
//luego uno o más blancos y tres números separados por blancos, por
//último uno o más blancos y una letra.
//Ejemplo: mU&1#hT34*A 80 40 30 P
//Se pide cargar tres arreglos paralelos:
//• VClave contendrá las claves sin los caracteres especiales, que
//registren en su encriptación hasta tres caracteres especiales
//(las claves que tengan más de tres invalidan la información de la
//línea, que no se almacena)
//• VProm almacena el promedio de los tres números.
//• VCar almacena el caracter que está al final de la línea, siempre
//que no coincida con la última letra de la clave, en cuyo caso invalida
//la información de la línea, que no se almacena)
//Mostrar los arreglos generados, y luego para una letra y una clave
//que se ingresan por teclado:
//a) Para la letra ingresada, calcular e informar la clave de máximo
//promedio.
//b) Para la clave ingresada, informar el promedio y la letra asociada
//(puede no existir)
//Resultados: si el archivo fuera
//mU&1#hT34*A 80 40 30 P
//AsD4=H23**9+T 4 78 56 L (1)
//jYC%MkS6M 10 70 3 M (2)
//MnDe3!ku#z 6 8 19 A
//VClave VProm VCar
//mU1hT34A 50 P
//MnDe3kuz 11 A
//(1) se descarta la línea porque la clave tiene más de 3 caracteres
//especiales.
//(2) se descarta la línea porque la última letra de la clave
//coincide con la última de la línea
program Cap5Eje12;
Uses crt;
Type
  TVString = Array[1..4] of string ;
  TVReal = Array[1..4] of Real;
  TVChar = Array[1..4] of Char;
Var
  VClave: TVString;
  VProm: TVReal;
  VCar: TVChar;
  N: Byte;

Procedure LeeArch(var VClave: TVString;var VProm: TVReal; VCar: TvChar;var  N: Byte);
Var
  Arch: Text;
  Clave: String;
  Car,UCar ,mayus: Char;
  Esp, i: Byte;
  Num: Word;
  Total: Real;
  valido:boolean;
Begin
  N:=0;
  Assign(Arch,'Ejercicio512.txt'); Reset(Arch);
  read(arch, car);
  While not eof (Arch) do
    Begin
    N:= N + 1;
    valido:=true;
    total:=0;
    esp:=0;
    Clave:= '';  //Inicia palabra clave
    While (Car <> ' ') do //mientras sea distinto de espacio
      begin
      mayus:= upcase(car);
      if not(((Mayus >= 'A') and (mayus <= 'Z')) or ((mayus >= '1') and (mayus <= '9'))) then
         esp:= esp + 1; //cuenta especiales
      clave:= clave + car;
      ucar:= car;
      read(arch, car);
      end;

    if (esp > 3) then
       valido:= false;

    vclave[n]:= clave; //termina de leer la clave
    For i:=1 to 3 do
      begin
      read(arch, num);
      total:= total + num;
      end;
    vprom[n]:= total/3 ; //termina de leer numeros

    While (car = ' ') do //lee blancos
      read(arch, car);

    Vcar[n]:= car;  //Almacena caracter final de la linea
    if (car = ucar) then //comprueba si son iguales el ultimo caracter con letra clave
    	 valido:= false;

    if valido then //Muestra vectores si son validos
       writeln(vclave[n],' ', vprom[n]:4:2 ,' ', vcar[n]);

    readln(arch);
    read(arch, car);
    end;
end;

//PROGRAMA PRINCIPAL
begin
  Clrscr;
  LeeArch(VClave, VProm, VCar, N);
  Readln;
end.

