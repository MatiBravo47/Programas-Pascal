{Ej 6) Escriba un programa que lea una frase (secuencia de caracteres separadas por espacio, coma,
punto) y mediante un menú de opciones calcule e informe:
a) El número de palabras que contiene.
b) La longitud de la palabra más larga.
c) De todas las palabras, la que aparece antes en el diccionario.}

program Cap5Eje6;
Uses crt;

Procedure Menu(Var OP:Char);
Begin
Writeln('Menu Opciones');
Writeln('1)Numero de palabras que contiene');
Writeln('2)La longitud de la palabra más larga');
Writeln('3) De todas las palabras, la que aparece antes en el diccionario');
Writeln('4)Salir');
Repeat Writeln ('Elija una opcion');Readln(OP);
until OP in ['1'..'4'];
end;
Procedure LeeArchi(Var CantPal,LongMax:Integer);
Var
  ArchE:Text;
  Palabra:String;
  Car:Char;
  Long:Integer;
Begin
  CantPal:=0;
  LongMax:=-67;
  Assign(ArchE,'Datos56.txt');Reset(ArchE);
  While (car<>'.') and (not eof (ArchE)) do
  Begin
    Read(ArchE,Car);
    While (Car<>' ') and (car<>'.') do
    Begin
      Palabra:=Palabra+Car;
      Read(ArchE,Car);
    end;
  CantPal:=CantPal+1;    //Cantidad de la palabras que contiene
  Long:=Length(Palabra);// Cuenta el blanco
  If Long>LongMax then //Palabra mas larga 2)
  LongMax:=Long;
  Palabra:='';
  end;
  Close(ArchE);
end;

{Programa principal}
Var
  CantPal,LongMax:Integer;
  Op:Char;

begin
Clrscr;
Menu(OP);
LeeArchi(CantPal,LongMax);
Case (Op) of
'1': Writeln('El numero de palabras que contiene es : ',CantPal);
'2':Writeln('La longitud de la palabra más larga es : ',LongMax);
'3':Writeln('De todas las palabras, la que aparece antes en el diccionario es: ');
end
Until Op='4';
Readln;
end.

