//gq
program main;

uses
	crt,TDA_Vector;
	type IntegerArray = array of Integer;

var
	UI:string;
	e,n1,n2,i:integer;
	a,b,c:IntegerArray;

procedure main();
	begin
		clrscr;
		repeat
			clrscr;
			writeln('Porfavor ingrese la longitud deseada del array  ');
			write('Los valores seran generados aleatoriamente para su conveniencia: ');
			readln(UI);
			val(UI,n1,e);
		until e = 0;
		setlength(a,n1);
		setlength(b,n1);
		setlength(c,n1*2);
		for i := 0 to n1-1 do a[i]:=-100+random(200);
		for i := 0 to n1-1 do b[i]:=-100+random(200);
		repeat
			clrscr;
			writeln('Porfavor ingrese el elemento a buscar: ');
			readln(UI);
			val(UI,n2,e);
		until e = 0;
		clrscr;
		writeln('ARRAY A:');
		write('||  ||');
		for i := 0 to n1-1 do write(a[i],'||  ||');
		writeln();
		writeln();
		writeln('ARRAY B:');
		write('||  ||');
		for i := 0 to n1-1 do write(b[i],'||  ||');
		writeln();
		writeln();
		Media(a);
		writeln('La cantidad de elementos negativos en el vector A es de ',NegArray(a));
		if IfIn(a,n2) then writeln('El numero ',n2,' se encuentra en B') else writeln('El numero ',n2,' no se encuentra en B');
    CctLH(a,b,c);
		writeln('Un tercer vector con los elementos de los vectores A y B de forma ascendente:');
		for i := 0 to ((n1*2)-1) do write(c[i],'||  ||');
	end;

	begin
		main();
	end.
