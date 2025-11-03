//Лабораторная работа № 7

//Программа предназначена для учёта стран с разными типами государственного устройства:
//Президентская республика
//Парламентская республика
//Смешанная республика

//Для каждой страны программа хранит:
//название страны и континента;
//тип государственного устройства;
//специфические данные в зависимости от типа:
//президент: Ф.И.О. и средний доход;
//премьер: Ф.И.О. и население;
//смешанная: количество партий и «число спидоносных».

//Пользователь может вводить несколько стран, а потом просматривать введённые записи.

Program Region;
Uses CRT;

type
  Reg = object
    Country: String[20];
    Land: String[20];
    tip: string[20];
    nomer: integer;
  end;

  prez = object (Reg)
    FIO_Prez: String[50];
    Sr_Doh: Real;
    Procedure prez1;
    Procedure prez2;
  end;

  parl = object (Reg)
    FIO_Prem: String[50];
    Nas: LongInt;
    Procedure parl1;
    Procedure parl2;
  end;

  smes = object (Reg)
    Kol: Integer;
    Chis: LongInt;
    Procedure smes1;
    Procedure smes2;
  end;

const
  n = 50;

var
  a: array [1..n] of Reg;
  b: array [1..n] of Prez;
  c: array [1..n] of Parl;
  d: array [1..n] of Smes;
  s, us, abc: String;
  k, v, f: integer;
  ch: char;

{-------------------- Методы президентской формы --------------------}
procedure prez.prez1;
begin
  write('Введите Ф.И.О. президента: ');
  readln(FIO_Prez);
end;

procedure prez.prez2;
begin
  repeat
    write('Введите средний доход: ');
    readln(abc);
    val(abc, Sr_Doh, v);
    if (v <> 0) or (Sr_Doh < 0) then writeln('Ошибка ввода!!!');
  until (v = 0) and (Sr_Doh >= 0);
end;

{-------------------- Методы парламентской формы --------------------}
procedure parl.parl1;
begin
  write('Введите Ф.И.О. премьера: ');
  readln(FIO_Prem);
end;

procedure parl.parl2;
begin
  repeat
    write('Введите население: ');
    readln(abc);
    val(abc, Nas, v);
    if (v <> 0) or (Nas < 0) then writeln('Ошибка ввода!!!');
  until (v = 0) and (Nas >= 0);
end;

{-------------------- Методы смешанной формы --------------------}
procedure smes.smes1;
begin
  repeat
    write('Введите количество партий: ');
    readln(abc);
    val(abc, Kol, v);
    if (v <> 0) or (Kol < 0) then writeln('Ошибка ввода!!!');
  until (v = 0) and (Kol >= 0);
end;

procedure smes.smes2;
begin
  repeat
    write('Введите число спидоносных: ');
    readln(abc);
    val(abc, Chis, v);
    if (v <> 0) or (Chis < 0) then writeln('Ошибка ввода!!!');
  until (v = 0) and (Chis >= 0);
end;

{-------------------- Основная программа --------------------}
begin
  k := 0;
  ClrScr;
  writeln('Ввод данных стран. Для завершения ввода введите *');

  {------------------- Цикл ввода данных -------------------}
  repeat
    write('Нажмите Enter для ввода новой страны, * для окончания: ');
    ch := ReadKey;
    if ch = '*' then break;

    k := k + 1;
    a[k].nomer := k;

    write('Введите название страны: ');
    readln(a[k].Country);
    write('Введите название континента: ');
    readln(a[k].Land);

    { Ввод типа государственного устройства }
    f := 0;
    repeat
      write('Введите тип гос. устройства (президентская / парламентская / смешанная): ');
      readln(us);

      if us = 'президентская' then
      begin
        f := 1;
        a[k].tip := us;
        b[k].prez1;
        b[k].prez2;
      end
      else if us = 'парламентская' then
      begin
        f := 1;
        a[k].tip := us;
        c[k].parl1;
        c[k].parl2;
      end
      else if us = 'смешанная' then
      begin
        f := 1;
        a[k].tip := us;
        d[k].smes1;
        d[k].smes2;
      end
      else
        writeln('Ошибка ввода! Повторите.');
    until f = 1;

    writeln('Страна добавлена. Для продолжения нажмите Enter, для окончания — *');
  until ch = '*';

  {------------------- Цикл просмотра записей -------------------}
  writeln;
  writeln('Просмотр введённых записей. Для выхода введите *');
  repeat
    write('Введите номер записи: ');
    readln(abc);
    if abc = '*' then break;
    val(abc, f, v);

    if (v <> 0) or (f < 1) or (f > k) then
      writeln('Записи с таким номером не существует!')
    else
    begin
      writeln;
      writeln('Номер записи: ', a[f].nomer);
      writeln('Страна: ', a[f].Country);
      writeln('Континент: ', a[f].Land);
      writeln('Тип гос. устройства: ', a[f].tip);

      { Вывод всех полей в зависимости от типа }
      if a[f].tip = 'президентская' then
      begin
        writeln('Ф.И.О. президента: ', b[f].FIO_Prez);
        str(b[f].Sr_Doh:8:2, abc);
        writeln('Средний доход: ', abc);
      end
      else if a[f].tip = 'парламентская' then
      begin
        writeln('Ф.И.О. премьера: ', c[f].FIO_Prem);
        str(c[f].Nas, abc);
        writeln('Население: ', abc);
      end
      else if a[f].tip = 'смешанная' then
      begin
        str(d[f].Kol, abc);
        writeln('Количество партий: ', abc);
        str(d[f].Chis, abc);
        writeln('Число спидоносных: ', abc);
      end;
      writeln;
    end;
  until false;

  writeln('Работа программы завершена.');
end.
