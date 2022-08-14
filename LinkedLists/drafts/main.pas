program main;

uses crt;

type
 node = ^MyRec;
 MyRec = record
          value: integer;
          next: node
         end;

var
 head, tail: node;

procedure InsertTail(v: integer);
var tmp: node;
begin
 new (tmp);
 tmp^.value:= v;
 tmp^.next:= nil;
 if head = nil then head:= tmp else tail^.next:= tmp;
 tail:= tmp;
end;

procedure InsertHead(v: integer);
var tmp: node;
begin
 new (tmp);
 tmp^.value:= v;
 tmp^.next:= nil;
 if head = nil then head:= tmp else tmp^.next:= head;
 head:= tmp;
end;

procedure Display;
var tmp: node;
 y: ^word;
begin
 tmp:= head;
 while tmp <> nil do
  begin
    y := @(tmp^.next);
   write (tmp^.value,'  0x',y^,'  || ');
   tmp:= tmp^.next;
  end;
end;

procedure randommain();
var c,i,e,p: integer;
  	UI:string;

begin
  repeat
    clrscr;
    write('Porfavor ingrese la cantidad de elementos:  ');
    readln(UI);
    val(UI,i,e);
  until e = 0;
  head:= nil;
  for c := 0 to i do InsertHead(random(100));
  writeln('');
  writeln('');
  Display;
  p:=sizeof(head);
  writeln('');
  writeln(p);
  readln();
end;


procedure main();
  var i,p: integer;

begin
  for i := 0 to 5 do begin
    writeln('');
    write('Ingrese un valor: ');
    readln(p);
    InsertHead(p);
    writeln('');
    Display;
  end;
end;
//////////////////////////////////main///////////////////////////////////////////
begin
  main();
end.
