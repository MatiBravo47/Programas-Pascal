{Ej 4) Escribir un procedimiento recursivo que invierta una cadena de caracteres dada.
Ejemplo: ‘lamina’  ‘animal’
Para hacerlo mas eficiente=evitar parametro i,utilizar funciones de la catedra
que te va a sustraer parte de las letras,primera iteracion queda anima, luego sin la l
Condicion de llegada legth parala sustrayendo =1 }
program Cap8Eje4;
Function Invierte(Pal:String;i:Byte):String;
begin
  if i=1 then
  Invierte:=Pal[i]
  else
  invierte:=Pal[i]+Invierte(Pal,i-1);

end;
Var
Palabra:String;
j:Byte;
Begin
Writeln ('Ingrese una palabra a invertir ');Readln(Palabra);
j:=Length(Palabra);
Writeln('La palabra invertida queda:',Invierte(Palabra,j));
readln;
end.

