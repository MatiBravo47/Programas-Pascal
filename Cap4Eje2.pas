program Cap4Eje2;
Function Factorial(N:Word):Integer ;
Var
  Fact:Integer;
  M:Word;
begin
If N=1 then
 Factorial:=0
 else
   Begin
   M:=N-1;  //2
   Fact:=N*(M);//3*2=6
   M:=M-1; //1
   While M>=1 do
     Begin
     Fact:=Fact*M;
     M:=M-1;
     end;
    Factorial:=Fact;
    end;
end;
Var
  N:Word;

begin
  Writeln('Ingrese un numero');Readln(N);
  Writeln('El factorial de ese numero es ' , Factorial(N));
  Readln;
end.
