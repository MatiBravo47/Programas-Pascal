//Una estación de Servicio tiene registrada la información asociada a las ventas
//diarias en 2 archivos de texto:
//‘Combustible.txt’ (con N pares de datos) Viene N en la primer línea y en cada
//una de las N líneas restantes:
//- Tipo de combustible que vende(cadena de 10)
//- Precio del litro
//‘Ventas.txt’ con los datos asociados a las ventas de un día
//de la siguiente manera:
//- Código de surtidor(cadena de 4)
//- Cantidad: litros vendidos de cada uno de los N
//tipos de combustible descriptos en el archivo
//Combustible.txt (y que están en el mismo orden
//que en ese archivo)
//Leer la información en estructuras adecuadas para luego calcular e informar:
//a) Para un código de surtidor C, el tipo de combustible que más litros vendió.
//Puede no existir.
//b) Porcentaje de importe de venta de cada tipo de combustible respecto de
//la venta total de combustible.
//c) Para aquellos surtidores que vendieron más de X litros de un tipo de
//combustible, generar una estructura
//con: código de surtidor y tipo de combustible. Luego listarlos.
//Nota: Los valores de C y X son datos ingresados por el usuario
//Infinia NaftaSuper GasOil Premiun
//105 90 85 100
//Codigo
//A205 20 23 10 38
//B108 30 47 30 15
//M015 27 35 40 52
//F562 11 20 8 25
//H142 12 25 12 20
//Condición para aprobar: los siguientes subprogramas (funciones y procedimientos,
//según corresponda), necesarios
//para resolver el problema planteado, deben ser resueltos correctamente en forma
//recursiva: (como mínimo 2 de los 3)
//- Obtener la posición del máximo de una fila (para el inciso a)
//- Total de ventas de tipo de combustible (para el inciso b)
//- Total de ventas del día (para el inciso b)
//Importante:
//● Los archivos deben recorrerse una sola vez.
//● La solución se debe implementar usando indefectiblemente registros, vectores
//y matrices
//● Cada proceso debe ser implementado en un subprograma (según corresponda
//función o procedimiento)
program segundoParcial_18_06_21;
uses crt;
type
  registro = record
    tipoCombustible: string[10];
    precio: real;
  end;
  tipoRegistro = array [1..4] of registro;
  tipoVector = array [1..5] of string[4];
  tipoMatriz = array [1..5,1..4]  of byte;

procedure leeArchivoCombustible(var m:byte;var vectorRegistro:tipoRegistro);
var
  arch:text;
  i:byte;
begin
  assign(arch,'Combustible.txt');reset(arch);
  readln(arch,m);
  for i:=1 to m do
    readln(arch,vectorRegistro[i].tipoCombustible,vectorRegistro[i].precio);
  close(arch);
end;

procedure leeArchivoVentas(m:byte;var vectorCodigo:tipoVector;var matrizVentas:tipoMatriz;var n:byte);
var
  arch:text;
  i:byte;
begin
  n:=0;
  assign(arch,'Ventas.txt');reset(arch);
  while not eof (arch) do
    begin
    n:= n + 1;
    read(arch,vectorCodigo[n]);
    for i:= 1 to M do
      read(arch,matrizVentas[n,i]);
    readln(arch);
    end;
  close(arch);
end;

//devuelve posicion maximo
function maximoRecursivo(matCajas: TMR, N, M: byte): byte;
begin
if M=1 then
  maximoRecursivo :=1,
else
  begin
  if m > 1 then
    maximoRecursivo := maximoRecursivo(matCajas, n, m-1);
  if matCajas[n, maximoRecursivo] < matCajas[n,m] then
    maximoRecursivo := m;
  end;
end;

//programa principal
var
  m,n:byte;
  vectorRegistro:tipoRegistro;
  matrizVentas:tipoMatriz;
  vectorCodigo:tipoVector;
begin
  clrscr;
  leeArchivoCombustible(m,vectorRegistro);
  leeArchivoVentas(m,vectorCodigo,matrizVentas,n);
  readln;
end.

