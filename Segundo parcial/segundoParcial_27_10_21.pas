//Un edificio de departamentos de N pisos registra información respecto a los
//ocupantes de cada departamento(son 6 departamentos por piso). Esta información
//se encuentra en un archivo de texto OCUPANTES.TXT. El archivo no está ordenado
//por ningún criterio y no se registra información de los departamentos
//desocupados. La primera línea contiene el valor de N, y desde la segunda
//línea cada una contiene los siguientes datos:
//• Piso (1..N)
//• Departamento (1..6)
//• Apellido del ocupante responsable (cadena de 12)
//• Categoría (cadena de 3, referencia en archivo CATEGORIAS.TXT)
//• Cantidad de ocupantes del departamento
//• Propietario (S/N)
//El archivo CATEGORIAS.TXT posee los siguientes datos:
//• Código (cadena de 3)
//• Descripción
//• Importe mensual expensas. Los propietarios tienen un 10% de descuento.
//Se pide leer los datos y almacenarlos en estructuras adecuadas. Luego,
//obtener e informar:
//a) Cuántos pisos tienen todos sus departamentos ocupados por más de 2 personas.
//b) Dada una categoría CATEG ingresada por teclado calcular lo que
//debería abonarse en concepto de expensas en un mes para dicha categoría.
//c) Generar un arreglo con los apellidos y pisos de los ocupantes que son
//propietarios de los departamentos identificados con un número (entre 1 y 6)
//ingresado por teclado. Luego mostrar el arreglo generado.
//Condición para aprobar: los siguientes subprogramas, necesarios para resolver
//el problema planteado, deben ser resueltos correctamente en forma recursiva:
//- Verificar si determinado piso tiene todos sus departamentos ocupados con
//más de 2 personas (para el inciso a)
//- Contar departamentos ocupados en todo el edificio para determinada categoría
//(discriminado en propietarios y no propietarios) (para el inciso b)
//Importante:
//• Los archivos deben recorrerse una sola vez.
//• La solución se debe implementar usando indefectiblemente registros,
//vectores y matrices

program segundoParcial_27_10_21;
uses crt;
const M = 6;
type
  ST3 = string[3];
  ST12 = string[12];
  tReg = record
    jugador : ST12;
    codigo : ST3;
    inscripto : char;
  end;
  tipoVector = array[1..M] of tReg;
  tipoMatriz = array[1..8,1..M] of byte;

procedure iniciaMatriz();
begin

end;

procedure leeArchOcupantes(var matriz:tipoMatriz;var vector:tipoVector;var n,m:byte);
var
  arch:text;
  i,j:byte;
begin
  assign(arch,'ocupantes.txt');reset(arch);
  readln(arch,n);
  iniciaMatriz();
  while not eof (arch) do
    begin
    readln(arch,i,j,vector[j].jugador,vector[j].codigo,matriz[i,j],blanco,vector[j].inscripto);
    end;
  close(arch);
end;


//programa principal
begin
  clrscr;
  readln;
end.

