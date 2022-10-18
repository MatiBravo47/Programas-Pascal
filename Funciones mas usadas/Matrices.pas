program Matrices;
Uses crt;
Type
  tipoMatrizInteger = array[1..10,1..10] of integer;
  tipoMatrizChar = array[1..10,1..10] of char;
  tipoVector = array[1..20] of integer;
//Lee Archivo
//4 5
//1 -1 3 0 5
//2 0 2 2 2
//5 0 5 4 -1
//9 9 9 9 8

Procedure muestraVector(vector: tipoVector ;N: integer);
var
  i: byte;
Begin
  for i:= 1 to N do
    Write(vector[i]:5)
end;

Procedure muestraMatriz(matriz: tipoMatrizInteger ; N, M: byte);
var
  i, j: byte;
begin
  For i:= 1 to N do
    begin
    for j:= 1 to M do
      Write(matriz[i,j],' ');
    Writeln();
  end;
end;

Procedure LeeArch(Var N, M: Byte ;Var matriz: tipoMatrizInteger);
Var
  i, j: Byte;
  Arch: text;
Begin
  ASSIGN(Arch, 'Matriz.txt'); RESET(Arch);
  Readln(Arch, N, M);
  For i:= 1 to N do
    Begin
    For j:= 1 to M do
      Read(Arch,matriz[i,j]);
    Readln(Arch);
    end;
  CLOSE(Arch);
end;

//Inicializa matriz en 0
Procedure IniciaMatriz(Var Matriz: tipoMatrizInteger; N, M: byte);
Var
  i, j: byte;
begin
for j:= 1 to M do
  for i:= 1 to N do
    Matriz[i,j]:= 0;
end;

Function MinimoMatriz(matriz:tipoMatrizInteger; N, M: byte): integer;
var
  i, j: byte;
  minimo: integer;
begin
minimo:= matriz[1,1];
for i:= 1 to N do
  for j:= 1 to M do
    if (minimo > matriz[i,j]) then
      minimo:= matriz[i,j];
minimoMatriz:= minimo;
end;

//Calcula Maximo de una matriz
Function maximoMatriz(matriz:tipoMatrizInteger; N, M: byte): integer;
var
  i, j: byte;
  maximo: integer;
begin
maximo:= matriz[1,1];
for i:= 1 to N do
  for j:= 1 to M do
    if (maximo < matriz[i,j]) then
      maximo:= matriz[i,j];
MaximoMatriz:= maximo;
end;

//Calcular el minimo elemento de una fila en particular
Function MinFila(matriz: tipoMatrizInteger; filaEle, m: byte): integer;
Var
  j: byte;
  min: Integer;
begin
min:= matriz[filaEle,1];
for j:= 2 to M do
  if (min > matriz[filaEle,j]) then
    min:= matriz[filaEle,j];
minfila:=Min;
end;

//Genera Arregla con el maximo de cada fila y lo muestra
Procedure VecMaxFila(matriz: tipoMatrizInteger; N, M: byte);
Var
  i, j, k: byte;
  max: integer;
  vector: tipoVector;
begin
k:= 1;
Writeln('El vector con el maximo de cada fila es : ');
For i:= 1 to N do
  begin
  max:= matriz[i,1];
  for j:= 1 to M do
    if (Max < matriz[i,j]) then
      max:= matriz[i,j];
  vector[k]:= Max;
  Write(' ', vector[k]);
  k:= k + 1;
  end;
Writeln('');
end;

//Utilizacion la funcion generar un arreglo VMin de N elementos,
//que contenga el minimo de cada fila.
Procedure VectorMinimos(matriz: tipoMatrizInteger; N, M: byte; var Vmin: tipoVector);
Var
  i: byte;
begin
for i:= 1 to N do
  VMin[i]:= MinFila(matriz, i, M);
end;

//A partir de la matriz y de un vector de M elementos reales
//calcular cuantas filas coinciden con el vector.
Function CuantosCoinciden(matriz: tipoMatrizInteger; N, M: byte; vector: tipoVector): byte;
Var
  Cont , i, j: byte;
begin
cont:= 0;
for i:= 1 to N do
  begin
  j:= 1;
  While (j < M) and (vector[j] = matriz[i,j]) do
     j:= j + 1;
  if (vector[j] = matriz[i,j]) then
    cont:= Cont +1;
  end;
CuantosCoinciden:= Cont;
end;

//Dada una columna X,ingresada por el usuario,hallar el promedio
//de sus elementos.
Function Promedio(N: byte; x: integer; matriz: tipoMatrizInteger): real;
var
  acu: word;
  cant, i: byte;
