(*               Лабораторная работа 7 студента 03-ИЭ Бычко В.А. *)

//Запрашивает у пользователя два массива чисел.
//Для первого массива считает, сколько положительных элементов.
//Для второго массива — сколько отрицательных элементов.
//Выводит оба массива и количество найденных элементов (или сообщение, что таких нет).

Program obrab;
 type mas=array[1..100] of real;
 var x,y :mas;
 m,n :integer;
 kolich :integer;
i:integer;
 L:boolean;
  Procedure input (var k :integer;
                  var F :mas);
  Begin
  writeln('Ведите количество элементов'); readln(k);
  for i:=1 to k do
   begin
   writeln ('Введите элемент массива'); readln (F[i]);
   end;
  end;

  Procedure vivod (k :integer;
                  F :mas);
  Begin
  for i:=1 to k do
   begin
   write (F[i]:10:2);
   end;
  end;

  Function lich (k:integer;
                  F :mas;
                  L :boolean):integer;
  var kol:integer;
  Begin
  kol:=0;
  for i:=1 to k do
   begin
   if L=true then begin  if f[i]>0 then kol:=kol+1;  end
    else     if f[i]<0 then kol:=kol+1;
   end;
   lich:=kol;
 end;

Begin
 input(n,x);
 input(m,y);
 L:=true;
 kolich:=lich(n,x,L);
 writeln ('Вывожу элементы первого массива');
 vivod(n,x);
 writeln (' Кол-во полож.', kolich:3);
 if kolich=0 then writeln('Пол. элем отсутствуют');
 L:=false;
 kolich:=lich(m,y,L);
 writeln ('Вывожу элементы второго массива');
 vivod(m,y);
 writeln (' Кол-во отр.', kolich:3);
 if kolich=0 then writeln('Отр. элем отсутствуют');
end.