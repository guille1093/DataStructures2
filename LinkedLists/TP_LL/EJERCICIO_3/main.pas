//gq
	program main;

	uses crt,TDA_Lista,math;

///////////////////////////////////////////////////////////////////////////////
// EJERCICIO 3
// Realice un módulo dentro de un programa que reciba dos listas ordenadas y devuelva otra lista
// ordenada, que sea la resultante de unir las dos listas recibidas. Las dos listas originales deben quedar vacías
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
	end;

///////////////////////////////////////////////////////////////////////////////
	procedure main();
	var c,i: integer;
		L,M,N:Lista;
	begin
		CreateL(L);
		CreateL(M);
		c:=5; //MODIFICAR PARA CANTIDAD DE ELEMENTOS
		randomize;
		for i := 1 to c do InsertarOrdenadoL(L,(random(100)));
		for i := 1 to c do InsertarOrdenadoL(M,(random(100)));
		writeln('LISTA A DE ',c,' ELEMENTOS ORDENADOS');
		MostrarL(L);
		writeln('');
		writeln('LISTA B DE ',c,' ELEMENTOS ORDENADOS');
		MostrarL(M);
		writeln('');
		writeln('LISTA C DE ',c*2,' ELEMENTOS ORDENADOS');
		N:=UnirListas(M,L);
		MostrarL(N);
		writeln('');
		CreateL(M); // DESDE LA FUNCION UnirListas NO ERA POSIBLE DEJAR LAS LISTAS
		CreateL(L); // ORIGINALES VACIAS AUNQUE LO INTENTE, POR LO QUE SE LO PUSO ACA.
	end;
///////////////////////////////////////////////////////////////////////////////
	begin
		main();
	end.
