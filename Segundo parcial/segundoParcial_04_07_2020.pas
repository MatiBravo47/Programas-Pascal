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
type
  tReg = record
    dia: byte;
    turno: char;
  end;
  tipoVector = array[1..60] of tReg; //en el caso de haber los turnos en cada dia
  tipoMatriz = array [1..11,1..3] of byte;

Procedure IniciaMatrizCuadrada(fila, col, num: byte; var matriz2: tipoMatriz);
begin
if (fila = 1) and (col = 1) then //si es el primer elemento
  matriz2[fila,col]:= 0   //guarda 0 en esa pos
else
  begin
  matriz2[fila, col]:= 0;
  if (col > 1) then
    IniciaMatrizCuadrada(fila, col - 1, num, matriz2) //Baja columna
  else
   IniciaMatrizCuadrada(fila - 1, num, num, Matriz2); //Baja una fila y va a ultima columna
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
//programa principal
var
  vector: tipoVector;
  n: byte;
  matriz:tipoMatriz;
begin
clrscr;
iniciaMatrizCuadrada(11,3,11,matriz);
leeArch(n,vector,matriz);
readln;
end.

