Program Krank;
Uses Crt, Typ, Writ, Spis, Prov, Rea, Sort;
Begin
  ClrScr;
  Re;
{ Sortir;}
  us:=1;
  while us = 1 do begin
  Writeln;
  Write('Введите действие (1 - просмотреть весь список, 2 - ввести запрос):');
  Read(n);
  Writeln;
  if n = 1 then obr
  Else if n >= 2 then proverka;
  Writeln;
  Readln;
  Write('Хотите выйти из программы? (1 - да, 2 - нет): ');
  Readln(exit);
  if exit = '1' then us := 0;
  end;
end.