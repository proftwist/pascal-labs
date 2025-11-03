Unit Typ;
interface
type
  dub = record
  fam: string[20];
  pol: string[1];
  voz: integer;
  gorod: string[20];
  diag: string[20];
  end;
const
  kol = 15;
var
  dan: array [1..kol] of dub;
  diagn, vozr, exit, strok, vo: string;
  bul: file of dub;
  v, a, kontrol, us, n, sum, dlin, i, k, j: integer;
  x: dub;
implementation
Begin
End.