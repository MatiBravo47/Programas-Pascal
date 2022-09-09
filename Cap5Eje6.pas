//Ej 6) Escriba un programa que lea una frase (secuencia de caracteres
//separada por espacio, coma, punto) y mediante un menú de opciones
//calcule e informe:
//a) El número de palabras que contiene.
//b) La longitud de la palabra más larga.
//c) De todas las palabras, la que aparece antes en el diccionario.
//Analizar las alternativas de almacenar dicha palabra en un arreglo
//de caracteres o en un string.
//d) la frecuencia de cada letra (mayúscula o minúscula) que aparece
//en la frase.
//No es necesario almacenar toda la frase en un arreglo.
//Archivo:
//Lorem Ipsum es simplemente el texto de relleno de las imprentas
//y archivos de texto.
program Cap5Eje6;
Uses crt;
Var
  palabras,longMax: byte;

Procedure LeeArch(Var palabras, longMax: byte);
Var
  arch: Text;
  Pal: String;
  Car: char;
  long: byte;
Begin
  Palabras:= 0;//Cantidad de palabras
  LongMax:= 0; //longitud max palabra
  long:= 0;
  Assign(Arch, 'Ejercicio56.txt'); Reset(Arch);
  read(arch, car); //lee primer caracter
  While (car <> '.')do
    if (car = ' ') then
      read(arch, car)// si es blanco lee otro caracter
    else
      begin //el comienzo de la palabra
      Pal:='';//inicializa palabra
      long:=0;
      While (Car<>'.') and (Car<>',') and (Car<>' ') do
        Begin
        Pal:= Pal + car;
        Long:= Long + 1;
        Read(Arch, car);
        end;
      If (long > LongMax) then //evalua si es la mas larga
        LongMax:= Long;
      Palabras:= Palabras + 1;
  end;
  Close(Arch);
end;

begin
  Clrscr;
  LeeArch(palabras,longMax);
  Writeln('Contiene ',palabras);
  Readln;
end.

