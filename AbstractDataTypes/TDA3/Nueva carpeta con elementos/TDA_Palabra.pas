//gq
unit TDA_Palabra;

interface
	uses crt,StrUtils;
function Longitud(UI:string): integer;

function AddChar(UI:string;ch:string): string;

function Reverse(d:string):string;

function Palindr(UI:string): boolean;

///////////////////////////////////////////////////////////////////////////////
implementation

function Longitud(UI:string): integer;
begin
  Longitud:=length(UI);
end;

function AddChar(UI:string;ch:string): string;
begin
  AddChar:=UI+ch;
end;

function Reverse(d:string):string;
  function RvR(c:integer; UI:string):string;
  begin
    if c=0 then RvR:='' else RvR:= UI[c] + RvR(c-1,UI);
  end;
begin
  Reverse:=RvR(length(d),d);
end;

function Palindr(UI:string): boolean;
begin
  if (upcase(UI)=upcase((ReverseString(UI)))) then Palindr:=true else Palindr:=false;
end;

	begin
	end.
