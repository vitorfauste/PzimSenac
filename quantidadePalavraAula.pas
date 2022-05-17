Program palavraAula;

var
	palavraDigitada: string;
	contador: integer;

Begin

	repeat
	
		write('Digite uma palavra: ');
		readln(palavraDigitada);
		
		if (upcase(palavraDigitada) = 'AULA') then
			inc(contador);
			
	until(upcase(palavraDigitada) = 'FIM');  
	
	writeln;
	writeln('A palavra "AULA" foi digitada ', contador, ' vezes.');
End.