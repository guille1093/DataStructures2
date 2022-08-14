	//gq
		program main;

		uses crt,TDA_Stack,StrUtils;

	///////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////

		procedure main();
		var i,c,b,e,f: integer;
			S0,S1,Sa0,Sa1:stack;
		begin
			randomize;
			c:=random(10)+1;
			f:=random(10)+1;
			CreateS(S0);
			CreateS(S1);
			CreateS(Sa0);
			CreateS(Sa1);
			randomize;
			for i := 0 to c do	push(S0,random(100));
			for i := 0 to f do	push(S1,random(100));
			Sa0:=S0;
			Sa1:=S1;
			writeln('PILA A DE ',c+1,' ELEMENTOS: ');
			while not (EsVaciaS(Sa0)) do
				begin
					pop(Sa0,e);
					write(e,' | ');
				end;
			for i := 0 to 1 do	writeln(' ');
			writeln('PILA B DE ',f+1,' ELEMENTOS: ');
			while not (EsVaciaS(Sa1)) do
				begin
					pop(Sa1,e);
					write(e,' | ');
				end;
			for i := 0 to 1 do	writeln(' ');
			writeln('(A+B): ');
			Sa0:=S0;
			Sa1:=S1;
			while not ((EsVaciaS(Sa0)) or (EsVaciaS(Sa1))) do
				begin
					pop(Sa0,e);
					pop(Sa1,b);
					write(e+b,' | ');
				end;
		end;
	///////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////

		begin
			main();
		end.
