program Cap3Eje5;
uses crt;
Var
K,Q,Mult:Integer;
Cont:Byte;
begin
Clrscr;
Cont:=0;
Mult:=0;
Writeln('Ingrese un numero');Readln(K);
Writeln('Ingrese un tope');Readln(Q);
Writeln('Los multiplos de ', K ,' menores a ',Q ,' son :');
While Mult<Q do
Begin
Cont:=Cont+1;
Mult:=K*Cont;
Writeln('',Mult);
end;
Readln;
end.

