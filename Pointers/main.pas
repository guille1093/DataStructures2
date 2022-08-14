//gq
program main;

uses
	crt;
//type pointer = ^integer;

var

	r:integer;
	p1:^integer;
  p2:^integer;

	begin
    clrscr;
	  new (p1);
	  new (p2);
		//r:=6;
		p1^:=125;
  //  p2:=nil;
    p2^:=50;
    p1^:=p2^;
    r:=p1^+3;
		writeln('p1^ ',p1^,'  p2^ ',p2^,'  r ',r  );
		readln();
	end.
