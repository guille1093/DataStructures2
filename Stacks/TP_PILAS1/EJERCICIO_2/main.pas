	//gq
		program main;

		uses crt,TDA_Stack,StrUtils;

	///////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////

		procedure main();
		var i,c,e: integer;
			S,S0,S1:stack;
		begin
			c:=10;
			CreateS(S);
			CreateS(S0);
			CreateS(S1);
			randomize;
			for i := 0 to c do	push(S,random(100));
			S0:=S;
			writeln('PILA A: ');
			while not (EsVaciaS(S0)) do
				begin
					pop(S0,e);
					write(e,' | ');
				end;
			for i := 0 to 1 do	writeln(' ');
			writeln('COPIA DE PILA A EN PILA B: ');
			S1:=S;
			S0:=S1;
			while not (EsVaciaS(S0)) do
				begin
					pop(S0,e);
					write(e,' | ');
				end;
		end;
	///////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////

		begin
			main();
		end.
