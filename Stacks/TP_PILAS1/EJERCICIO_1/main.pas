	//gq
		program main;

		uses crt,TDA_Stack,StrUtils;

	///////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////

		procedure main();
		var i,c,e: integer;
			S,S0:stack;
		begin
			c:=10;
			CreateS(S);
			CreateS(S0);
			randomize;
			for i := 0 to c do	push(S,random(100));
			S0:=S;
			writeln('LISTA ORIGINAL');
			while not (EsVaciaS(S0)) do
				begin
					pop(S0,e);
					write(e,' | ');
				end;
			for i := 0 to 1 do	writeln(' ');
			writeln('LISTA INVERTIDA');
			S0:=S;
			CreateS(S);
			while not (EsVaciaS(S0)) do
				begin
					pop(S0,e);
					push(S,e);
				end;
			while not (EsVaciaS(S)) do
				begin
					pop(S,e);
					write(e,' | ');
				end;
		end;
	///////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////

		begin
			main();
		end.
