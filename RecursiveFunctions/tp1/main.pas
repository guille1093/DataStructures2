program TP_Recursion;

procedure Dec2Bin(n:integer);
begin
	if (n < 2) then write(n)
	else begin
		Dec2Bin(n div 2);
		write(n mod 2);
	end;
end;

function SumaPrimeros(n:integer):integer;
	var ac:integer;
begin
	ac:=0;
	if n = 0 then SumaPrimeros:=0; else begin
	if (n=1) then ac:=1; else	ac:=n+SumaPrimeros(n-1);
	end;
	SumaPrimeros:=ac;
end;

var num:integer;
BEGIN
	Write('Ingrese un numero: '); Readln(num);
	Dec2Bin(num);
	writeln();
	Write('Ingrese otro numero: '); Readln(num);
	Writeln(SumaPrimeros(num));
END.
