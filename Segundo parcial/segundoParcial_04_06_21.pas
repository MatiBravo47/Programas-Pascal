//Se desea analizar ciertas cadenas de Noticias y su cobertura en distintos temas
//de actualidad ocurrida en los últimos días, para ello se registró información
//en los archivos de texto:
//- ‘CadNoticias.txt’: con los nombres (alfanumérico de 3) de las cadenas de
//noticias a analizar.
//- ‘TipoNoticias.txt’: en cada línea vienen pares de datos que indican código
//y descripción de noticia que
//cubrió:
//⮚ Código (de 1..N), pueden venir desordenados y sin repetir.
//⮚ Descripción de Noticia(alfanumérico de 10)
//- ‘Coberturas.txt’: con la siguiente información desordenada, donde el par
//(cadena de noticias y código
//de noticia) puede repetirse, en cada línea viene:
//⮚ Cadena de Noticias (ANU3)
//⮚ Código de noticia que cubrió
//⮚ Cantidad de notas
//Se pide leer los datos y almacenarlos en estructuras adecuadas. Luego,
//obtener e informar:
//a) Cadena de noticias y descripción de noticia que menos notas tuvo.
//b) Dada un Código de Noticia X, ingresada por teclado, obtener el porcentaje
//que representa la cantidad
//de notas que cada una de las cadenas de noticias le dedicó a X, sobre el
//total de notas de ese tipo.
//c) Almacenar en una estructura adecuada los pares de datos (cadena de noticias
//y descripción de noticia)
//que tuvieron cobertura. Luego listarlos
program segundoParcial_04_06_21;
uses crt;
type
  ANU3 = string[3];
  ANU10 = string[10];
  tipoMatriz = array[1..5,1..5] of word;
  tipoVector = array [1..6] of ANU3;
  regTipoNoticia = record
    codigoNoticia: byte;
    descripcionNoticia: ANU10;
  end;
  tipoVectorRegistro = array [1..6] of regTipoNoticia;


Procedure LeeArchCodNoticias(var vector: tipoVector; var N: byte);
var
  arch:text;
begin
  N:= 0;
  assign(arch,'CadNoticias.txt'); reset(arch);
  while not eof (arch) do
    begin
    n:=n + 1;
    readln(arch, vector[n]);
    end;
  close(arch);
end;

Procedure LeeArchTipoNoticia(var vectorRegistro: tipoVectorRegistro; var m:byte);
var
  arch: text;
  blanco: char;
begin
  M:= 0;
  assign(arch,'TipoNoticias.txt'); reset(arch);
  while not eof (arch) do
    begin
    m:= m + 1;
    readln(arch, vectorRegistro[M].codigoNoticia, blanco, vectorRegistro[M].descripcionNoticia);
    end;
  close(arch);
end;

Procedure IniciaMatriz(Var Matriz: tipoMatriz; N, M: byte);
Var
  i, j: byte;
begin
for j:= 1 to M do
  for i:= 1 to N do
    Matriz[i,j]:= 0;
end;

procedure LeeArchCoberturas(n:byte;vector:tipoVector;var matriz:tipoMatriz);
var
  arch:text;
  i, fila, columna, valor: byte;
  codNoticia: ANU3;
begin
  assign(arch,'Coberturas.txt'); reset(arch);
  while not eof (arch) do
    begin
    readln(arch,codNoticia,columna, valor);
    for i:=1 to N do
      if (codNoticia = vector[i]) then
        fila:= i;
    matriz[fila,columna]:= matriz[fila,columna] + valor;
    end;
  close(arch);
end;

var
  n, m: byte;
  vector : tipoVector;
  vectorRegistro: tipoVectorRegistro;
  matriz: tipoMatriz;
//programa principal
begin
  clrscr;
  leeArchCodNoticias(vector,n);
  LeeArchTipoNoticia(vectorRegistro, m);
  iniciaMatriz(matriz, n, m);
  LeeArchCoberturas(n,vector,matriz);
  readln;
end.

