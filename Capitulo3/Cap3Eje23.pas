//Ej 23) Un archivo contiene palabras (letras mayúsculas, minúsculas,
//dígitos, caracteres especiales)
//separadas entre sí por uno o más blancos. Se debe verificar para cada
//una si se trata de una contraseña válida, y en ese caso grabarla en
//un archivo de salida. Indicar al final del proceso el porcentaje de
//palabras que no son contraseñas válidas y mostrar la contraseña inválida
//más larga (puede no existir).
//Una contraseña válida debe:
// estar conformada como mínimo por 8 caracteres,
// incluir obligatoriamente, al menos una letra mayúscula y al menos una minúscula
// incluir exactamente cuatro dígitos.
// no contener caracteres diferentes de letras y digitos.UNMDP – FI Programación I
//Ejemplo:
//eR68G12a 91jY643ebjp eRty74kLh 24fG92 aj85gT32 eL8j$8215 dGb9357jKoup
program Cap3Eje23;
uses crt;
var
  ArchEnt, ArchSal: Text;
  Car: Char;
  Contra: String;
  Digitos, Carac, contraValida, intentos, longContraMax: Byte;
  Minuscula, mayuscula, especial:Boolean;


begin
  clrscr;
  contraValida:= 0;
  intentos:= 0;
  longContraMax:= 0;
  Assign(ArchEnt,'Ejercicio323.txt'); Reset(ArchEnt);
  Assign(ArchSal,'Ejercicio323Sal.Txt'); Rewrite(ArchSal);
  Read(ArchEnt, Car);
  While not eof (archEnt) do
  begin
  Contra:= '';
  Digitos:= 0;
  Carac:= 0;
  especial:= false;
    While (car <> ' ') and not eof (ArchEnt) do
    begin
      Carac:= Carac + 1;
      If ('0' <= Car) and (Car <= '9') then //Verifica si es numero
        Digitos:= Digitos + 1 //cuenta cantidad de digitos
      else
        If ('a' <= Car) and (car <= 'z') then //verifica si es minus
          minuscula:= True
        else
          If ('A' <= Car) and (car <= 'Z') then //Verifica si es mayus
            mayuscula:= True
          else
            especial:= true;
      if (car <> ' ') then
        Contra:= Contra + Car ;
      Read(ArchEnt, Car);
    end;
  If eof (ArchEnt) then  //agrega el ultimo caracter
  	  Contra:= Contra + Car ;
  If (carac >= 8) and (mayuscula) and (minuscula) and (Digitos = 4) and (not Especial) then
      begin
      Writeln(Contra);
      writeln(archSal,contra);
      contraValida:= contraValida + 1;
      if (length(contra) > longContraMax) then
          longContraMax:= length(contra);
      end;
  intentos:= intentos + 1;
  Read(ArchEnt, Car);
  end;
  Close (ArchEnt);
  Close (ArchSal);
  writeln('El % de contrasenias invalidas es ',(((intentos-contraValida)/intentos)*100):5:2);
  writeln('La longitud de la contrasenia invalida mas larga es de ',longContraMax -1 ,' caracteres');
  readln;
end.

