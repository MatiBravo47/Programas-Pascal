program Registros;
uses crt;
type
//TregF=record  //Registro Fecha
//  mes,dia:byte;
//  anio:word;
//end;
st20=String[20];
TregP =record  //Regitro persona
  nombre:st20;
  edad:byte;
  peso:real;
  //pesos:array[1..5] of real;//el tipo de arreglo podria definirse antes
  //FechNac:TregF;//Dentro de registro persona,existe registro fecha
end;
tv=array[1..10] of TregP;//Arreglo de registros

//Lectura de un arreglo,no se conoce la cantidad de elementos:
Procedure leeVector(Var V:TV;Var n:byte);
var
  res:char;
  MaxElem:byte;
  peso,altura:real;
begin
MaxElem:=10;
n:=0;
Write('Ingresa datos(S/M)');Readln(Res);
While (Res='S') and (N<MaxElem) do
  begin
  n:=n+1;
  with V[N] do //en cada elemento del vector,guarda una persona.
    begin
    Writeln('Ingrese nombre');
    Readln(nombre);
    Writeln('Ingrese edad');
    Readln(edad);
    Writeln('Ingrese peso');
    Readln(Peso);
    //Writeln('Ingrese altura');
    //Readln(Altura);
    end;
  Write('Ingrese datos(S/N)');Readln(Res);
  end;
end;

//Consulta de peso a partir del nombre
Procedure Consulta(V:TV;N:byte;Nom:st20;var pesop:real);
Var
  j:byte;
begin
j:=1;
While (j<=N) and (V[j].nombre<>nom) do //Busca nombre
  j:=j+1;  //Si no coincide,suma indice
if j<=N then
  begin
  pesop:=V[j].Peso;
  Writeln('El peso es: ',Pesop:5:2);
  end
else
  pesop:=0;
end;

//Programa principal
Var
  Per:TregP;
  V:Tv;
  N:byte;
  nom:st20;
  pesoP:real;
begin
clrscr;
LeeVector(V,N);
Writeln('Ingrese nombre de la persona');
Readln(nom);
Consulta(V,N,Nom,pesoP);
readln;
end.

