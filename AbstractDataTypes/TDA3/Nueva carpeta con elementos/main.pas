//gq
program main;

uses
	crt,TDA_Palabra;
var
	word,UI:string;

procedure main();
	begin
    clrscr;
		write('Por favor ingrese UNA palabra: ');
		readln(word);
		if Palindr(word) then UI:='si' else UI:='no';
		writeln('La palabra ',word,' ',UI,' es un palindromo');
		writeln(word,' contiene ',Longitud(word),' caracteres');
		writeln('Su forma invertida es: "',Reverse(word),'"');
	end;

	begin
		main();
	end.
