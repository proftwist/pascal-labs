Unit Spis;
interface
Procedure obr;
implementation
Uses Typ;
Procedure obr;
begin
  Writeln(chr(201) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(203)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(203)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(203)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(203)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
   + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205)+ chr(205) + chr(205)+ chr(205) + chr(187));
  Writeln(chr(186) + '      Фамилия       '+ chr(186)
  + ' Пол ' + chr(186)+ 'Возраст'+ chr(186)
  + '       Город       ' + chr(186) + '      Диагноз      '+ chr(186));
  Writeln(chr(204) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(206)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(206)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(206)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(206)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
   + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205)+ chr(205) + chr(205)+ chr(205) + chr(185));
  for j := 1 to k do
  begin
    strok := '';
    x := dan[j];
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
    dlin := Length(x.diag);
    strok := strok + chr(186) + ' ' + X.diag;
    for i := 1 to 18 - dlin do strok := Strok + ' ';
    strok := strok + chr(186);
    WRITEln (strok);
  end;
    Writeln(chr(200) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(202)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(202)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(202)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(202)+ chr(205)
  + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
   + chr(205) + chr(205) + chr(205) + chr(205) + chr(205) + chr(205)+ chr(205)
  + chr(205)+ chr(205) + chr(205)+ chr(205) + chr(188));
End;
Begin
end.