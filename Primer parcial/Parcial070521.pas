//En un archivo se han grabado los datos de ingreso al Campus Virtual
//de un conjunto de alumnos, la identificación de los mismos está
//encriptada para mantener su anonimato. Se tiene de cada uno registrado:
//nombre, cantidad de días sin acceder y cantidad de accesos a cada una
//de las actividades (Foros, apuntes de la cátedra, y tareas).
//En cada línea hay:
//● Identificación encriptada
//● Cantidad de días sin acceder
//● Cantidad de accesos a Apuntes
//● Cantidad de accesos a Tareas
//● Cantidad de accesos a Foros
//Se pide leer el archivo y seleccionar solo los alumnos que no superan
//los X días desde el último acceso, almacenando sus datos en arreglos
//VNom, VApuntes, VTareas y VForos.
//- VNom contendrá el nombre
//- VApuntes, VTareas y VForos: contendrán las veces que accedió a
//cada actividad
//La identificación deberá desencriptarse, el nombre se obtiene con las
//letras mayúsculas de una cadena de longitud variable terminada con un
//punto.
//Luego, a partir de los arreglos obtenidos, calcular e informar:
//a) Para cada alumno, nombre, cantidad total de accesos y qué % de ellos
//corresponden a tareas.
//b) Dado un rango de accesosTotales[E1, E2]obtener promedio general de
//acceso a las tareas.
//c) Nombre del alumno que tuvo más accesos a las Tareas, sin haber
//accedido a los Foros (suponer único).
//Debe resolver cada item (lectura, a, b y c) mediante una función o
//procedimiento, según corresponda. Los valores de
//X, E1 y E2 se piden por teclado antes del respectivo cálculo
program Parcial070521;
uses crt, unit1;
type
  tvstring = array[1..10] of string;
  tvnum = array[1..10] of byte;
var
  n:byte;
  vnom:tvstring;
  vapuntes,vtarea,vforo:tvnum;

Procedure LeeArch(Var n:byte;var vnom:tvstring;var vapuntes,vtarea,vforo:tvnum );
var
  arch:text;
  x, dias:byte;
  car:char;
begin
  writeln('Ingrese cantidad de dias'); Readln(x);
  n:= 0;
  assign(arch,'parcial070521.txt'); reset(arch);
  while not eof (arch) do
    begin
    n:= n+1;
    read(arch,car);
    vnom[n]:='';
    while (car <> '.') do
      begin
      if car in ['A'..'Z'] then
        Vnom[n]:= vnom[n] + car;
      read(arch,car);
      end;
    readln(arch, dias, vapuntes[n], vtarea[n], vforo[n]);
    if x <= dias then
      n:= n - 1;
  end;
  close(arch);
end;
//a
procedure puntoa(n:byte;vapuntes,vtarea,vforo:tvnum);
var
  i: byte;
begin
  for i:=1 to N do
    writeln(vnom[i],':',vapuntes[i]+vtarea[i]+vforo[i],' accesos , Tareas ',(vtarea[i]*100/(vapuntes[i]+vtarea[i]+vforo[i])):4:2,'%')
end;

function masTareasSinForo(n:byte ;vforo,vtarea:tvnum; vnom:tvstring):string;
var
  max,i:byte;
  nombre:string;
begin
max:=0;
  for i:=1 to N do
    if vforo[i] = 0 then
      if vtarea[i] > max then
        begin
        max:= vtarea[i];
        nombre:=vnom[i];
        end;
masTareasSinForo:=Nombre;
end;

//Programa principal
begin
  leearch(n,vnom,vapuntes,vtarea,vforo);
  puntoa(n,vapuntes,vtarea,vforo);
  Writeln('C)',masTareasSinForo(n,vforo,vtarea,vnom));
  readln;

end.

