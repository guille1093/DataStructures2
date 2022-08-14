program TP10P1;


uses crt, StrUtils;


function InverString(UserInput:string): string;
begin
  InverString:=ReverseString(UserInput);
end;

begin
  writeln(InverString('Hola como estas todo bien?'));
  readln();
end.
