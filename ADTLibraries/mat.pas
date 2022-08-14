program TP00;

uses
  crt,
  StrUtils;

function Iguales(a:integer;b:integer): boolean;
begin
  if (a=b) then Iguales:=true else Iguales:=false;
end;

function Mayor(a:integer;b:integer): integer;
begin
  if (a>b) then Mayor:=a else if (a=b) then Mayor:=a else Mayor:=b;
end;

function Fact (num : integer) : integer;
begin
  if num > 0 then fact := num * fact(num-1) else if num=0 then fact := 1;
end;

function Cuadrado(b:integer): integer;
begin
  cuadrado:=(b*b);
end;

function SupRect(b:integer;h:integer): integer;
begin
  SupRect:=(b*h);
end;

function SupTriang(b:integer;h:integer): integer;
begin
  SupTriang:=((b*h) div 2);
end;

function Par(e:integer): boolean;
begin
  if (e mod 2 = 0) then par:=true else par:=false;
end;

function Impar(e:integer): boolean;
begin
  if (e mod 2 = 0) then impar:=false else impar:=true;
end;

begin
  writeln(Fact(7));
  writeln(Mayor(8,9));
  readln();
end.
