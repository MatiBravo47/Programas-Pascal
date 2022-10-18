program OrdenRecursividad ;
Type
  TV = array[1..12] of integer;
const
  vector: tv = (5,1,12,8,-1,3,10,9,14,0,15,7);

Procedure QuickSort(Var vector: tv; pri, ult: byte);
Var
  i, j: byte;
  aux, p: integer;
begin
i:= pri;
j:= ult;
p:= vector[(pri + ult) div 2] ;
Repeat
  while (i <= j) and (vector[i] < p) do
    i:= i + 1;
  while (i <= j) and (vector[j] > p) do
    j:= j - 1;
  if (i < j) then
    begin
    aux:= vector[i];
    vector[i]:= vector[j];
    vector[j]:= aux;
    end;
  i:= i + 1;
  j:= j - 1;
until (i >= j);
if (pri < j) then
  quickSort(vector, pri, j);
if (i < ult) then
  quicksort(vector, i, ult);
end;

Procedure Mezclar ( Var vector: TV; pri, medio, ult: byte);
Var
i, j, k, n, t: byte;
vector2:TV;
Begin
k:= 0;
i:= pri;
j:= medio + 1;
n:= ult - pri + 1;
while (i <= medio) and (j<= ult) do
  begin
  k:= k + 1;
  if (vector[i] < vector[j]) then
    begin
    vector2[k] := vector[i];
    i:= i + 1
    end
  else
    begin
    vector2[k] := vector[j];
    j:= j + 1;
    end
  end;
For t:= i to medio do
  begin
  k:= k + 1;
  vector2[k] := vector[t];
  end;
For t:= j to ult do
  begin
  k:= k + 1;
  vector2[k] := vector[t];
  end;
For k:= 1 to n do
  begin
  vector[pri]:= vector2[k];
  pri:= pri + 1;
  end;
end;

Procedure OrdenarMezcla(Var vector: TV; pri,ult: byte);
Var
  medio: byte;
begin
If (pri < ult) then
  begin
  medio:= (pri + ult) div 2;
  OrdenarMezcla(vector, pri, medio);
  OrdenarMezcla(vector, medio + 1, ult);
  Mezclar(vector, pri, medio, ult);
end
end;

procedure MuestraVector(vector:tv);
var
  i:byte;
begin
  for i:=1 to 12 do
  write(vector[i]:4);
end;

//Programa principal
begin
//QuickSort(vector,1,12);
OrdenarMezcla(vector,1,12);
muestraVector(vector);
readln;
end.

