Unit Prov;
interface
Procedure proverka;
implementation
Uses Typ, Writ;
Procedure proverka;
begin
  v := 1;
    Readln;
    Write('Введите диагноз: ');
    Readln(diagn);
    While v = 1 do begin
    Write('Введите минимальный возраст: ');
    Readln(vozr);
    val(vozr, a, v);
    if v = 1 then Writeln ('Возраст введён неправильно') else
    if (a<1) or (a>110) then begin
    Writeln('Возраст должен лежать в интервале от 1 до 110');
    v := 1;
    end;
    end;
    obrab(diagn, vozr);
  end;
Begin
end.