//gq
	program main;

	uses crt,TDA_Queue,StrUtils;

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
	procedure main();
	var i,e,c: integer;
		Q:TipoQueue;
	begin
		CreateQ(Q);
		randomize;
		c:=10;
		for i := 1 to c do Encolar(Q,random(100));
		while not (EsVaciaQ(Q)) do
		begin
			Desencolar(Q,e);
			write(e,' | ');
		end;
	end;
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

	begin
		main();
	end.