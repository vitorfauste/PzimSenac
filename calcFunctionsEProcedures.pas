Program DemonstracaoFuncoes;

function Somar(n1, n2: real): real;
	begin
		Somar := n1 + n2;	
	end;
	
function Subtrair(n1, n2: real): real;
	begin
		Subtrair := n1 - n2;	
	end;
	
function Multiplicar(n1, n2: real): real;
	begin
		Multiplicar := n1 * n2;	
	end;
	
function Dividir(n1, n2: real): real;
	begin
		if (n2 = 0) then
		begin
			writeln('O divisor n�o pode ser 0 (zero)!');
			Dividir := 0;
		end
		else
			Dividir := n1 / n2;	
	end;
	
procedure getCalculadora;
var
	primeiroNumero, segundoNumero: real;	
	operacao: char;

begin                                                                                  
	write('Digite o primeiro n�mero: ');
	readln(primeiroNumero);
	write('Digite o segundo n�mero: ');
	readln(segundoNumero);
	write('Digite a opera��o desejada [+] [-] [*] [/]: ');
	readln(operacao);	
	
	case operacao of
	'+': writeln(primeiroNumero, ' + ', segundoNumero, ' = ', Somar(primeiroNumero, segundoNumero));
	'-': writeln(primeiroNumero, ' - ', segundoNumero, ' = ', Subtrair(primeiroNumero, segundoNumero));
	'*': writeln(primeiroNumero, ' * ', segundoNumero, ' = ', Multiplicar(primeiroNumero, segundoNumero));                                     
	'/': writeln(primeiroNumero, ' / ', segundoNumero, ' = ', Dividir(primeiroNumero, segundoNumero)); 
	end;	 
end;	

Begin
	getCalculadora;
End.   


	
	    