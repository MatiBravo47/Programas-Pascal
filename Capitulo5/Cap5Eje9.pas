//Ej 9) Dado un archivo de números enteros no nulos, almacenar en un
//arreglo A aquellos que formen una secuencia ascendente. A partir de A
//generar B con la misma cantidad de elementos de A pero poniendo
//ceros en aquellas componentes simétricas donde la simétrica derecha
//no sea múltiplo de la izquierda.
//Escribir ambos arreglos.
//Ejemplo: Archivo: 5, 7, 1, 12, 15, -10, 10, 24, -25, 26, 50, 13
//A = (5, 7, 12, 15, 24, 26, 50)  B= (5, 0, 12, 15, 24, 0, 50)
program Cap5Eje9;
Uses crt;
Type
  TVec=array[1..15] of integer;
Var
  N: Byte;
  VA, VB: TVec;

Procedure VectorA(Var N: Byte;Var VA: Tvec); //Almacena ascendentes
Var
  Arch: Text;
  ant, Num: Integer;
Begin
  N:= 1;
  Assign(Arch, 'Ejercicio59.txt'); Reset(Arch);
  Read(Arch, num);
  ant:= num;
  VA[N]:= num; //Asigno el primer valor como anterior
  While not eof (arch) do
  Begin
    Read(Arch, Num);
    If (Num > ant) then //si es mayor al anterior
      Begin
      ant:= Num;
      N:= N + 1;
      VA[N]:= Num;
    end;
  end;
  Close(Arch);
end;

Procedure MuestraVector(O:Byte;V:Tvec);
Var
  i: Byte;
Begin
  For i:=1 to O do
  Write(' ', V[i])
end;

Procedure VectorB(N: Byte; VA: TVec; Var VB: TVec);
Var
  i, j: Byte;
Begin
  i:= 1; //asigna primer indice
  j:= N; //asigna ultimo indice vector
  While (i <> j) or (j - 1 = i)do  // (i <> j) vector impar (j - 1 = i) para pares
  Begin
    If (VA[i] >= VA[J]) then
      Begin
      If ((VA[i])mod(VA[j]) = 0) then //si es divisible
        Begin          //guarda en vector b
        VB[i]:= VA[i];
        VB[J]:= VA[j];
        end
      end
    Else
        If ((VA[J]) mod (VA[I]) = 0) then
          Begin
          VB[i]:= VA[i];
          VB[J]:= Va[j];
          end;
    i:= i + 1;
    J:= J - 1;
    end;
  If (i = j) or (j - 1 = i ) then //guarda ultimo elemento
    VB[i]:= VA[i];
end;


//Programa principal
begin
  clrscr;
  VectorA(N, VA);
  Writeln('El vector A es');
  MuestraVector(N, VA);
  VectorB(N, VA, VB);
  Writeln;
  Writeln('El vector B es');
  MuestraVector(N, VB);
  readln;
end.

