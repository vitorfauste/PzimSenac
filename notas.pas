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
			write('Digite a nota da 1ª avaliação: ');
			readln(n1);   
			if (n1 < 0) or (n1 > 10) then
				writeln('Nota inválida! Digite novamente.');
		until (n1 >= 0) and (n1 <= 10);
		repeat
			write('Digite a nota da 2ª avaliação: ');
			readln(n2); 
			if (n2 < 0) or (n2 > 10) then
				writeln('Nota inválida! Digite novamente.');
		until (n2 >= 0) and (n2 <= 10);
		
		repeat
			write('Os dados digitados estão corretos (S ou N em maiúsculo)? - ');
			readln(dados);
			if (dados <> 'N') and (dados <> 'S') then
				writeln('Letra não aceita! Por favor, digite somente S ou N em maiúsculo.');
			if (dados = 'N') then
				writeln('Digite os dados atualizados.');
		until (dados = 'N') or (dados = 'S');
	end;
	
	media := (n1 + n2)/2;
	writeln('ALUNO: ', aluno);
	writeln;
	writeln('---------------------------');
	writeln;
	writeln('Nota da 1ª avaliação: ', n1:2:2);
	writeln('Nota da 2ª avaliação: ', n2:2:2);
	writeln('Média: ', media:2:2);
	if (media >= 6) then
		writeln('Resultado: APROVADO');
	if (media < 3) then
		writeln('Resultado: REPROVADO');
	if (media < 6) and (media >= 3) then
		writeln('Resultado: EM EXAME');
	
	
End.