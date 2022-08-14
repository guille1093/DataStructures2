//gq
	program main;

	uses crt,TDA_Stack,StrUtils,sysutils;
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
	procedure main();
	var c,i: integer;
		e:elemento;
		S,P:stack;
		m:string;
	begin
		CreateS(S);
		CreateS(P);
		c:=50;
		randomize;
		for i := 1 to c do
			begin
				m:= IntToStr(i);
				e.student:= 'ESTUDIANTE '+m;
				e.score:=random(10);
				push(S,e);
			end;
		while not (EsVaciaS(S)) do
			begin
				pop(S,e);
				if (e.score > 7) then push(P,e);
			end;
		writeln('ESTUDIANTES CON MAS DE 7');
		while not (EsVaciaS(P)) do
			begin
				pop(P,e);
				writeln(e.student,'  NOTA: ',e.score:0:2);
			end;
	end;
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
	begin
		main();
	end.
