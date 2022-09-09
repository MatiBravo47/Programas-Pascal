//Ej 2) Dado un archivo de enteros, se pide almacenar en un vector V
//sólo los elementos impares y en otro vector W, los pares, ignorando
//si hubiese, los ceros.
//Ejemplo:
//1 4 3 5 7 4 2 0 98 32
program Cap5Eje2;
uses crt;
Type
  TVec = Array[1..10] of integer;
var
  N, M, P: Byte;
  VP, VI, V: TVec;

Procedure LeeArch(Var N, M: Byte; Var VP, VI: TVec );
Var
  arch: Text;
  Num: Integer;
Begin
  N:= 0;
  M:= 0;
  Assign(Arch,'Ejercicio52.txt'); Reset(Arch);
  While not eof (Arch) do
    Begin
    Read(Arch, Num);
    If (Num <> 0) then
      Begin
      If odd(Num) then //Si es impar
        Begin
        N:= N + 1;
        VI[N]:= Num;
        end
      else   //Si es par
        Begin
        M:= M + 1;
        VP[M]:= Num;
        end;
      end;
    end;
  close(Arch)
end;

Procedure MuestraVec(P: Byte ; V: TVec); //Muestra vector
Var
  i: Byte;
Begin
  For i:=1 to P do
    Begin
    Write (V[i], ' ');
    end;
end;

//Programa principal
begin
  clrscr;
  LeeArch(N, M, VP, VI);
  Writeln('El vector de los numeros impares es');
  MuestraVec(N, VI);
  Writeln;
  Writeln('El vectores de los numeros pares es');
  MuestraVec(M, VP);
  readln;
end.
