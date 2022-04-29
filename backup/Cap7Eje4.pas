program Cap7Eje4;
Type
  TVres = array[1..10] of char;
  TR = Record
    Nombre:String;
    Puntos,PJ:byte;
    Resultados:TVres;
  end;
  TV = array[1..10] of TR;

Function Puntaje(car:char):byte;
begin
  case car of
  'G':Puntaje:=3;
  'E':Puntaje:=1;
  'P':Puntaje:=0;
  end;
end;

procedure LeerArch(Var Equipos:TV;Var N:byte);
Var
  arch:text;
  car:char;
  i:byte;
begin
  N:=0;
  Assign(arch,'Datos74.txt');reset(arch);
  while not eof(arch) do
  begin
    N:=N+1; i:=1;
    Equipos[N].Puntos:=0;
    repeat
      read(arch,car);
      Equipos[N].Nombre:=Equipos[N].Nombre + car;
    until car = ' ';
    read(arch,Equipos[N].PJ);
    while i <= Equipos[N].PJ do
    begin
      read(arch,car);
      if car <> ' ' then
      begin
        Equipos[N].Resultados[i] := car;
        Equipos[N].Puntos:= Equipos[N].Puntos + Puntaje(car);
        i:=i+1;
      end;
    end;
    readln(arch);
  end;
  close(arch);
end;

Procedure Muestra(Equipos:TV;N:byte);
Var
  i:byte;
begin
  for i:=1 to N do
    writeln(Equipos[i].Nombre:15,Equipos[i].Puntos:10);
end;

procedure Punteros(Equipos:TV;N:byte);
Var
  i,Max:byte;
begin
  Max:=0;
  for i:=1 to N do
    if Equipos[i].Puntos > Max then
      Max:= Equipos[i].Puntos;
  for i:=1 to N do
    if Equipos[i].Puntos = Max then
      writeln(Equipos[i].Nombre);
end;

Function Porcentaje(Equipos:TV;N:byte):real;
Var
  i,j,cont:byte;
begin
  cont:=0;
  for i:=1 to N do
  begin
    j:=1;
    while (j<=Equipos[i].PJ) and (Equipos[i].Resultados[j]<>'P') do
      j:=j+1;
    if j > Equipos[i].PJ then
      cont:=cont+1;
  end;
  Porcentaje:= cont*100/N;
end;

Var
  Equipos:TV;
  N:byte;
begin
  LeerArch(Equipos,N);
  writeln('Equipos':15,'Puntos':13); writeln();
  Muestra(Equipos,N); writeln();
  writeln('El/Los puntero/s es/son:');
  Punteros(Equipos,N);writeln();
  writeln('El porcentaje de los que no perdieron un partido con respecto al total es: ',Porcentaje(Equipos,N):2:2,'%');
  readln();
end.

