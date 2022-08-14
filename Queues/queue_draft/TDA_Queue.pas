Unit TDA_Queue;

interface


type
elemento = integer;
tqueue = ^TipoNodo;
TipoNodo = record
						info : elemento;
						ps : tqueue;
					end;
TipoQueue = record
							head : tqueue;
							tail : tqueue;
					end;
queue = tqueue;

procedure CreateQ(var S : TipoQueue);
function EsVaciaQ(S : TipoQueue): boolean;
procedure Encolar(var S: TipoQueue; x : elemento);
procedure Desencolar(var S: TipoQueue;var x : elemento);

implementation

uses crt;
//////////////////////////////CreateS//////////////////////
procedure CreateQ(var S : TipoQueue);
begin
	S.head := nil;
	S.tail := nil;
end;
///////////////////////////////EsVaciaS/////////////////
function EsVaciaQ(S : TipoQueue): boolean;
begin
	EsVaciaQ:= true;
	if (S.head <> nil) then EsVaciaQ:= false;
end;
//////////////////////////////InsertarS//////////////////
procedure Encolar(var S: TipoQueue; x : elemento);
var
aux: queue;

	begin
		New(aux);
		aux^.info:= x;
		aux^.ps:= nil;
		if (S.head= nil) then
			begin
				S.head:=aux;
				S.tail:=aux;
			end
		else
				begin
				S.tail^.ps:= aux;
				S.tail:= aux;
				end;
	end;

//////////////////////////SacarElementoS//////////////
procedure Desencolar(var S: TipoQueue;var x : elemento);
begin
	x:= S.head^.info;
	S.head:= S.head^.ps;
end;
//////////////////////////////////////////////////////
BEGIN

END.
