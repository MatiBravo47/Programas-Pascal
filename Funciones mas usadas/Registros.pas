program Registros;
uses crt;
type
//TregF=record  //Registro Fecha
//  mes,dia:byte;
//  anio:word;
//end;
st20 = String[20];
TregP = record  //Regitro persona
  nombre: st20;
  edad: byte;
  peso: real;
  //pesos:array[1..5] of real;//el tipo de arreglo podria definirse antes
  //FechNac:TregF;//Dentro de registro persona,existe registro fecha
end;
tv = array[1..10] of TregP;//Arreglo de registros

//Lectura de un arreglo,no se conoce la cantidad de elementos:
Procedure leeVector(Var vector: TV; Var n:byte);
var
  respuesta: char;
  MaxElem: byte;
  peso, altura: real;
begin
MaxElem:= 10;
n:= 0;
Write('Ingresa datos(S/M)'); Readln(Respuesta);
While (respuesta = 'S') and (N < MaxElem) do
  begin
  n:= n + 1;
  with vector[n] do //en cada elemento del vector,guarda una persona.
    begin
    Writeln('Ingrese nombre'); Readln(nombre);
    Writeln('Ingrese edad'); Readln(edad);
    Writeln('Ingrese peso'); Readln(Peso);
    //Writeln('Ingrese altura');
    //Readln(Altura);
    end;
  Write('Ingrese datos(S/N)'); Readln(respuesta);
  end;
end;

//Consulta de peso a partir del nombre
Procedure Consulta(vector: TV; N: byte; nombreIngresado: st20; var peso: real);
Var
  j: byte;
begin
j:= 1;
While (j <= N) and (vector[j].nombre <> nombreIngresado) do //Busca nombre
  j:= j + 1;  //Si no coincide,suma indice
if (j <= N) then
  begin
  peso:= vector[j].Peso;
  Writeln('El peso es: ', Peso:5:2);
  end
else
  peso:= 0;
end;

//Programa principal
Var
  Per: TregP;
  vector: Tv;
  N: byte;
  nombreIngresado: st20;
  peso: real;
begin
clrscr;
LeeVector(vector, N);
Writeln('Ingrese nombre de la persona'); Readln(nombreIngresado);
Consulta(vector, N, nombreIngresado, peso);
readln;
end.

