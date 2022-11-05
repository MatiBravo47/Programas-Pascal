program segundoParcial_18_06_21;
uses crt;
type
  registro = record
    tipoCombustible: string[10];
    precio: real;
  end;
  tipoRegistro = array [1..4] of registro;
  tipoVector = array [1..4] of string[4];
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

