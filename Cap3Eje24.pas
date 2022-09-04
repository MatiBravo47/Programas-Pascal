//Ej 24) En un archivo se han grabado palabras, separadas por uno o más
//blancos en una misma línea, finalizando con un punto. Cada palabra está
//conformada por letras y dígitos (3ab4c3Hd).
//Se pide, a partir del archivo descripto generar otro cambiando las parejas
//“LetraminusculaDigito” por las repeticiones de la Letra según indique el
//digito.
//Ejemplos: ab4C3hd 1Ab2c3hD2.  abbbbC3hd 1AbbccchD2.
//Ab0C3hd 1Ab2c0hD2.  AC3hd 1AbbhD2
program Cap3Eje24;
uses crt;
var
  car, car2: char;
  arch: text;
  i , num: byte;
begin
  clrscr;
  Assign(arch,'Ejercicio324.txt'); reset(arch);
  read(arch, car);
  read(arch, car2);
  while (not eof (arch)) do//mientra no finalice la oracion
    begin
    if ((car >= 'a') and (car <= 'z')) and ((car2 >= '0') and (car2 <= '9')) then
          begin
        	case car2 of
        	'0': num:= 0;
        	'1': num:=1;
        	'2': num:=2;
       		'3': num:=3;
      		'4': num:=4;
     			'5': num:=5;
     			'6': num:=6;
          '7': num:=7;
          '8': num:=8;
          '9': num:=9;
          end;
          for i:=1 to num do
        		  write(car);//muestro ese numero x cantidad de veces
          read(arch,car);
          read(arch,car2);
          end
        else //si alguno de los dos no cumple
          begin
          write(car); //muestro primero
          car:= car2;//el segundo pasa a ser primero
          read(arch, car2);
          end;
    if eof (arch) then
          begin
          write(car);
          write(car2);
          end;
    end;
  close(arch);
  readln;
end.

