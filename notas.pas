Program Notas;

var
	aluno: string;
	dados, ncalc: char;
	n1, n2, media: real;
	
Begin
	dados := 'N';
	while (dados = 'N') do
	begin
		write('Digite o nome do aluno: ');
		readln(aluno);
		repeat
			write('Digite a nota da 1� avalia��o: ');
			readln(n1);   
			if (n1 < 0) or (n1 > 10) then
				writeln('Nota inv�lida! Digite novamente.');
		until (n1 >= 0) and (n1 <= 10);
		repeat
			write('Digite a nota da 2� avalia��o: ');
			readln(n2); 
			if (n2 < 0) or (n2 > 10) then
				writeln('Nota inv�lida! Digite novamente.');
		until (n2 >= 0) and (n2 <= 10);
		
		repeat
			write('Os dados digitados est�o corretos (S ou N em mai�sculo)? - ');
			readln(dados);
			if (dados <> 'N') and (dados <> 'S') then
				writeln('Letra n�o aceita! Por favor, digite somente S ou N em mai�sculo.');
			if (dados = 'N') then
				writeln('Digite os dados atualizados.');
		until (dados = 'N') or (dados = 'S');
	end;
	
	media := (n1 + n2)/2;
	writeln('ALUNO: ', aluno);
	writeln;
	writeln('---------------------------');
	writeln;
	writeln('Nota da 1� avalia��o: ', n1:2:2);
	writeln('Nota da 2� avalia��o: ', n2:2:2);
	writeln('M�dia: ', media:2:2);
	if (media >= 6) then
		writeln('Resultado: APROVADO');
	if (media < 3) then
		writeln('Resultado: REPROVADO');
	if (media < 6) and (media >= 3) then
		writeln('Resultado: EM EXAME');
	
	
End.