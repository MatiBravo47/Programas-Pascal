//Ej 11) De una competencia de atletismo se tienen los siguientes datos
//del lanzamiento de jabalina:
//• Nombre del competidor (ordenado ascendentemente por este dato)
//• 1º lanzamiento
//• 2º lanzamiento
//Se pide:
//a) Cuántos competidores superaron con el 2º lanzamiento el 1º.
//b) Nombre del atleta que registró la mejor marca.
//c) Dado el Nombre de un atleta, informar la marca que realizó en
//ambos lanzamientos.
//d) Generar un nuevo arreglo con los participantes que pasaron a la
//semifinal (aquellos que superaron una marca X establecida en el
//1º ó 2º lanzamiento). Mostrar ambos arreglos
//archivo:
//ALE
//4 4
//CARLOS
//1 8
//MATIAS
//9 9
//TOMAS
//4 5
program Cap5Eje11;
Uses crt;
Type
  TVNom = Array[1..4]of string[6];
  TVNum = Array[1..8] of Byte;
Var
  N, M, s: Byte;
  VNom, semi: TVNom;
  VNum: TVNum;

Procedure LeeArch(Var N, M: Byte; Var VNom: TVNom; Var VNum: TVNum);
Var
  Arch: Text;
Begin
  N:= 0; //Indice competidores
  M:= 0; //Indice lanzamientos
  Assign(Arch,'Ejercicio511.txt'); Reset(Arch);
  While not eof (arch) do
    Begin
    N:= N + 1;
    M:= M + 1;
    Readln(Arch, Vnom[N]);
    Read(Arch, VNum[M]);
    M:= M + 1;
    Read(Arch, VNum[M]);
    Readln(Arch);//Salta linea
    end;
  close(Arch);
end;

Function Sup(VNum: TVNum; M: Byte): Byte; //Supera con el 2do lanzamiento
Var
  i, Superan, Ant: Byte;
Begin
  i:= 0;
  Superan:= 0;
  While (i <= M) do
    Begin
    i:= i + 1;
    Ant:= VNum[i];
    i:= i + 1;
    If (VNum[i] > Ant) then
      Superan:= Superan + 1;
    end;
  Sup:= Superan;
end;

Function Max(VNum: TVNum; VNom: TVNom; M: Byte): String; //Nombre mejor marca
Var
  i, Maximo: Byte;
Begin
  Maximo:= VNum[1]; //Asigno como maximo momentaneo al primer elemento
  For i:=2 to M do
    If (VNum[i] > Maximo) then
      Maximo:= i;  //Guarda indice del maximo
  Case Maximo OF
  1,2: Max:= VNom[1];
  3,4: Max:= VNom[2];
  5,6: Max:= VNom[3];
  7,8: Max:= VNom[4];
  end;
end;

Procedure Atleta(VNum: TVNum; VNom: TVNom; N: Byte); //Informa marca piloto
Var
  i: Byte;
  Atleta: String[6];
Begin
Writeln ('Ingrese nombre del atleta'); Readln(Atleta);
atleta:= upcase(atleta);
For i:=1 to N do
  Begin
    If (VNom[i] = atleta) then
      Begin
      Case i of
      1:Writeln(VNum[1],' ',VNum[2]);
      2:Writeln(VNum[3],' ',VNum[4]);
      3:Writeln(VNum[5],' ',VNum[6]);
      4:Writeln(VNum[7],' ',VNum[8]);
      end;
      end;
  end;
end;

procedure semifinales(n: byte; vnum: tvNum; vnom: tvnom ; var semi: tvnom; var s: byte);
var
  i, x, l, p: byte;
  sem: boolean;
begin
l:= 0;
s:= 0;
Writeln('Ingrese valor a superar'); Readln(X);
for i:=1 to n do //indice competidores
  begin
  sem:= false;
  for p:= 1 to 2 do //busca de a pares
    begin
    l:= l + 1;  //indice lanzamientos
    if (vnum[l] > x) then //si supera
      sem:= true;
    end;
  if sem then  //guarda en vector sem
    begin
    s:= s + 1;
    semi[s]:= vnom[i];
    end;
  end;
end;

procedure muestraVector(semi: tvnom; s: byte);
var
  i:byte;
begin
for i:=1 to s do
  write(semi[i],' ');
end;

//Programa principal
begin
  clrscr;
  LeeArch(N, M, VNom, VNum);
  Writeln('Superaron el primer lanzamiento ',Sup(VNum, M), ' personas');
  Writeln('El atleta que registro la mejor marca es ',Max(VNum, VNom, M));
  Atleta(VNum,VNom,N);
  semifinales(n, vnum, vnom, semi, s);
  Writeln('Superan la marca :');
  muestraVector(semi, s);
  Readln;
end.

