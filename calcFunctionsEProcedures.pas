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
			writeln('O divisor não pode ser 0 (zero)!');
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
	write('Digite o primeiro número: ');
	readln(primeiroNumero);
	write('Digite o segundo número: ');
	readln(segundoNumero);
	write('Digite a operação desejada [+] [-] [*] [/]: ');
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


	
	    