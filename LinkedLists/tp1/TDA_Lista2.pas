//gq
unit TDA_Lista;

interface	uses crt,StrUtils;
	type
	 node = ^MyRec;
	 MyRec = record
	          value: integer;
	          next: node
	         end;

procedure InsertTail(v: integer);
procedure InsertHead(v: integer);
procedure Display;
//function IfIn(h:node;i:integer):boolean;
function IfIn(i:integer):boolean;
//procedure DelNode(c:integer);
///////////////////////////////////////////////////////////////////////////////
implementation


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

procedure Display();
var tmp: node;
 w: ^word;
begin
 tmp:= head;
 while tmp <> nil do
  begin
    w := @(tmp^.next);
   write (tmp^.value,'  0x',w^,'  || ');
   tmp:= tmp^.next;
  end;
  writeln();
end;

{function IfIn(h:node;i:integer):boolean;
var tmp: node;
begin
	tmp:= h;
	IfIn:=false;
	while tmp <> nil do
	 begin
		if i = tmp^.value then IfIn:=true;
		tmp:= tmp^.next;
	 end;
end;}

function IfIn(i:integer):boolean;
var tmp: node;
begin
	tmp:= head;
	IfIn:=false;
	while tmp <> nil do
	 begin
		if i = tmp^.value then IfIn:=true;
		tmp:= tmp^.next;
	 end;
end;

{procedure DelNode(c:integer);
var tmp: node;
begin
	tmp:=head;
	if (IfIn(c)) then	while (tmp<>nil) do
		begin
			if (tmp^.value = c) then tmp:=tmp^.next;
		end;
end;}

	begin
	end.
