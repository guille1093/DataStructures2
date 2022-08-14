//gq
program main;

uses
	crt,TDA_Matematicas;
var
	UI:string;
	e,n1,n2:integer;

procedure main();
	begin
		clrscr;
		repeat
			clrscr;
			write('Porfavor ingrese el primer numero:  ');
			readln(UI);
			val(UI,n1,e);
		until e = 0;
		repeat
			clrscr;
			write('Porfavor ingrese el segundo numero:  ');
			readln(UI);
			val(UI,n2,e);
		until e = 0;
		if Iguales(n1,n2) then writeln('Los numeros son iguales') else writeln('Los numeros no son iguales');
		if not(Iguales(n1,n2)) then writeln(Mayor(n1,n2),' es el mayor');
		writeln('El factorial del primer numero es ',Fact(n1));
		writeln('El cuadrado del segundo numero es ',Cuadrado(n2));
		if Par(n1) then writeln('El primer numero es par') else writeln('El primer numero no es par');
		writeln('La superficie de un rectangulo seria de ',SupRect(n1,n2),' mts2' );
		writeln('La superficie de un triangulo seria de ',SupTriang(n1,n2),' mts2' );
	end;

	begin
		main();
	end.