begin
acu:= 0;
cant:= 0;
for i:= 1 to N do
  begin
  acu:= acu + matriz[i,x];//suma columna
  cant:= cant + 1;
  end;
promedio:= acu / cant;
end;

//Suma total de cada fila
Function TotalFila(Matriz2: tipoMatrizInteger; fila, M: byte): word;
var
  j: byte;
  acum: word;
begin
Acum:= 0;
for j:= 1 to M do
  Acum:=Acum + matriz2[Fila,j];
TotalFila:= Acum;
end;

//Almacena total de cada fila en un vector
Procedure VectorTotalFilas(matriz2: tipoMatrizInteger; N, M: byte; Var VTotFila: tipoVector);
var
  i: byte;
Begin
for i:= 1 to N do
  VTotFila[i]:= TotalFila(matriz2, i, m)
end;

//Devuelve la posicion del maximo del vector
Function Maximo(vector: tipoVector; N: byte): byte;
begin
end;

//recorre filas en la columna ,buscando 0
Function ColumnaCeros (matriz: tipoMatrizInteger; N, Col: byte): boolean;
Var
  i: byte;
begin
i:= 1;
While (i <= n) and (matriz[i,col] <> 0) do
   i:= i + 1;
ColumnaCeros:= i <= N;
end;

//Si encuentra 0's cuenta
Function CantColumnaCeros(matriz: tipoMatrizInteger; N, M: byte): byte;
Var
  j, cont: byte;
begin
cont:= 0;
for j:= 1 to M do
  if (ColumnaCeros(matriz, N, j)) then
    cont :=cont + 1;
CantColumnaCeros:= Cont;
end;

//Mas aparariciones entre 2 cosas
Function Color(N: Byte; matrizChar: tipoMatrizChar): String;
Var
i, j: Byte;
Rojo, Azul: Word;
Begin
Rojo:= 0;
Azul:= 0;
For i:= 1 to N do
  For j:= 1 to N do
    Begin
    If (matrizChar[i,j] = 'A') then
      Azul:= Azul + 1
    else
      Rojo:= Rojo + 1;
    end;
If (Rojo > Azul) then
  Color:= 'Rojo'
else
  if (Azul > Rojo) then
    Color:= 'Azul'
  else
    Color :='empate entre ambos';
end;

//Color con mas fichas
Function MasFichas(N: Byte; matrizChar: tipoMatrizChar ;matrizByte : tipoMatrizInteger): String;  //Creo que no funciona bien
Var
Rojo, azul: Word;
i, j: Byte;
Begin
Rojo:= 0;
Azul:= 0;
For i:= 1 to N do
  Begin
  For j:= 1 to N do
    Begin
    If (matrizChar[i,j] = 'R') then
      Rojo:= Rojo + matrizByte[i,j]
    else
      Azul:= Azul + matrizByte[i,j];
    end;
  end;
If (Rojo > Azul) then //Falta mejorar de si son iguales
  Masfichas:= 'Rojo'
else
  Masfichas:= 'Azul'
end;

Var
  matriz, matriz2, matrizByte: tipoMatrizInteger;
  N, X, m, filaEle: byte;
  vector, vmin, vector2, VTotFila: tipoVector;
  matrizChar: tipoMatrizChar;
//Programa principal
begin
//Inicia matriz en 0
//IniciaMatriz(Mat,n,m);
LeeArch(N, M, matriz);
Writeln('La matriz es: ');
muestraMatriz(matriz, n, m);
Writeln('El minimo de la matriz es ', MinimoMatriz(matriz, n, m));
Writeln('El maximo de la matriz es ', maximoMatriz(matriz, n, m));
Writeln('La cantidad columna con algun cero es:  ', cantcolumnaceros(matriz, n, m));
VecMaxfila(matriz, N, M);
Writeln('El vector con el minimo de cada fila es:');
VectorMinimos(matriz, n, m, Vmin);
MuestraVector(Vmin, n);
Writeln();
Writeln('El vector con el total de cada fila es: ');
VectorTotalFilas(matriz, N, M, VTotFila);
MuestraVector(VTotFila, N);
Writeln();
Writeln('Elija la fila donde quiere calcular el minimo');
Readln(filaEle);//Fila elegida
Writeln('El minimo de la fila ',FilaEle, ' es ',MinFila(matriz,filaEle,m));
VectorMinimos(matriz,n,m,vmin);

//Writeln('El color que tiene mas fichas es :',MasFichas(N,T1,T2));
Writeln();
Writeln('Ingrese una columna'); Readln(X);
Writeln('El promedio de la columna ', x,' es : ',promedio(n, x, matriz):5:2);
cuantoscoinciden(matriz, n, m, vector);
//Writeln('El color que mas aparece es: ',color(n,t1));

Readln;
end.

