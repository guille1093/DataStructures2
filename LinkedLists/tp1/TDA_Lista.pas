Unit TDA_Lista;

interface


type
elemento = char;
tlista = ^TipoNodo;
TipoNodo = record
		   info : elemento;
		   ps : tlista;
		   end;
Lista = tlista;


procedure CreateL(var L : Lista);
function EsVaciaL(L : Lista): boolean;
function ExisteL(L : Lista; x : elemento): boolean;
procedure InsertarL(var L: Lista; x : elemento);
procedure InsertarLFinal(var L: Lista; x : elemento);
procedure InsertarOrdenadoL(var L : Lista; x : elemento);
procedure BorrarL (var L : Lista; x : elemento);
procedure SacarElementoL(var L: Lista;var x : elemento);
procedure MostrarL(var L: Lista);



implementation

uses crt;
//////////////////////////////CreateL//////////////////////
procedure CreateL(var L : Lista);
begin
	L := nil;
end;
///////////////////////////////EsVaciaL/////////////////
function EsVaciaL(L : Lista): boolean;
begin
	EsVaciaL := (L = nil);
end;
//////////////////////////////InsertarL//////////////////
procedure InsertarL(var L: Lista; x : elemento);
var
aux : Lista;

begin
	new(aux);
	aux^.info := x;
	aux^.ps := nil;
	if (L = nil) then
		L := aux
	else
		begin
		aux^.ps := L;
		L := aux;
		end;
end;
///////////////////////////////ExisteL/////////////////
function ExisteL(L : Lista; x : elemento): boolean;
begin
	if L <> nil then
	begin
	while (L^.ps <> nil) and (L^.info <> x) do
		L := L^.ps;
		ExisteL := (L^.info = x)
	end
	 else
		ExisteL := false;
end;
///////////////////////////InsertarLFinal///////////////
procedure InsertarLFinal(var L: Lista; x : elemento);
var
aux, pi : Lista;
begin
	new(aux);
	aux^.info := x;
	aux^.ps := nil;
	if L = nil then
	begin
		L := aux;
	end
	 else
	 begin
		pi := L;
		while (L^.ps <> nil) do
		begin
			L := L^.ps;
		end;
		L^.ps := aux;
		L := pi;
	 end;
end;
////////////////////////////InsertarOrdenadoL//////////
procedure InsertarOrdenadoL(var L : lista ; x : elemento) ;

var
temp,aux,aux2 : lista;

begin
new(temp);
temp^.info := x;
temp^.ps := nil;
if (L = nil) then	L:= temp else
	begin
			if (L^.info >= x) then InsertarL(L,x)	else
			begin
				aux := L;
				while (L^.info < temp^.info) and (L^.ps <> nil) do
					begin
						if (L^.info < temp^.info) then	aux2 := L;
						L:= L^.ps;
					end;
				if (L^.info >= temp^.info) then
					begin
						temp^.ps:=L;
						aux2^.ps := temp;
						L:= aux;
					end
				else
					begin
						L^.ps:= temp;
						L:= aux;
					end;
			end;
	end;
end;

/////////////////////////////////BorrarL///////////////
procedure BorrarL (var L : Lista; x : elemento);
var
aux, pa, pi : Lista;
begin
	pi := L;
	pa := nil;

	while (L <> nil) and (L^.info <> x) do
	begin
		pa := L;
		L := L^.ps;
	end;

	if (pa = nil) then
		begin
			aux := L;
			L := L^.ps;
			dispose(aux);
		end
			else
		begin
			pa^.ps := L^.ps;
			dispose(L);
			L := pi;
		end;


end;
//////////////////////////SacarElementoL//////////////
procedure SacarElementoL(var L: Lista;var x : elemento);
begin
	if L <> nil then
	begin
		x := L^.info;
		L := L^.ps;
	end
	else
		writeln('Lista Vacia');
end;
///////////////////Display///////////////////////////
procedure MostrarL(var L: Lista);
var tmp: Lista;
begin
 tmp:= L;
 while tmp <> nil do
  begin
   write (tmp^.info,' || ');
   tmp:= tmp^.ps;
  end;
  writeln();
end;

BEGIN

END.
