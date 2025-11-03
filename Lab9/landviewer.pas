Program ViewLandFile;

Uses
  CRT;

type
  { Тип государственного устройства }
  Gos_Us = (Prez, Parl, Smes);

  { Структура записи — совпадает с программой Region }
  Reg = record
    n: integer;
    Country: String[30];
    Land: String[30];
    case ustr: Gos_Us of
      Prez: (FIO_Prez: String[50]; Sr_Doh: Real);
      Parl: (FIO_Prem: String[50]; Nas: LongInt);
      Smes: (Kol: Integer; Chis: Integer);
  end;

var
  f: file of Reg;   { Типизированный файл }
  x: Reg;           { Одна запись }
  fname: string;    { Имя файла }
  count: integer;   { Счётчик записей }

begin
  ClrScr;
  Writeln('==========================================');
  Writeln('   ПРОГРАММА ПРОСМОТРА ФАЙЛА LAND.DAT');
  Writeln('==========================================');
  Writeln;

  { Запрашиваем имя файла (по умолчанию LAND.DAT) }
  Write('Введите имя файла (по умолчанию LAND.DAT): ');
  Readln(fname);
  if fname = '' then fname := 'LAND.DAT';

  { Пробуем открыть файл }
  {$I-}
  Assign(f, fname);
  Reset(f);
  {$I+}

  if IOResult <> 0 then
  begin
    Writeln('Ошибка: файл "', fname, '" не найден.');
    Writeln('Проверьте, что он находится в той же папке, что и программа.');
    Readln;
    Halt;
  end;

  Writeln;
  Writeln('Файл успешно открыт!');
  Writeln('------------------------------------------');
  count := 0;

  { Чтение и вывод записей }
  while not EOF(f) do
  begin
    Read(f, x);
    count := count + 1;
    Writeln('Запись №', x.n);
    Writeln('Страна: ', x.Country);
    Writeln('Континент: ', x.Land);

    case x.ustr of
      Prez:
        begin
          Writeln('Тип: Президентская республика');
          Writeln('Президент: ', x.FIO_Prez);
          Writeln('Средний доход: ', x.Sr_Doh:0:2);
        end;
      Parl:
        begin
          Writeln('Тип: Парламентская республика');
          Writeln('Премьер: ', x.FIO_Prem);
          Writeln('Население: ', x.Nas);
        end;
      Smes:
        begin
          Writeln('Тип: Смешанная форма правления');
          Writeln('Количество партий: ', x.Kol);
          Writeln('Число спидоносных: ', x.Chis);
        end;
    end;

    Writeln('------------------------------------------');
  end;

  if count = 0 then
    Writeln('Файл пуст — записей не найдено.');

  Close(f);

  Writeln;
  Writeln('Всего записей: ', count);
  Writeln('Просмотр завершён.');
  Writeln;
  Writeln('Нажмите любую клавишу для выхода...');
  ReadKey;
end.
