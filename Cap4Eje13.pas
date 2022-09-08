//Ej 13) Desarrollar un procedimiento que dada una Hora Inicial
//(horas, minutos, segundos) y unos segundos transcurridos, devuelva
//la Hora Final (en horas, minutos y segundos).
program Cap4Eje13;
Uses crt;
Var
  H, M, S: byte;
Procedure Horafinal(H, M, S: byte);
var
  SegTotal, st: word;
  horaF, mFinal, sFinal: byte;
begin
  Writeln('Ingrese segundos transcurridos'); Readln(ST);
  SegTotal:= S + ST;
  horaF:= H;
  mFinal:= M;
  sFinal:= S;
  If (segTotal >= 3600 )then //si es mayor a una hora
     begin
     horaF:= H + (segTotal div 3600);
     if (horaF >= 24) then
        horaF := horaF mod 24;
     segTotal:= segTotal mod 3600;
     end;
  If (segTotal > 60 ) then
     begin
     mFinal:= M + (segTotal div 60);
     segTotal:= segTotal mod 60;
     end;
  if (segTotal < 60) then
     sFinal:= S + segTotal;
Writeln('La hora final es ',HoraF,':',mFinal,':',sFinal);
end;
//PROGRAMA PRINCIPAL
Begin
clrscr;
Writeln('Ingrese hora (HH)'); Readln(H);
Writeln('Ingrese minutos (MM)'); Readln(M);
Writeln('Ingrese segundos (SS)'); Readln(S);
HoraFinal(H, M, S);
Readln;
end.

