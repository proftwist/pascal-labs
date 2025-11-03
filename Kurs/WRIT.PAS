Unit Writ;
interface
Procedure obrab(diagn, vozr: String);
implementation
Uses Typ, Sort;
Procedure obrab(diagn, vozr: String);
begin
sortir;
val(vozr, v, a);
kontrol:=0;
sum := 0;
  Writeln(chr(201) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(187));
  strok := '';
    dlin := Length(diagn);
    strok := chr(186) + '                         ' + diagn;
    for i := 1 to 29 - dlin do strok := Strok + ' ';
    Writeln(strok + chr(186));
  Writeln(chr(204) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(203)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(203)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(203)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(185));
  Writeln(chr(186) + '      Фамилия       '+ chr(186)
  + ' Пол ' + chr(186)+ 'Возраст'+ chr(186)
  + '       Город       ' + chr(186));
  Writeln(chr(204) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(206)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(206)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(206)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(185));
  for j := 1 to k do
    begin
    sum := sum + 1;
    x := dan [j];
     if (diagn = x.diag) and (v<  x.voz) then
  begin
    strok := '';
    dlin := Length(x.fam);
    strok := chr(186) + ' ' + X.fam;
    for i := 1 to 19 - dlin do strok := Strok + ' ';
    strok := strok + chr(186) + '  ' + X.pol + '  ';
    str(x.voz, vo);
    dlin := Length(vo);
    strok := strok + chr(186) + '   ' + vo;
    for i := 1 to 4 - dlin do strok := Strok + ' ';
    dlin := Length(x.gorod);
    strok := strok + chr(186) + ' ' + X.gorod;
    for i := 1 to 18 - dlin do strok := Strok + ' ';
    strok := strok + chr(186);
    WRITEln (strok);
 end
    else kontrol := kontrol + 1;
    end;

    Writeln(chr(200) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(202)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(202)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(202)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(188));
    if kontrol = sum then writeln('Нет данных');
End;
Begin
end.