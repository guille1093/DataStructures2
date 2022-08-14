//gq
unit TDA_Palabra;

interface
	uses crt,StrUtils;
		//a) Obtener la cantidad de caracteres de la palabra
		function Longitud(UI:string): integer;
		//( CANTIDAD DE CARACTERES)Esta funcion devuelve en forma de numero entero la cantidad de caracteres
		//que encuentra en una palabra, la cual es ingresada por el usuario. Dato necesario es ingresar la palabra a trabajar.

		//b) Agregar un carácter a la palabra
		function AddChar(UI:string;ch:string): string;
		//(AÑADIR CARACTER) Recibe un string y un caracter como parametro s y los concatena.

		//c) Invertir la palabra
		function Reverse(d:string):string;
		//(CADENA INVERTIDA)Devuelve el string ingresado como parametro de forma inversa.

		//d) Determinar si es palíndroma
		function Palindr(UI:string): boolean;
		//(PALINDROMO) Toma como parametro una palabra y devuelve true o false segun sea o no un palindromo.

///////////////////////////////////////////////////////////////////////////////
implementation

function Longitud(UI:string): integer;
begin
  Longitud:=length(UI);
end;

function AddChar(UI:string;ch:string): string;
begin
  AddChar:=UI+ch[0];
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
