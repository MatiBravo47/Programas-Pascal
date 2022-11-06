//Functiones y procedimientos recursivos mas usados
program recursivas;
uses crt;
type
  tipoVector = array[1..12] of integer;
  tipoMatriz = array[1..10,1..10] of integer;
const
  vector: tipoVector = (5,1,12,8,-1,3,10,9,14,0,15,7);
  //Lee Archivo
  //4 5
  //1 -1 3 0 5
  //2 0 2 2 2
  //5 0 5 4 -1
  //9 9 9 9 8
Procedure LeeArch(Var N, M: Byte; Var matriz: tipoMatriz);
Var
  i, j: Byte;
  Arch: text;
Begin
  ASSIGN(Arch,'Matriz.txt'); RESET(Arch);
  Readln(Arch, N, M);
  For i:= 1 to N do
    Begin
    For j:= 1 to M do
      Read(Arch, matriz[i,j]);
    Readln(Arch);
    end;
  CLOSE(Arch);
end;

//VECTOR
//Inicializar vector en 0
Procedure iniciaVector(fila: byte; var vector: tipoVector);
Begin
if (fila = 1) then
  vector[fila]:= 0
else
  begin
  vector[fila]:= 0;
  iniciaVector(fila - 1, vector);
  end;
end;

//Muestra un vector
Procedure muestraVector(vector: tipoVector; n: byte);
Begin
  if (n > 1) then
    muestraVector(vector, n - 1);
write(vector[N], ' ');
end;

//muestra elementos vector alreves
Procedure muestraVectorInvertido(vector: tipoVector; n: byte);
begin
Write (vector[N],' ');
if (n > 1) then
  muestraVectorInvertido(vector, n - 1);
end;

//Maximo de un vector
function maximoVector(vector: tipoVector; n: byte): integer;
var
  aux: integer;
begin
if (n = 1) then //El primero es el maximo momentaneo
  maximoVector:= vector[n]
else
  begin
  aux:= maximoVector(vector, n - 1); //guardo maximo en auxiliar
  if (vector[n] > aux) then //si el valor actual es mayor
    maximoVector:= vector[n]      //se guarda en maximo
  else
    maximoVector:= aux;       //sino queda el antiguo valor
  end;
end;

//Muestra la suma de los elementos de un vector
Function SumaElementosVector(vector: tipoVector; N: byte): integer;
begin
  if (n = 1) then
    sumaElementosVector:= vector[n]
  else
    sumaElementosVector:= vector[N] + sumaElementosVector(vector, N - 1);
end;

//Promedio vector
function PromedioVector(vector: tipoVector; n: byte): real;
begin
  promedioVector:= sumaElementosVector(vector, n) / n ;
end;

//Verificar si un valor X se encuentra en un arreglo V de N elementos
Function estaEnVector(vector: tipoVector; N: byte; x:real): boolean;
begin
  if (n > 0) then
    if (vector[n] = x) then
      estaEnVector:= true
    else
      estaEnVector:= estaEnVector(vector, n - 1, x)
  else
    estaEnVector:= false
end;

//Busqueda lineal posicion de un vector desordenado
Function buscarLineal(vector: tipoVector; N, X: byte): byte;
begin
if (vector[N] = X) then
  buscarLineal:= N
else
  begin
  if (vector[1] = X) then
    buscarLineal:= 1
  else
    buscarLineal:= BuscarLineal(vector, N - 1, X);
  end;
If (buscarLineal > n) then
  buscarLineal:= 0;
end;

//busqueda binaria para vector ordenado en forma ascendente
function busquedaBinaria (ini, fin: byte; vector: tipoVector; elemento: real): byte;
var
  Prom: byte;
begin
prom:= (Ini + fin) div 2;
if (vector[prom] <> elemento) and (ini < fin) then
  if (vector[prom] > elemento) then
    busquedaBinaria:= busquedaBinaria (ini, prom - 1, vector, elemento)
  else
    busquedaBinaria:= busquedaBinaria(prom + 1, fin, vector, elemento)
else
    if (vector[prom] = elemento) then
      busquedaBinaria:= prom
    else
      busquedaBinaria:= 0;
end;

//MATRIZ
//Elemento Minimo matriz cuadrada
Function MinimoMatriz(matriz: tipoMatriz; i, j, N: byte): integer; //Recorro la matriz por fila
var
  minimo: integer;
begin
  if (i = 0) then
    Minimo:= matriz[1,1]
  else
  begin
    if (j > 1) then
      Minimo:= MinimoMatriz(matriz, i, j - 1, N)
    else
      Minimo:=MinimoMatriz(matriz , i - 1, N, N);
    if (matriz[i,j] < Minimo) then
      Minimo:= matriz[i,j];
  end;
  MinimoMatriz:= Minimo;
end;

//Devuelve en un arreglo Maximo de cada fila
procedure MaximoCadaFila(Var vector: tipoVector; matriz: tipoMatriz; i, j, M: byte; Aux: integer);
begin
  if (i > 0) then
    begin
    if (matriz[i,j] > Aux) then
      Aux:= matriz[i,j];
    if (j > 1) then
      MaximoCadaFila(vector, matriz, i, j - 1, M, Aux)
    else
      begin
      vector[i]:= Aux;
      maximoCadaFila(vector, matriz, i - 1, M, M, -999);
    end;
  end;
end;

//Recorre una matriz numerica de N*M y devolver la cantidad
//de negativos que almacena.
Function cantidadNegativosMatriz(matriz: tipoMatriz; I, J, M: byte): byte;
var
  incr: byte;
