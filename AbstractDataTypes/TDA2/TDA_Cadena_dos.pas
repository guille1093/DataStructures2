//gq
unit TDA_Cadena_dos;

interface
	uses crt,StrUtils;
//a) Calcular la cantidad de palabras de una cadena
function CantPalabras(UI:string):integer;
//CantPalabras devuelve la cantidad de palabras en un string.
//sintax: CantPalabras(string).

//b) Dada una cadena y un número N obtener la cantidad de palabras que tienen más de N caracteres.
function CantPalabrasN(UI:string;n:integer): integer;
//CantPalabras devuelve la cantidad de palabras en un string que superan la cantidad de N letras.
//sintax: CantPalabras(string,N).

//c) Dada una cadena y un carácter obtener la cantidad de palabras que terminan con dicho carácter.
function CantPalabrasC(UI:string;n:string): integer;
//CantPalabras devuelve la cantidad de palabras en un string que terminan con N letra.
//sintax: CantPalabras(string,N).

///////////////////////////////////////////////////////////////////////////////
implementation
function CantPalabras(UI:string): integer;
begin
  CantPalabras:=wordcount(UI,StdWordDelims);
end;

function CantPalabrasN(UI:string;n:integer): integer;
var
	i,x,z:integer;
begin
  x:=0; z:=0; UI:=UI+' ';
   for i := 0 to length(UI) do if not(UI[i] in StdWordDelims) then x:=x+1 else
     begin
        if x>n then z:=z+1; x:=0;
     end;
CantPalabrasN:=z;
end;

function CantPalabrasC(UI:string;n:string): integer;
var
	i,z:integer;
	temp:string;
begin
   z:=0; UI:=UI+' '; temp:='';
   for i := 0 to length(UI) do if not(UI[i] in StdWordDelims) then temp:=temp+UI[i] else
     begin
        if temp[length(temp)]=n then z:=z+1; temp:='';
     end;
CantPalabrasC:=z;
end;


	begin
	end.
