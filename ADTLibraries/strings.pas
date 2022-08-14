program TP00;


uses crt,StrUtils;

procedure Mayusculas();
var
  i,x: integer;
  UserInput: string;
begin
  clrscr;
  x := 0;
  writeln('Ingrese una cadena, las mayusculas seran contadas');
  readln(UserInput);
  for i := 1 to length(UserInput) do if UserInput[i] in ['A'..'Z'] then x:= x+1;
  //for i := 1 to length(UserInput) do if UserInput[i] = upcase(UserInput[i]) then x:= x+1;
  //for i := 1 to length(UserInput) do if ((ord(UserInput[i]) > 64) AND ((ord(UserInput[i]) < 91))) then x:= x+1;
  writeln('Hay ',x,' mayusculas');
  readln();
end;

procedure Minusculas();
var
  i,x: integer;
  UserInput: string;
begin
  clrscr;
  x := 0;
  writeln('Ingrese una cadena, las minusculas seran contadas');
  readln(UserInput);
  for i := 1 to length(UserInput) do if UserInput[i] in ['a'..'z'] then x:= x+1;
  //for i := 1 to length(UserInput) do if UserInput[i] = lowercase(UserInput[i]) then x:= x+1;
  //for i := 1 to length(UserInput) do if ((ord(UserInput[i]) > 97) AND ((ord(UserInput[i]) < 122))) then x:= x+1;
  writeln('Hay ',x,' minusculas');
end;

procedure Lxl();
var
  i: integer;
  l1,l2: char;
  UserInput: string;
begin
  clrscr;
  writeln('Ingrese una cadena');
  readln(UserInput);
  writeln('Ingrese la letra a reemplazar');
  readln(l1);
  writeln('Ingrese la letra con cual reemplazar');
  readln(l2);
  for i := 1 to length(UserInput) do if UserInput[i] = l1 then UserInput[i]:= l2;
  writeln('', UserInput);
  readln();
end;

function CantPalabras(UserInput:string): integer;
var
  i,x,c:integer;
  NewWord,NewString:string;
  TMPchar:char;
begin
  x:=0;
  c:=1;
  NewString:= '';
  NewWord:= '';
  TMPchar:= 'a';
  for i := 1 to length(UserInput) do
    begin
     TMPchar := UserInput[x];
     if (TMPchar <> ' ') AND (TMPchar <> '.') then NewWord:=NewWord+TMPchar else
     begin
       if (TMPchar = ' ') OR (TMPchar = '.') then NewString := NewString+'  '+NewWord;
        NewWord := '';
        c:=c+1;
     end;
     x:=x+1;
    end;
CantPalabras:=c;
end;


function Invertir(d:string):string;
  function reverse (c:integer; UI:string):string;
  begin
    if c=0 then reverse:='' else reverse:= UI[c] + reverse(c-1,UI);
  end;
begin
  Invertir:=reverse(length(d),d);
end;


function Palindromo(UserInput:string): boolean;
begin
  if (upcase(UserInput)=upcase((ReverseString(UserInput)))) then Palindromo:=true else Palindromo:=false;
end;

begin
//  Lxl;
  //writeln(Palindromo('neuquen'));
   writeln(Invertir('Hola como estas'));
  readln();

end.
