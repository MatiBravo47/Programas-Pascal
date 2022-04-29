program Cap3Eje14;
uses crt;
Var
  Bool:boolean;
  sum,x:real;
//El programa al ingresar un 0 termina de ejercutar o sino
//muestra por pantalla la primera suma en pasar el 100;
begin
  clrscr;
  bool:=false;
  sum:=0;
  Writeln('Ingrese un numero');
  readln(x);
  if x<>0 then
    repeat
        sum:=sum +x ;
        if sum>100 then
          bool:=true;
        readln(x);
     until (x=0) or bool;
  writeln('El resultado',Sum:5:2);
  readln;
end.
//Ingresa 0---> resultado:=0;
//Ingresa 70,40,20 ---> Resultado:=110;
//Ingresa 70,0---->Resultado:=70;
