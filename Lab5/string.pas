//Лабораторная работа № 5

//Программа:
//Просит пользователя ввести несколько строк (до 10).
//Для каждой строки меняет местами первое и последнее слово.
//Выводит исходный и изменённый вариант.

Program zamstring;
 type mas=array[1..10] of string;
 var F:mas; i,n:integer; T:string;
 Function zamena(F:string): string;
      var  fpozit,D,Q: integer;
           sper,sposled:string;
 Begin
 fpozit:=Pos(' ',F);
 sper:=Copy(F,1,fpozit);
 D:=Length(F);
 Q:=D;
 while F[Q]<>(' ') do Q:=Q-1;
 sposled:=Copy(F,Q+1,D-Q+1);
 Delete(F,Q,D-Q+1);
 Delete(F,1,fpozit);
   Insert(' ',F,1);
 Insert(sposled,F,1);
 D:=Length(F);
   Insert(' ',sper,1);
 Insert(sper,F,D+1);
 zamena:=F;
 End;

 Begin
 writeln ('Введите количество строк'); readln(n);
 for i:=1 to n do
 begin
  writeln ('Вводите строку'); readln(F[i]);
 end;
 for i:=1 to n do
 begin
 writeln(' ');
 writeln('Вывожу исходный текст');
 writeln (F[i]);
 T:=zamena(F[i]);
 writeln(' ');
 write(' ':20);
 writeln('Вывожу конечный текст');
 write(' ':20);
 writeln(T);
 writeln;
 end;
 End.