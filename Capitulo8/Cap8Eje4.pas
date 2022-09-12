program Cap8Eje4;
uses crt;

Function Invierte(Pal:String;i:byte):String;
Begin
  if i=1 then   //si llega a la ultima letra
    invierte:=pal[i]
  else
    invierte:=pal[i] + invierte(pal,i-1);
end;
Var
  palabra:string;
  j:byte;

begin
  clrscr;
  writeln('Ingrese una palabra a invertir');Readln(Palabra);
  j:=Length(palabra);
  Writeln('La palabra invertida queda:',invierte(Palabra,j));
  readln;
end.

