//Лабораторная работа № 2. Вычисление факториала. 

Program pt;
var x,f: SmallInt;
    z: integer;
Begin
 writeln ('Введите число, для которого нужно посчитать факториал'); Readln (x);
 f:=1;
 for z:=1 to x do
 f:=f*z;
 writeln (f);
End.
