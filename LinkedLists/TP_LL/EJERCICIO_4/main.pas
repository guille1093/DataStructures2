//gq
	program main;

	uses crt,TDA_Lista_Char,math;
///////////////////////////////////////////////////////////////////////////////
// EJERCICIO 4
// Dada una lista desordenada, generar una nueva lista ordenada y sin valores repetidos a partir de
// la primera. Informar si en la nueva lista se encuentran los valores W y Q ingresados por teclado

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
