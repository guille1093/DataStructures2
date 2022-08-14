program main;
uses crt;

procedure P(n:integer);
begin
  if (n>=1) and (n<=8) then
    begin
      P(n-1);
      write(n);
    end
  else writeln;
end;

  begin
    P(3);
  end.
