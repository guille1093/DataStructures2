//gq
	program main;

	uses crt,TDA_Stack,StrUtils;

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
	procedure main();
	var i: integer;
		S:stack;
		UI:string;
	begin
		CreateS(S);
		writeln('Ingrese una palabra: ');
		readln(UI);
		//UI:=ReverseString(UI);
		for i := 0 to (length(UI)) do	push(S,UI[i]);
		display(S);
	end;
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

	begin
		main();
	end.
