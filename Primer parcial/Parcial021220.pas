//En el archivo de texto ‘HISOPADOS.TXT‘ están registrados los resultados
//de diferentes estudios realizados en un Laboratorio de Análisis Clínicos,
//de la siguiente forma:
//● Código de Paciente (ANU6)
//● PCR positivo: S o N (indicando Si o No)
//● IGG e IGM: dos valores numéricos reales
//Se pide procesar el archivo y almacenar en una estructura adecuada
//(sólo por cada hisopado en el que el PCR dio positivo), el Código de
//Paciente y los valores de IGG y de IGM, ordenado descendente por IGG.
//Luego, con los pacientes seleccionados, hallar e informar:
//a) Cantidad de los pacientes que tuvieron IGG superando un umbral X,
//e IGM superando un umbral Y, respectivamente (con X e Y ingresados por
//teclado).
//b) Dado un Código de paciente K ingresado por teclado, informar su IGM
//e IGG (puede no
//existir).
//c) El porcentaje de pacientes que han obtenido un IGM superior al IGG
//(sobre el total de pacientes con PCR positivo)
program Parcial021220;
uses crt;
Type
  TVS = array[1..12] of string[6];
  TVR = array[1..12] of real;

procedure leeArch(var codigo: tvs; Var IGG, IGM: TVR; var N: byte);
var
  arch: text;
  blanco, PCR: char;
  i: byte;
begin
  n:= 0;
  assign(arch, 'HISOPADOS.txt'); reset(arch);
  while not eof (Arch) do
    begin
    n:= n + 1;
    readln(arch,codigo[n], blanco, PCR, IGG[n], IGM[n]);
    if (pcr = 'N') then //Si es negativo no lo guarda
    	 n:= n - 1;
    end;
  close(arch);
end;

function supera(n: byte; vectorReal1, VectorReal2: tvr;Umbralx, umbraly: real): byte;
var
  cantidad, i: byte;
begin
  cantidad:= 0;
  for i:= 1 to N do
    begin
    if (VectorReal1[i] > umbralx) and (vectorReal2[i] > umbraly) then
       cantidad:= cantidad + 1;
    end;
supera:= cantidad;
end;

procedure Superar(n: byte; vector1Real, Vector2Real: tvr);
var
  x, y: real;
begin
  write('Ingrese umbral x:'); readln(x);
  write('Ingrese umbral y:'); Readln(y);
  Writeln('La cantidad es ',supera(N, vector1Real, Vector2Real, X, Y));
end;

procedure codigoPaciente(n: byte;vectorcodigo: tvs;vectorReal1, VectorReal2: tvr );
var
  codigoPaciente: string[6];
  encontrado: boolean;
  i: byte;
begin
  encontrado:= False;
  writeln('Ingrese codigo de paciente :'); Readln(CodigoPaciente);
  CodigoPaciente:= upcase(CodigoPaciente);
  for i:=1 to N do
    begin
    if (codigoPaciente = vectorcodigo[i]) then
       begin
       encontrado:= true;
       writeln(vectorreal1[i]:5:2,' , ', vectorReal2[i]:5:2);
       end;
    end;
  if not encontrado then
       Writeln('No fue encontrado');
end;

function Superior(n: byte;VectorIGM, VectorIGG: tvr): real;
var
  i, cantidad: byte;
begin
  cantidad:= 0;
  for i:= 1 to N do
    begin
    if (vectorIGM[i] > vectorIGG[i]) then
       cantidad:= cantidad + 1
    end;
  Superior:= cantidad / N *100;
end;

var
  codigo: tvs ;
  igg, igm :tvr;
  n: byte;

begin
  clrscr;
  leeArch(codigo, IGG, IGM, N);
  superar(n, igg, igm);
  codigoPaciente(n, codigo, igg, igm);
  writeln('El porcentaje de IGM superior al IGG es del ',superior(n, igm, igg):5:2,'%');
  readln;
end.

