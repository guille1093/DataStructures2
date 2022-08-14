//gq
unit TDA_Vector;

interface
uses crt;
type IntegerArray = array of Integer;

//a) Ordenar un vector de mayor a menor.
procedure SortHL(var a:array of integer);

//b) Ordenar un vector de menor a mayor.
procedure SortLH(var a:array of integer);

//c) Calcular la media de los elementos que se encuentran en las posiciones pares y la media
//   de los elementos que se encuentran en las posiciones impares de un vector.
procedure Media(a:array of integer);

//d) Calcular la cantidad de elementos negativos, positivos y nulos de un vector.
procedure NPN(a:array of integer);

//e) Dado un vector y un valor N retornar verdadero si dicho valor se encuentra en el vector.
function IfIn(a:array of integer;n:integer):boolean;

//f) Dados dos vectores A y B, de N elementos cada uno, ordenarlos en forma
//   descendente sin elementos repetidos y generar un tercer vector C con los
//   elementos de los vectores A y B ordenados en forma descendente.
procedure CctHL(a,b:IntegerArray;var c:IntegerArray);

//g) Dados dos vectores A y B, de N elementos cada uno, ordenarlos en forma
//   ascendente sin elementos repetidos y generar un tercer vector C con los
//   elementos de los vectores A y B ordenados en forma ascendente.
procedure CctLH(a,b:IntegerArray;var c:IntegerArray);

// NegArray devuelve unicamente la cantidadde elementos negativos en un array
function NegArray(a:IntegerArray): integer;


///////////////////////////////////////////////////////////////////////////////
implementation

procedure SortHL(var a:array of integer);
var i,j,k:integer;
begin
for i:=0 to length(a)-1 do
	begin
	for j:=0 to length(a)-1 do
		begin
		if a[j] < a[i] then
			begin
			k:=a[j];
			a[j]:=a[i];
			a[i]:=k;
			end;
		end;
	end;
end;

procedure SortLH(var a:array of integer);
var i,j,k:integer;
begin
for i:=0 to length(a)-1 do
	begin
	for j:=0 to length(a)-1 do
		begin
		if a[j] > a[i] then
			begin
			k:=a[j];
			a[j]:=a[i];
			a[i]:=k;
			end;
		end;
	end;
end;

procedure Media(a:array of integer);
var Q,P,x,i:integer;
	MediaI,MediaP:real;
begin
i:=0;
x:=0;
P:=0;
Q:=0;
MediaP:=0;
MediaI:=0;
while i <= length(a)-1 do
	begin
	P:=P+a[i];
	x:=x+1;
	i:=i+2;
	end;
MediaP:=P/x;
i:=1;
x:=0;
while i <= length(a)-1 do
	begin
	Q:=Q+a[i];
	x:=x+1;
	i:=i+2;
	end;
MediaI:=Q/x;
writeln('La media de los elementos en posiciones pares es de: ',MediaP:0:1);
writeln('La media de los elementos en posiciones impares es de: ',MediaI:0:1);
end;

procedure NPN(a:array of integer);
var i,x,y,z:integer;
begin
x:=0;
y:=0;
z:=0;
for i:=0 to length(a)-1 do
	begin
	if a[i] < 0 then x:=x+1;
	if a[i] > 0 then y:=y+1;
	if a[i] = 0 then z:=z+1;
	end;
writeln('La cantidad de elementos negativos es de: ',x);
writeln('La cantidad de elementos postivos es de: ',y);
writeln('La cantidad de elementos nulos es de: ',z);
end;

function NegArray(a:IntegerArray): integer;
var i,c:integer;
begin
  c:=0;
  for i := 0 to length(a) do if (a[i]<0) then c:=c+1;
  NegArray:=c;
end;

function IfIn(a:array of integer;n:integer):boolean;
var i:integer;
begin
  SortLH(a);
  IfIn:=false;
  for i := 0 to length(a) do if a[i]=n then IfIn:=true;
end;

procedure CctHL(a,b:IntegerArray;var c:IntegerArray);
var
	i:integer;
begin
  SortHL(a);
  SortHL(b);
  for i:=0 to length(a)-1 do C[i]:=a[i];
  for i:=length(a) to length(a)+length(b)-1 do C[i]:=b[i-length(a)];
  SortHL(c);
end;

procedure CctLH(a,b:IntegerArray;var c:IntegerArray);
var
	i:integer;
begin
SortLH(a);
SortLH(b);
for i:=0 to length(a)-1 do
C[i]:=a[i];
for i:=length(a) to length(a)+length(b)-1 do C[i]:=b[i-length(b)];
SortLH(c);
end;

	begin
	end.