begin
if (i = 0) then
  cantidadNegativosMatriz:= 0
else
  begin
  if (matriz[i,j] < 0) then //si es positivo cuenta
    incr:= 1
  else
    incr:= 0;
  if (j > 1) then  //baja una columna
    CantidadNegativosMatriz:= Incr + cantidadNegativosMatriz(matriz, i, j - 1, M)
  else  //baja una fila, va a ultima columna
    CantidadNegativosMatriz:= Incr + CantidadNegativosMatriz(Matriz, i - 1, m, m)
  end;
end;

Function CantidadPositivosMatriz(matriz: tipoMatriz; i, j ,M: byte): byte;
var
  Incr: byte;
Begin
if (i = 0) then
  CantidadPositivosMatriz:= 0
else
  begin
  if (matriz[i,j] > 0) then //si es positivo cuenta
    incr:= 1
  else
    incr:= 0;
  if (j > 1) then //baja una columna
    CantidadPositivosMatriz:= Incr + CantidadPositivosMatriz(matriz, i, j - 1, M)
  else //baja una fila, va a ultima columna
    CantidadPositivosMatriz:= Incr + CantidadPositivosMatriz(Matriz,i-1,M,M);
  end;
end;

//Verificar si una matriz mat de N*M,cumple que un elemento
//X se encuentra al menos una vez en cada columna
Function Cumple (Matriz: tipoMatriz; X: real; i, j, n: byte): boolean;
begin
if (j = 0) then
  cumple:= true
else
  if (matriz[i,j] = x) then
    cumple:= cumple(matriz, x, n, j - 1, n) //columna anterior,ultima fila
  else
    if (i > 1) then //sigue buscando en la misma columna
      cumple:= cumple(matriz, x, i - 1, j, n)//fila anterior,misma columna
    else
      cumple:= false //x no esta en la columna
end;

Procedure muestraMatriz(matriz: tipoMatriz; fila, columna, n, m: byte);
begin
if (fila > 0) then
  begin
  write(matriz[n - fila + 1, m - columna + 1]);
  if (columna = 1) then
    begin
    Writeln;
    muestraMatriz(matriz, fila - 1, m, n, m);
    end
  else
    muestraMatriz(matriz, fila, columna - 1, n, m);
  end;
end;

//Num es el stopper, en este caso cantidad de filas por recorre por fila 
Procedure InicializaMatriz(fila, col, num: byte; var matriz: tipoMatriz);
begin
if (fila = 1) and (col = 1) then //si es el primer elemento
  matriz[fila,col]:= 0   //guarda 0 en esa pos
else
  begin
  matriz[fila, col]:= 0;
  if (col > 1) then
    IniciaMatriz(fila, col - 1, num, matriz) //Baja columna
  else
   IniciaMatriz(fila - 1, num, num, Matriz); //Baja una fila y va a ultima columna
  end;
end;

//Muestra la suma de los elementos de una columna AuxRubro de una matriz
Function SumaElementosColumna(cajaRubro: TM; N,auxRubro: byte): real;
begin
  if (n = 1) then
    sumaElementosColumna:= cajaRubro[n,auxRubro]
  else
    sumaElementosColunna:= cajaRubro[N,auxRubro] + sumaElementosColumna(cajaRubro, N - 1, auxRubro);
end;

//Promedio Columna de una matriz
function PromedioColumnaMatriz(cajaRubro: TM; n,auxRubro:byte): real;
begin
  promedioColumnaMatriz:= sumaElementosColumna(cajaRubro, n,auxRubro) / n ;
end;

Var
  x, n, m, i, j, aux: byte;
  matriz, B: tipoMatriz;
  A: tipoVector;
begin
clrscr;
Leearch(N, M, matriz);
//Write('Tiene al menos una vez el valor ',X,' en cada columna ',Cumple(Mat,x,n,m,n));
//Write(CantNeg(Mat,n,M,M));
Writeln('El vector es: ');
muestraVector(vector, N);
Writeln();
Writeln('El vector alreves es');
muestraVectorInvertido(vector, N);
Writeln;
Writeln('El maximo del vector es :',maximoVector(vector, N));
Writeln('La suma los componentes del vector es: ',SumaElementosVector(vector, N));
Writeln('El promedio del vector es :',PromedioVector(vector, N):5:2);
Writeln('Ingrese un valor');Readln(x);
If estaEnVector(vector, N, X) then
  Writeln('El valor ', x,' se encuentra en el vector ')
else
  Writeln('El valor ', x,' no se encuentra en el vector' );
If (buscarLineal(vector, N, X) <> 0) then
  Writeln('Ese valor se encuentra en la posicion ',buscarLineal(vector, N, X));
Writeln('El vector con el maximo de cada fila es :' );
GeneraVec(vector, matriz, n, m, m, aux);
muestraVector(vector, N);
writeln();
If cumple(matriz, x, n, m, n) then
  Writeln('El valor ', X,' se encuentra en cada columna')
else
  Writeln('El valor ', x, ' no se encuentra en cada columna');
Writeln('La cantidad de positivos de la matriz es: ',CantPosi(matriz, n, m, m));
Writeln('La cantidad de negativos de la matriz es: ',CantNeg(matriz, n, m, m));
Writeln('La matriz es ');
EscribirMatriz(matriz, n, m, n, m);
Writeln('El vector inicializado en 0 es :');
IniciaV(4, A);
Muestra(A, 4);
Writeln();
Writeln('La matriz inicializada en 0 es ');
IniciaMat(2, 3, 3, B);
EscribirMatriz(B, 2, 3, 2, 3);
readln;
end.

