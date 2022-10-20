//Una casa de comidas rápidas reabrió sus puertas el
//1ero de junio (después de la cuarentena) realizando
//la venta de 3 promociones sólo por delivery, con los
//siguientes costos: Promo 1=$700, Promo 2=$400 y Promo 3=$500.
//Realiza entregas en dos turnos (Mediodía y Noche) y a la noche
//los precios se incrementan en un 10%
//Para decidir si continuar con la actividad, se desea analizar la venta de
//todo el mes de junio, para lo cual se dispone de un archivo de texto
//(ordenado por día y turno) que contiene en cada línea los datos de un turno:
//DIA (1 a 30) - TURNO (M/N) - CANTIDAD PROMOS VENDIDA (1 a 100) –
//DETALLE PROMOS VENDIDAS (nros de promo
//en secuencia).
//Con esa información, generar las estructuras necesarias para indicar:
//Dia, Turno, CantPromo1, CantPromo2 y CantPromo3 y luego:
//a) Dado un día ingresado por teclado, mostrar la recaudación total
//incluyendo ambos turnos (tener en cuenta que el
//día puede no existir o no tener ventas en algún turno)
//b) Mostrar la recaudación total de cada promoción
//c) Mostrar las estructuras generadas
//NOTA: Para aprobar debe resolver correctamente en forma recursiva
//los siguientes procesos:
//- Mostrar la Matriz óInicializar la Matriz
//- Obtener la recaudación de un determinado turno de determinado día
//Importante:
//• Nombrar su código y el archivo .PAS con su apellido.
//• La solución se debe implementar usando indefectiblemente registros y
//arreglos (vectores y matrices)
//• Se considerarán la eficiencia, claridad y modularización adecuada del código.
//Los datos del ejemplo son ilustrativos para realizar una ejecución con
//los mismos, NO deben figurar como constantes en el código desarrollado.
program segundoParcial_04_07_2020;
uses crt;
const
  PROMO1 = 700;
  PROMO2 = 400;
  PROMO3 = 500;
  INCREMENTO = 1.10; //%10
  FILAS = 11;
  COLUMNAS = 3;
type
  tReg = record
    dia: byte;
    turno: char;
  end;
  tipoVector = array[1..60] of tReg; //en el caso de haber los turnos en cada dia
  tipoMatriz = array [1..FILAS,1..COLUMNAS] of byte;

Procedure InicializaMatriz(fila, col, num: byte; var matriz: tipoMatriz);
begin
if (fila = 1) and (col = 1) then //si es el primer elemento
  matriz[fila,col]:= 0   //guarda 0 en esa pos
else
  begin
  matriz[fila, col]:= 0;
  if (col > 1) then
    InicializaMatriz(fila, col - 1, num, matriz) //Baja columna
  else
   InicializaMatriz(fila - 1, num, num, Matriz); //Baja una fila y va a ultima columna
  end;
end;

procedure leeArch(var n:byte; var vector:tipoVector; var matriz:tipoMatriz);
var
  blanco: char;
  arch:text;
  promosVendidas,i,detallePromo: byte ;
begin
n:= 0;
assign(arch,'segundoParcial_04_07_2020.txt'); reset(arch);
while not eof (arch) do
  begin
  n:=n + 1; //cantidad de filas
  read(arch,vector[n].dia, blanco, vector[n].turno, promosVendidas );
  for i:= 1 to promosVendidas do
    begin
    read(arch,detallePromo);
    matriz[n,detallePromo]:=matriz[n,detallePromo] + 1;
    end;
  readln(arch);
  end;
close(arch);
end;

Procedure Consulta(vector: tipoVector; N: byte; diaIngresado: byte; matriz: tipoMatriz; var recaudacionTotal: real);
Var
  j: byte;
  recaudacion: real;
begin
j:= 1;
recaudacionTotal:=0;
While (j <= N) and (vector[j].dia <= diaIngresado) do
  begin
  While (j <= N) and (vector[j].dia <> diaIngresado) do //Busca nombre
    j:= j + 1;  //Si no coincide,suma indice
  if (j <= N) then
    begin
    if vector[j].turno = 'M' then
      recaudacion:= matriz[j,1] * PROMO1 + matriz[j,2] * PROMO2 + matriz[j,3] * PROMO3
    else
      recaudacion:= (matriz[j,1] * PROMO1 + matriz[j,2] * PROMO2 + matriz[j,3] * PROMO3)*INCREMENTO;
    recaudacionTotal:= recaudacionTotal + recaudacion;

    j:= j + 1;
    end
  else
    RecaudacionTotal:= 0;
  end;
Writeln('La recaudacion total es: ', recaudacionTotal:5:2);
end;

//programa principal
var
  vector: tipoVector;
  n, diaIngresado: byte;
  matriz:tipoMatriz;
  recaudacionTotal: real;
begin
clrscr;
inicializaMatriz(FILAS,COLUMNAS,FILAS,matriz);
leeArch(n,vector,matriz);
writeln('Ingrese un dia');readln(diaIngresado);
consulta(vector, n,diaIngresado,matriz,recaudacionTotal);
readln;
end.

