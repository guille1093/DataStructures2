//gq
program main;

uses
	crt,TDA_Cadena_dos;
var
	cadena,UI:string;
	e,i:integer;

procedure main();
	begin
    clrscr;
		write('Por favor ingrese una cadena de caracteres: ');
		readln(cadena);
		repeat
			clrscr;
			write('Ingrese el valor minimo de la longitud de palabras a contar:  ');
			readln(UI);
			val(UI,i,e);
		until e = 0;
		clrscr;
		writeln('### ',cadena,' ###');
		writeln('La cantidad de palabras total es: ',CantPalabras(cadena));
		writeln('La cantidad de palabras que superan los ',i, ' caracteres es: ',CantPalabrasN(cadena,i));
		readln();
	end;

	begin
		main();
	end.
