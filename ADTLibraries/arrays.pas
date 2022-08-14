program arrays;
uses crt;
type
  ArrOfInt = array of integer;
var a,b,c:ArrOfInt;

  procedure ArrayInput();
  var
    UI: string;
    d, i, e: integer;

  begin
    clrscr;
    repeat
      clrscr;
      write('Ingrese la longitud deseada del array:  ');
      readln(UI);
      val(UI,d,e);
    until e = 0;
    setLength(a,d-1);
    setLength(b,d-1);
    setLength(c,d-1);
  for i := 0 to length(b) do
        begin
          repeat
            clrscr;
            write('Ingrese el elemento ',i,' : ');
            readln(UI);
            val(UI,d,e);
          until e = 0;
          b[i]:=d;
        end;
  for i := 0 to length(b) do write(b[i],' ');
  end;
  
begin
ArrayInput();
end.
