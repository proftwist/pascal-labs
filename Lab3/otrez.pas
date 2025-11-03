Program pt;
 (*Лабраторная работа 3 вариант 3 Бычко В.А. 03-ИЭ*)
 
//Программа проверяет для ряда значений x, лежащих между xнач и xкон,
//расстояние до точки (x₂, y₂) и определяет,
//лежит ли точка (x, 0) на одной прямой с двумя другими 
//точками — (x₁ = x, y₁) и (x₂, y₂).
 
 var x,n,xnach,xcon,x2,y1,y2,L :real;
     komment :string;
 begin
   {ввод данных}
   writeln ('ввод  Х начальное'); readln (xnach);
   writeln ('ввод  Х конечное');  readln (xcon);
   writeln ('ввод y1'); readln (y1);
   writeln ('ввод x2'); readln (x2);
   writeln ('ввод y2'); readln (y2);
   writeln ('*******************************************');
   writeln ('*    x       * расстояние *  комментарий  *');
   writeln ('*******************************************');
   n:=(xcon-xnach)/20;
   x:=xnach;
   while x<=xcon do begin
   {анализ данных}
   L:=sqrt( sqr(x2-x) + sqr(y2-y1) );
   if ((0-y1)/(y2-y1))=((0-x)/(x2-x)) then begin
   komment:=('лежат');
   end
   else komment:=('не лежат');
   {блок вывода}
   writeln ('* ',x:10:4,' *  ',L:9:3,' *  ',komment:12,' *');
   x:=x+n;
   end;
   writeln ('*******************************************');
  readln
end.