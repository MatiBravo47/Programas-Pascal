//Un supermercado graba diariamente en un archivo los importes cobrados por la
//venta de M diferentes rubros en N diferentes cajas.
//En la 1era linea del archivo, N y M.
//En las siguientes M lineas los nombres de los M rubros (maximo 8 caracteres) y
// sus respectivos margenes de ganancias.
//Y en cada una de las restantes N lineas(considerando que el orden 1 a N
//corresponde a las cajas 1 a N) el conjunto de pares(rubro, Importe) cobrado
//en dicha caja. El par(0, 0) indica el cierre de caja.
//Se pide desarrollar un programa eficaz, eficiente y claro que lea el archivo
//una sola vez y almacene sus datos en estructuras adecuadas. Luego ingresar
//por teclado R, D y X, para calular e informar:
//a) Para un rubro R(debe completarse a 8 caracteres) su promedio de venta por
//caja(las N cajas).R puede no existir.
//b)Para una caja D(1..N) el rubro de mayor ganancia(en el dia).Especificar la
//ganancia.
//c) Para un importe X, cuantos rubros registraron ventas por encima de X en
// todas las cajas.
program segundoParcial_28_10_19;
uses crt, SysUtils;
type
  ST = string[8];
  Treg = record
    rubro: ST;
    margen: real;
  end;

  TVR = array[1..10] of Treg;
  TM = array[1..50,1..50] of real;


//inicializa matriz (cajaRubro) en 0
procedure blanqueo(var Mat: TM; i, j, m: byte);
begin
  if (i >= 1 ) then
    begin
    if (j > 1 ) then //baja de por columnas
      blanqueo(Mat, i, j - 1, M)
    else  //baja una fila cuando llega a la primera columna
      blanqueo(Mat, i - 1, M, M);
    Mat[i,j]:= 0;
    end;
end;

procedure lectura(var cajaRubro: TM; var N, M: byte; var productos: TVR);
var
  arch: text;
  i, j: byte;
  val: integer;
begin
  assign(arch, 'parcial2.txt'); reset(arch);
  readln(arch, n, m);
  blanqueo(cajaRubro, n, m, m);
  //almacena en registro productos
  for j:= 1 to M do
    begin
    with productos[j] do
      readln(arch, rubro, margen)
    end;
  //lee matriz cajaRubro
  for i:= 1 to N do
    begin
    read(arch, j, val);
    while (j <> 0) and (val <> 0) do
      begin
      cajaRubro[i,j]:= cajaRubro[i,j] + val;
      read(arch, j, val)
      end;
    readln(arch);
    end;
  close(arch);
end;

//busqueda de un rubro en arreglo de registros,devuelve indice
function buscaRubro(R: ST; productos: TVR; M: byte): byte;
begin
  if (m = 0) then
    buscaRubro :=0
  else
    if (productos[m].rubro = R) then
      buscaRubro:= m
    else
      buscaRubro:= buscaRubro(r, productos, m - 1);
end;

//Muestra la suma de los elementos de una columna AuxRubro de una matriz
Function SumaElementosVector(cajaRubro: TM; N,auxRubro: byte): real;
begin
  if (n = 1) then
    sumaElementosVector:= cajaRubro[n,auxRubro]
  else
    sumaElementosVector:= cajaRubro[N,auxRubro] + sumaElementosVector(cajaRubro, N - 1, auxRubro);
end;

//Promedio Columna de una matriz
function PromedioMatriz(cajaRubro: TM; n,auxRubro:byte): real;
begin
  promedioMatriz:= sumaElementosVector(cajaRubro, n,auxRubro) / n ;
end;

//maximo de la fila,devuelve indice recursivo
//function maximoFila(cajaRubro:TM;fila,m:byte):byte;
//begin
//  if (m > 0) then
//    maximoFila(cajaRubro,fila,m-1);
//  if (m = 1) or (cajaRubro[fila,m] > cajaRubro[fila,maximoFila]) then
//    maximoFila:= m;
//end;

//para una caja D el rubro con mayor ganancia(en el dia).Especificar la ganancia
procedure maxGan(cajaRubro: TM; productos: TVR; i, m: byte; var aux: byte; var val: real);
begin
  if (M = 1) then
    begin
    aux:= 1;
    val:= cajaRubro[i,1] * (productos[m].margen) / 100;
    end
  else
    begin
    maxGan(cajaRubro, productos, i , m - 1, aux, val);
    if ((cajaRubro[i,m] * (productos[m].margen)/100) > val) then
      begin
      val:= (cajaRubro[i,m] * productos[m].margen) / 100;
      aux:= m;
      end;
    end;
end;

//verifica si supera x importe por columna(cajas del rubro)
function controlXCaja(cajaRubro: TM; N, M: byte; x: integer): boolean;
begin
  if (n = 0) then
    controlXCaja:= true
  else
    begin
    if (cajaRubro[n,m] < x) then
      controlXCaja:= false
    else
      controlXCaja:= controlXCaja(cajaRubro, n - 1, m, x);
    end;
end;


//cuenta cuantos superan x importe recorre por fila(rubros)
function cuentaRubrosX(cajaRubro: TM; N, M: byte; x: integer): byte;
var
  incr: byte;
begin
  if (M < 1) then
    cuentaRubrosX:= 0
  else
    begin
    if controlXCaja(cajaRubro, n, m, x) then
      incr:= 1
    else
      incr:= 0;
    cuentaRubrosX:= incr + cuentaRubrosX(cajaRubro, n, m - 1, x);
    end;
end;

//programa principal
var
  productos: TVR;
  cajaRubro: TM;
  N, M, auxRubro, auxRubroMax, D: byte;
  R: ST;
  X: integer;
  valMaxRubro: real;

begin
  lectura(cajaRubro, n, m, productos);
  writeln('Ingrese el rubro(8 caracteres complete con espacio)' );
  readln(r);
  auxRubro:= buscaRubro(r, productos, m);
  if (auxRubro = 0) then
    writeln('rubro no encontrado')
  else
    writeln('para el rubro ,', r ,'su promedio de ventas es de ',
    promedioMatriz(cajaRubro, n, auxRubro):5:2);
  writeln('ingrese la caja D');
  readln(D);
  maxGan(cajaRubro, productos, d, m, auxRubroMax, valMaxRubro);
  writeln('Para la caja ', d,' el rubro con mayor ganancia es el ', auxRubroMax ,
  ' ( ' , productos[auxRubroMax].rubro,') con $' , valMaxRubro:5:2);
  writeln('Ingrese un importe');
  readln(x);
  writeln(' para x = ', x,' ', cuentaRubrosX(cajaRubro, n, m, x),' rubro/s');
//  writeln(maximoFila(cajaRubro,4,m));
  readln()
end.

