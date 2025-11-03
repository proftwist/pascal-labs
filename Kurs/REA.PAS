Unit Rea;
interface
procedure Re;
implementation
Uses Typ;
procedure Re;
Begin
  i := 1;
  Assign(bul, 'krank.dat');
  Reset(bul);
  While not Eof(bul) do begin
    Read(bul, x);
    dan[i] := x;
    inc(i);
  end;
  Close(bul);
  k := i - 1;
end;
Begin
end.