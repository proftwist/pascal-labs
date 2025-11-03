Program Region;

Uses
  CRT;

{------------------------------------------------------------}
{ Типы данных                                                }
{------------------------------------------------------------}
type
  Gos_Us = (Prez, Parl, Smes);

  Reg = record
    n: integer;
    Country: String[30];
    Land: String[30];
    case ustr: Gos_Us of
      Prez: (FIO_Prez: String[50];
             Sr_Doh: Real);
      Parl: (FIO_Prem: String[50];
             Nas: LongInt);
      Smes: (Kol: Integer;
             Chis: Integer);
  end;

{------------------------------------------------------------}
{ Глобальные переменные                                      }
{------------------------------------------------------------}
var
  land: file of Reg;
  s, us, abc: String;
  x: Reg;
  k, v: integer;
  ch: char;

{------------------------------------------------------------}
{ Основная программа                                         }
{------------------------------------------------------------}
begin
  Assign(land, 'LAND.DAT');
  ClrScr;

  repeat
    ClrScr;
    Writeln('==========================================');
    Writeln('          СИСТЕМА УЧЁТА СТРАН');
    Writeln('==========================================');
    Writeln('1 - Ввод и редактирование записей');
    Writeln('2 - Просмотр записей');
    Writeln('0 - Выход');
    Writeln('------------------------------------------');
    Write('Ваш выбор: ');
    Readln(s);

    {------------------------------------------------------------}
    { Режим 1: редактирование записей                            }
    {------------------------------------------------------------}
    if s = '1' then
    begin
      {$I-}
      Reset(land);
      {$I+}
      if IOResult <> 0 then
        Rewrite(land);

      { Определяем номер следующей записи }
      if FileSize(land) = 0 then
        k := 0
      else
      begin
        Seek(land, FileSize(land)-1);
        Read(land, x);
        k := x.n;
      end;

      repeat
        ClrScr;
        k := k + 1;
        x.n := k;

        Writeln('------------------------------------------');
        Writeln('Ввод данных о стране №', x.n);
        Writeln('------------------------------------------');
        Write('Введите название страны: ');
        Readln(x.country);

        Write('Введите название континента: ');
        Readln(x.land);

        {------------------ Ввод типа гос. устройства ------------------}
        repeat
          Writeln;
          Writeln('Введите тип государственного устройства:');
          Writeln('1 - президентская');
          Writeln('2 - парламентская');
          Writeln('3 - смешанная');
          Write('Ваш выбор: ');
          Readln(us);

          if us = '1' then
          begin
            x.ustr := Prez;
            Write('Введите Ф.И.О. президента: ');
            Readln(x.fio_prez);
            repeat
              Write('Введите средний доход: ');
              Readln(abc);
              Val(abc, x.sr_doh, v);
              if v <> 0 then Writeln('Ошибка! Введите число.');
            until v = 0;
          end
          else if us = '2' then
          begin
            x.ustr := Parl;
            Write('Введите Ф.И.О. премьера: ');
            Readln(x.fio_prem);
            repeat
              Write('Введите население: ');
              Readln(abc);
              Val(abc, x.nas, v);
              if v <> 0 then Writeln('Ошибка! Введите целое число.');
            until v = 0;
          end
          else if us = '3' then
          begin
            x.ustr := Smes;
            repeat
              Write('Введите количество партий: ');
              Readln(abc);
              Val(abc, x.kol, v);
              if v <> 0 then Writeln('Ошибка! Введите целое число.');
            until v = 0;
            repeat
              Write('Введите число спидоносных: ');
              Readln(abc);
              Val(abc, x.chis, v);
              if v <> 0 then Writeln('Ошибка! Введите целое число.');
            until v = 0;
          end
          else
          begin
            Writeln('Некорректный выбор! Введите 1, 2 или 3.');
            us := '';
          end;
        until (us = '1') or (us = '2') or (us = '3');

        { Запись данных в конец файла }
        Seek(land, FileSize(land));
        Write(land, x);
        Writeln;
        Writeln('Запись успешно добавлена!');

        Writeln;
        Writeln('Нажмите [Enter] для добавления новой записи, [Esc] — для выхода.');
        ch := ReadKey;
      until ch = #27;

      Close(land);
    end

    {------------------------------------------------------------}
    { Режим 2: просмотр записей                                  }
    {------------------------------------------------------------}
    else if s = '2' then
    begin
      {$I-}
      Reset(land);
      {$I+}
      if IOResult <> 0 then
        Writeln('Файл LAND.DAT не найден! Сначала добавьте записи.')
      else
      begin
        ClrScr;
        Writeln('------------------------------------------');
        Writeln('СПИСОК СТРАН:');
        Writeln('------------------------------------------');
        while not EOF(land) do
        begin
          Read(land, x);
          Writeln('Страна: ', x.Country);
          Writeln('Континент: ', x.Land);
          case x.ustr of
            Prez:
              begin
                Writeln('Тип: Президентская');
                Writeln('Президент: ', x.FIO_Prez);
                Writeln('Средний доход: ', x.Sr_Doh:0:2);
              end;
            Parl:
              begin
                Writeln('Тип: Парламентская');
                Writeln('Премьер: ', x.FIO_Prem);
                Writeln('Население: ', x.Nas);
              end;
            Smes:
              begin
                Writeln('Тип: Смешанная');
                Writeln('Количество партий: ', x.Kol);
                Writeln('Число спидоносных: ', x.Chis);
              end;
          end;
          Writeln('------------------------------------------');
        end;
        Close(land);
      end;

      Writeln;
      Writeln('Нажмите любую клавишу для возврата в меню...');
      ReadKey;
    end;

  until s = '0';

  ClrScr;
  Writeln('Работа программы завершена. До свидания!');
  Readln;
end.
