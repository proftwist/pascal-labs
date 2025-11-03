Unit Sort;
interface
procedure Sortir;
implementation
Uses typ;
procedure Sortir;
Begin
  for i := 1 to k - 1 do
    for j := i + 1 to k do begin
      x := dan[i];
      if x.voz > dan[j].voz then begin
        dan[i] := dan[j];
        dan[j] := x;
        x := dan[i];
      end;
    end;
end;
Begin
end.