//gq
	program main;

	uses crt,TDA_Lista,math;

///////////////////////////////////////////////////////////////////////////////
//	EJERCICIO NRO 2
//	a) Escribir una función que calcule el promedio de los elementos de una lista.
	function Promedio(L:Lista): real;
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
	procedure main();
	var c,i: integer;
		L:Lista;
	begin
		CreateL(L);
		c:=10; //MODIFICAR PARA CANTIDAD DE ELEMENTOS
		randomize;
		for i := 1 to c do InsertarL(L,(random(100)));
		writeln('LISTA DE ',c,' ELEMENTOS ALEATORIOS DESORDENADOS');
		MostrarL(L);
		writeln('');
		writeln('LISTA INVERTIDA: ');
		L:=Invertir(L);
		MostrarL(L);
		writeln('');
		writeln('PROMEDIO ELEMENTOS EN LISTA: ',Promedio(L):0:1);
		writeln('');
		writeln('LISTA CON ELEMENTOS PARES Y MULTIPLOS DE 5: ');
		L:=ElemPar(L);
		MostrarL(L);
	end;

///////////////////////////////////////////////////////////////////////////////
	begin
		main();
	end.
