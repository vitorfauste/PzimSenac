Program palavraPalindromo;

var
	palavraDigitada, palavraComparacao: string;	
	i: integer;
	
Begin
	palavraComparacao := '';
	write('Digite uma palavra para verificar se ela � pal�ndromo: ');
	readln(palavraDigitada);
	writeln;
	
	for i := length(palavraDigitada) downto 1 do
	begin
		palavraComparacao := palavraComparacao + palavraDigitada[i];
	end;
	
	if (palavraComparacao = palavraDigitada) then
		writeln('A palavra digitada � pal�ndromo!')
	else
		writeln('A palavra digitada N�O � pal�ndromo.');	  
End.