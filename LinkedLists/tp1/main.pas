//gq
	program main;

	uses crt,TDA_Lista,math;

///////////////////////////////////////////////////////////////////////////////
//	EJERCICIO NRO 2
//	a) Escribir una función que calcule el promedio de los elementos de una lista.
{	function Promedio(L:Lista): real;
	var tmp:Lista;
			x,c:integer;
			e:elemento;
	begin
		tmp:=L;
		x:=0;	e:=0;	c:=0;
		while (not EsVaciaL(tmp)) do
		begin
			x:=x+1;
			SacarElementoL(tmp,e);
			c:=c+e;
		end;
		Promedio:=c/x;
	end;

//	b) Escribir una función que dada una lista enlazada devuelva otra lista con los elementos invertidos.
	function Invertir(L:Lista): Lista;
	var tmp,tmp2:Lista;
		e:elemento;
	begin
		tmp:=L;
		CreateL(tmp2);
		while (not EsVaciaL(tmp)) do
			begin
				SacarElementoL(tmp,e);
				InsertarL(tmp2,e);
			end;
		Invertir:=tmp2;
	end;

//	c) Escribir un módulo que dada una lista genere una nueva lista con elementos pares y	múltiplos de 5.
	function ElemPar(L:Lista): Lista;
	var tmp,tmp2:Lista;
		e:elemento;
	begin
		tmp:=L;
		CreateL(tmp2);
		while (not EsVaciaL(tmp)) do
			begin
				SacarElementoL(tmp,e);
				if ((e mod 2=0) or (e mod 5=0)) then InsertarL(tmp2,e);
			end;
		ElemPar:=tmp2;
	end;
///////////////////////////////////////////////////////////////////////////////
// EJERCICIO 3
function UnirListas(L:Lista;M:Lista): Lista;
	var tmp2:Lista;
		e:elemento;
	begin
		CreateL(tmp2);
		while (not EsVaciaL(L)) do
			begin
				SacarElementoL(L,e);
				InsertarOrdenadoL(tmp2,e);
			end;
		while (not EsVaciaL(M)) do
			begin
				SacarElementoL(M,e);
				InsertarOrdenadoL(tmp2,e);
			end;
		UnirListas:=tmp2;
	end;}
///////////////////////////////////////////////////////////////////////////////
//EJERCICIO 4
function Unique(L:Lista): Lista;
var tmp,tmp2:Lista;
e:elemento;
begin
	tmp:=L;
	CreateL(tmp2);
	while (not EsVaciaL(tmp)) do
		begin
			SacarElementoL(tmp,e);
			if not (ExisteL(tmp2,e)) then InsertarOrdenadoL(tmp2,e);
		end;
	Unique:=tmp2;
end;


///////////////////////////////////////////////////////////////////////////////
	procedure main();
	var c,i: integer;
		L:Lista;
		W,Q:elemento;
	begin
		CreateL(L);
		i:=20;
		randomize;
		for c := 1 to i do InsertarL(L,chr(RandomRange(65,91)));
		writeln('');
		MostrarL(L);
		writeln('');
		L:=Unique(L);
		MostrarL(L);
		writeln('PORFAVOR INGRESE LA PRIMER LETRA A BUSCAR ');
		readln(W);
		writeln('PORFAVOR INGRESE LA SEGUNDA LETRA A BUSCAR ');
		readln(Q);
		clrscr;
		writeln(W,'-',Q);
		if (ExisteL(L,W)) then writeln('LA LETRA ',W,' SE ENCUENTRA EN LA LISTA') else writeln('LA LETRA ',W,' NO SE ENCUENTRA EN LA LISTA');
		if (ExisteL(L,Q)) then writeln('LA LETRA ',Q,' SE ENCUENTRA EN LA LISTA') else writeln('LA LETRA ',Q,' NO SE ENCUENTRA EN LA LISTA');
	end;

///////////////////////////////////////////////////////////////////////////////
	begin
		main();
	end.
