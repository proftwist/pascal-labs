PROGRAM TREUGOLNIK;  { Название программы - "Треугольник" }
USES CRT;            { Подключение модуля CRT для работы с экраном и клавиатурой }
VAR 
  A,B,C,S,P : REAL;  { Объявление вещественных переменных: стороны A,B,C, площадь S, полупериметр P }
  E:BOOLEAN;         { Логическая переменная E для проверки существования треугольника }
  ErrorCode: Integer; { Переменная для проверки ошибок ввода }
  InputStr: string;   { Строка для ввода данных }

{ Функция для безопасного ввода вещественного числа }
Function SafeReadReal(Prompt: string): Real;
var
  TempReal: Real;
begin
  repeat
    Write(Prompt);
    Readln(InputStr);
    Val(InputStr, TempReal, ErrorCode);
    if ErrorCode <> 0 then
    begin
      TextColor(Red);
      Writeln('Ошибка! Введите число.');
      TextColor(Green);
    end;
  until ErrorCode = 0;
  SafeReadReal := TempReal;
end;

BEGIN
//CLRSCR;             { Очистка экрана }
  Textcolor(green);   { Установка зеленого цвета текста }

  { Безопасный ввод сторон треугольника }
  A := SafeReadReal('Ввод стороны A.....');
  B := SafeReadReal('Ввод стороны B.....');
  C := SafeReadReal('Ввод стороны C.....');

  { Проверка существования треугольника: все стороны >0 и выполняется неравенство треугольника }
  IF (A>0) AND (B>0) AND (C>0) AND (A<(B+C)) AND (B<(A+C)) AND (C<(A+B)) THEN 
    E := TRUE
  ELSE 
    E := FALSE;

  { Если треугольник существует, вычисляем и выводим площадь }
  IF E = TRUE THEN 
  begin
    P := (A+B+C)/2;  { Вычисление полупериметра }
    
    { Проверка на отрицательное значение под корнем }
    if (P > 0) and ((P-A) > 0) and ((P-B) > 0) and ((P-C) > 0) then
    begin
      S := SQRT(P*(P-A)*(P-B)*(P-C));  { Вычисление площади по формуле Герона }
      
      textcolor(White);
      writeln('................................................................................');
      
      textcolor(Yellow);
      WRITELN('Площадь треугольника: ', S:0:2);  { Вывод площади }
      
      textcolor(White);
      writeln('................................................................................');
    end
    else
    begin
      textcolor(Red);
      Writeln('Ошибка: невозможно вычислить площадь треугольника');
    end;
  end
  else
  begin
    { Если треугольник не существует, выводим сообщение об ошибке }
    textcolor(Red);
    writeln('Треугольник не существует!');
    Writeln('Условия существования треугольника:');
    Writeln('1. Все стороны должны быть > 0');
    Writeln('2. Каждая сторона должна быть меньше суммы двух других');
  end;

  textcolor(LightGray);
  Writeln;
  WRITELN('Нажмите Enter для выхода...');
  READLN;  { Ожидание ввода пользователя перед завершением программы }
END.