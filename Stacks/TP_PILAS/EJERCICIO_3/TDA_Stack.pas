Unit TDA_Stack;

interface


type
elemento = integer;
tstack = ^TipoNodo;
TipoNodo = record
		   info : elemento;
		   ps : tstack;
		   end;
stack = tstack;


procedure CreateS(var S : stack);
function EsVaciaS(S : stack): boolean;
procedure push(var S: stack; x : elemento);
procedure pop(var S: stack;var x : elemento);



implementation

uses crt;
//////////////////////////////CreateS//////////////////////
procedure CreateS(var S : stack);
begin
	S := nil;
end;
///////////////////////////////EsVaciaS/////////////////
function EsVaciaS(S : stack): boolean;
begin
	EsVaciaS := (S = nil);
end;
//////////////////////////////InsertarS//////////////////
procedure push(var S: stack; x : elemento);
var
aux : stack;

begin
	new(aux);
	aux^.info := x;
	aux^.ps := nil;
	if (S = nil) then
		S := aux
	else
		begin
		aux^.ps := S;
		S := aux;
		end;
end;

//////////////////////////SacarElementoS//////////////
procedure pop(var S: stack;var x : elemento);
begin
	if S <> nil then
	begin
		x := S^.info;
		S := S^.ps;
	end;
end;
/////////////////////////////////////////////////////

BEGIN

END.
