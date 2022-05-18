program OrdenRecursividad ;
Type
  TV=array[1..12] of integer;
const
  a:tv=(5,1,12,8,-1,3,10,9,14,0,15,7);
Procedure QuickSort(Var a:tv;pri,ult:byte);
Var
  i,j:byte;
  aux,p:integer;
begin
i:=pri;
j:=ult;
p:=a[(pri+ult)div 2] ;
Repeat
  while (i<=j) and (a[i]<p) do
    i:=i+1;
  while (i<=j) and (a[j]>p) do
    j:=j-1;
  if i<j then
    begin
      aux:=a[i];
      a[i]:=a[j];
      a[j]:=aux;
    end;
  i:=i+1;
  j:=j-1;
until i>=j ;
if pri<j then
  quickSort(a,pri,j);
if i<ult then
  quicksort(a,i,ult);
end;

Procedure Mezclar ( Var a:TV; pri, medio, ult: byte);
Var
i, j,k, n, t : byte;
b:TV;
Begin
k:=0; i:= pri;
j:= medio +1;
n:= ult - pri + 1;
while (i <= medio) and (j<= ult) do
begin
k:=k+1;
if a[i] < a[j] then
  begin
  b[k] := a[i]; i:= i + 1
  end
else
  begin
  b[k] := a[j];
  j:= j + 1;
  end
end;
For t:= i to medio do
  begin
  k:=k+1;
  b[k] := a[t];
  end;
For t:= j to ult do
  begin
  k:=k+1;
  b[k] := a[t];
  end;
For k:= 1 to n do
  begin
  a[pri]:=b[k];
  pri:=pri + 1;
  end;
end;
Procedure OrdenarMezcla(Var a:TV; pri,ult:byte);
Var
medio: byte;
begin
If pri < ult then
begin
medio:= (pri + ult) div 2;
OrdenarMezcla(a, pri, medio);
OrdenarMezcla(a, medio + 1, ult);
Mezclar(a, pri, medio, ult);
end
end;


//Programa principal
Var
  i:byte;
  k: byte;
begin
QuickSort(a,1,12);
for i:=1 to 12 do
  write (a[i]:4);
OrdenarMezcla(a,1,12);
For k:= 1 to 12 do
  writeln (a[k]:4);
readln;
end.

