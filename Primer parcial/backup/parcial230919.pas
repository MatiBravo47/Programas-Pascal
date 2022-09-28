//Un banco cuenta con la informacion de los accesos a su homebanking
//en el archivo  Bank.txt. De cada acceso se conoce:
//Usuario (Secuencia de caracteres, letras y digitos, comenzando con un digito)
//Ip origen (12 digitos con puntos, ej 192.168.001.100)

//Dicha informacion esta grabada en un archivo de texto, en cada linea
//una conexion con el siguiente formato:
//xxxxxxxxxxxxxxxxblancoxxx.xxx.xxx.xxxxxxxxxxxxxxxxblancoxxx..blanco999

//Se puede identificar segun como comienza la direccion IP desde
//donde fueron realizados los accesos:
//192 Red interna del banco - 276 Desde Mar del plata - 381 Desde argentina
//-otras internacional

//Por seguridad, el usuario esta encriptado dentro del archivo. Para
//desencriptarlo, por cada numero x que aparece se deben considerar las x
//letras que le siguen y descartar el resto hasta el proximo numero
//Ej
//1JEF3UANETE1ZYM --> JUANZ

//Se pide desarrollar un programa eficaz, eficiente y claro
//que lea el archivo(una sola vez) y almacene en estructuras
//adecuadas el Usuario desencriptado junto a la informacion
//necesaria para luego calcular e informar:
//a)Para un determinado usuario (ingresa por teclado desencriptado)
//su tiempo de acceso.
//b)Tiempo promedio de accesos internacionales que se realizaron
//c)Usuario con origen en la red interna del banco con mayor tiempo de conexion
//
//Obtenemos estos resultados:
//a)para el usuario SARA su tiempo de acceso de 250 segundos
//b)200
//c)PIA (400)
//IMPORTANTE!
//La escritura y los items a, b,c deberan desarrollarse mediante
//subprogramas adecuados,correctamente parametrizados.
//NO indentar el codigo con mas de 4 espacios por nivel de indentacion
//Los datos del ejemplo son ilustrativos para realizar una ejecucion
//con los mismos, NO deben figurar como constantes en el codigo de desarrollado

program parcial230919;
uses crt;
type
  string10 = string[10];
  string3 = string[3];
  tvString10 = array[1..50] of string10;
  tvString3  = array[1..50] of string3;
  tvWord = array[1..50] of word;

procedure leeArch(var vNombres: tvString10; var Vredes: tvString3; var vTiempos: tvWord; var n: byte);
var
  arch: text;
  j: byte;
  car, i, aux: char;

begin
assign(arch,'bank.txt'); reset(arch);
j:=0;
while not eof (arch) do
  begin
  read(arch,car);
  j:=j + 1;
  vNombres[j]:=''; //inicializa nombre
  while (car <> ' ') do
    begin
    if (car in ['1'..'9']) then  //si es un numero
      begin
      aux:= car;
      for i:= '1' to aux do
        begin
        read(arch, car);
        vNombres[j]:= vNombres[j] + car;
        end
      end
    else
      read(arch, car);
    end;
  vRedes[j]:='';
  for i:='1'to '3' do
    begin
    read(arch, car);
    vRedes[j]:= vRedes[j] + car;
    end;
  while (car <> ' ') do
    read(arch, car);
  read(arch, vTiempos[j]);
  readln(arch);
  end;
close(arch);
n:= j;
end;

function buscaUsuario(usuario: string10; vNombres: tvString10; tiempos: tvWord; n: byte):word;
var
  j: byte;
begin
j:=1;
while (j <= N) and (usuario <> vNombres[j]) do
  j:= j + 1;
if (j > N) then
  buscaUsuario:= 0
else
  BuscaUsuario:= tiempos[j];
end;

function promedioInt(vRedes:tvString3; vTiempos:tvWord; n: byte ): real;
var
  i, j: byte;
  aux: word;
begin
aux:=0;
j:=0;
for i:= 1 to N do
  begin
  if (vRedes[i] <> '192') and (vRedes[i] <> '276') and (vRedes[i] <> '381') then
    begin
    aux:= aux + vTiempos[i];
    j:= j + 1;
    end;
  end;
if (j = 0) then
  promedioInt:= 0
else
  promedioInt:= aux / j ;
end;

function maxInterna(vNombres:tvString10; vRedes: tvString3; vTiempos:tvWord; n:byte): string10;
var
  auxNombre: string10;
  aux: word;
  i: byte;
begin
aux:=0;
auxNombre:= '***';
for i:=1 to N do
  begin
  if (vRedes[i] = '192') and (vTiempos[i] > aux) then
    begin
    aux:= vTiempos[i];
    auxNombre:= vNombres[i];
    end;
  end;
maxInterna:= auxNombre;
end;



var
  vNombres:tvString10;
  vRedes: tvString3;
  vTiempos: tvWord;
  usuario, auxInterna: string10;
  n: byte;
  auxUsuario: word;
  auxPromedio: real;

//programa principal
begin
clrscr;
leeArch(vNombres, vRedes, vTiempos, N);
writeln('Ingrese el nombre del usuario que desea buscar');
Readln(usuario);
auxUsuario :=buscaUsuario(usuario, vNombres, vTiempos, N);
if (auxUsuario <> 0) then
  writeln('El tiempo promedio de accesos internacionales fue de ',auxPromedio:5:2)
else
  writeln('Usuario no encontrado');
auxPromedio:= promedioInt(vRedes, vTiempos, N);
if (auxPromedio <> 0) then
  writeln('El tiempo promedio de accesos internacionales fue de',auxPromedio:5:2)
else
  writeln('No aparecieron vuelos internacionales en el archivo');
auxInterna:= maxInterna(vNombres, vRedes, vTiempos, N);
if (auxInterna <> '***') then
  writeln('El usuario en la red interna con mayor tiempo fue ',auxInterna)
else
  writeln('No hay usuarios usando la red interna en el archivo');
  readln;
end.

