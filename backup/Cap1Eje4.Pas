program Cap1Eje4;
Uses crt;
Const
  LimInf=10;
  LimSup=255;
Var
  X,Y:Real;
  N,M:Integer;
  Cadena:String;
  car:char;
  Mayus,Cumple,Ok:Boolean;

begin
Cumple:=True;
N:=20;
M:=1;
X:=5.8;
Y:=12.7;
Car:='B';
  Clrscr;
  //Punto 1)
  //redundante
  Mayus:=Upcase(car)=car;
  //Bien semantica y sintacticamente
  Cumple:= (X<=LimInf) and (x>=LimSup);
  //Mal sintacticamente
  //Mayus:= 'A'=Car or car='B' or true;
  //Mal Sintacticamente
  Cumple:= Length(Cadena)> LimSup;
  //Mal semanticamente
 // M:= N/LimInf;
  //Mal sintacticamente
 // Ok:= LimInf < M < LimSup;
  //
  Ok:=Odd (n* (n-1));

  //Punto 2)
  Ok:= Not cumple or (N>LimInf) and (X<>Y);
  X:=N/3 + M*Y;
  Mayus:= Cumple or (Car='S') and (odd(N));
  N:=Trunc (X) + LimInf;
  readln;
end.

