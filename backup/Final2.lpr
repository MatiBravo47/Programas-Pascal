program Final2;
Procedure LeeArch(Var N:Byte;Var V:Tv);
Var
  Arch:Text;
Begin
N:=0;
Assign(Arch,'Candiu.txt');
Reset(Arch);
While not eof (Arch) do
  Begin
  N:=N+1;
  Read(Arch,V[N]);
  end;
Close(Arch);
end;
Procedure Incre();
Var
Begin
Cont:=1;
Max:=-999;
Ant:=V[1];
Posi:=1;
For i:=2 to N do
  Begin
  Pos:=V[i];
  If Pos>Ant then//Si es creciente
  Cont:=Cont+1; //Cuenta cantidad creciente
  If Pos<Ant then//Si no es creciente
    Begin
    If Cont>Max then
      Begin
      Max:=Cont;
      PosF:=i;
      Cont:=1;  //Reinicia cantidad
      Posi:=i;
    end
  Ant:=Pos
  end;



end;

//Programa principal
Begin
LeeArch(N,V);
end;

