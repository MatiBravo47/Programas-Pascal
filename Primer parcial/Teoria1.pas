program Teoria1;

//Tipos de datos

//Simples (mas usados)
//Reales
//Real

//Enteros (ordinal)
//Byte      -> 0 - 255
//Word      -> 0 - 65535
//Integer   -> -32768 - 32767

//char  (ordinal )

//boolean


//string

//Estructurados
//Array

//OPERADORES

//Aritmetico   * , / , MOD , DIV , + , -
//Alfanumerico  +
//Relacional    < , > , <= , >= , = , <>
//Logico        NOT,AND ,OR

//Funciones predefinidas por pascal


//Estructura de control selectiva

//nos permite evaluar una condicion y decidir cuales
//sentencias a ejecutar,entre dos alternativas excluyentes.

//if condicion then
//		 sentencia 1
//else
//    sentencia 2;

//Estructura de decision Generalizada(o multiple)

//Cuando en una estructura selectiva anidada, las distintas
//alternativas dependen del valor resultante de una expresion
//de tipo ordinal, se puede utilizar la estructura case.

//Case expresion of
//  Lista de constantes 1: sentencia1;
//  Lista de constantes 2: Sentencia2;
//  .
//  .
//  Listas de constantes n: sentenciasn;
//[else  (opcional, se ejecuta al no ejecutarse ninguna de las anteriores)
//  SentenciaK;]
//end;

//Estructura de control iterativa, de repeticion o ciclos

//Ciclo incondicional for
//For VC:= VI To VF do  (Ascendente)

//For VC:= VI downto VF do (Descendente)

//Ciclo while

//while expresion logica do
//			sentencia1;

//Archivo

//assign(arch,'nombrearchivo.txt')
//Enlaza la variable de tipo text con el archivo físico en el
//disco. Necesario para lectura/ escritura

//reset(arch): Prepara al archivo para la lectura, ubicándose al
//comienzo

//read/readln (arch,variable):
//Se leen del archivo los valores y se almacenan en las
//variables indicadas en la lista

//rewrite(arch)
//Prepara al archivo para la escritura, ubicándose al
//comienzo

//write/writeln(arch)
//Se graban en el archivo los valores contenidos en las
//variables de la lista.

//close
//cierra archivo(muy importante no olvidarse!)

//eof (end of file)
//Función booleana que detecta el fin del archivo

//Importe:
//verificar que el archivo no hay espacios en blanco
//no deseados ya que puede traer un problema no esperado.


//Ciclo Repeat

//Repeat
//  sentencia
//Until expresion logica;

//Funciones

//function NombreFun(par1:tipo1):tipo;
//begin
//end;

//procedimiento

//Procedure identificador(lista de parametros);
//var
//begin
//end;

//Capitulo 5

//arreglos

//type
//		tipoVector = array [1..10] of integer;
//var
//	 vec1: tipoVector;











begin
end.

