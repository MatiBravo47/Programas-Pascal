//Ej 5) Generar y mostrar los múltiplos de K menores que un valor Q.
//(K y Q se leen de teclado)
program Cap3Eje5;
uses crt;
Var
num, tope, Mult: Integer;
Cont: Byte;
begin
Clrscr;
Cont := 0;
Mult := 0;
Writeln('Ingrese un numero'); Readln(num);
Writeln('Ingrese un tope'); Readln(tope);
Writeln('Los multiplos de ', num ,' menores a ',tope ,' son :');
While (Mult < tope) do
Begin
Cont := Cont+1;
Mult := num * Cont;
Writeln('', Mult); //Muestra multiplos
end;
Readln;
end.

