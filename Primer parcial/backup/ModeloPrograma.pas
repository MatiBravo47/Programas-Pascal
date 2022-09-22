//Modelo programa
program ModeloPrograma;

Uses crt;

Const
  constante = 1;

Type
  TV = array[1..50] of word;

function nombreFuncion(variable3: tipoVariable): tipoVariable;
var
  variableLocal: tipoVariableLocal;
begin

  nombreFuncion():=    ;
end;

Procedure nombreProcedure(variable3: tipoVariable; var Variable4: tipoVariable);
var
  variableLocal: tipoVariableLocal;
begin
end;

Var
  variableGlobal  : tipoVariable;
  variable2Global : tipoVariable2;

//programa principal
begin
  clrscr;
  nombreProcedure(variableGlobal, variable2Global);
  nombreFunction(variableGlobal, variable2Global);
  readln;
end.

