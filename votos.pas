Program Votacao;

var
	candidato, voto_n, voto_b, voto_1, voto_2, voto_3, voto_4: integer;
	
	
Begin
   write('Informe o canditato que você deseja votar (1, 2, 3 e 4 para candidatos, 5 para voto nulo e 6 para voto branco): ');
   readln(candidato);
   voto_1 := 0;
   voto_2 := 0;
   voto_3 := 0;
   voto_4 := 0;
   voto_b := 0;
   voto_n := 0;   
   
   case candidato of 
	   1: voto_1 := voto_1 + 1;
	   2: voto_2 := voto_2 + 1;
	   3: voto_3 := voto_3 + 1;
	   4: voto_4 := voto_4 + 1;
	   5: voto_n := voto_n + 1;
	   6: voto_b := voto_b + 1;
   end;
     
   while  (candidato <> 0) do
   begin
	   write('Informe o canditato que você deseja votar (1, 2, 3 e 4 para candidatos, 5 para voto nulo e 6 para voto branco): ');
	   readln(candidato);
	   case candidato of 
		   1: voto_1 := voto_1 + 1;
		   2: voto_2 := voto_2 + 1;
		   3: voto_3 := voto_3 + 1;
		   4: voto_4 := voto_4 + 1;
		   5: voto_n := voto_n + 1;
		   6: voto_b := voto_b + 1;
	   end;
   end;
	writeln('O candidato 1 obteve ', voto_1, ' votos.');
	writeln('O candidato 2 obteve ', voto_2, ' votos.');
	writeln('O candidato 3 obteve ', voto_3, ' votos.');
	writeln('O candidato 4 obteve ', voto_4, ' votos.');
	writeln('Quantidade de votos nulos: ', voto_n);
	writeln('Quantidade de votos brancos: ', voto_b);     
	writeln('O percentual de votos do candidato 1 em relação ao total de votos validos é: ', (voto_1 * 100)/(voto_1 + voto_2 + voto_3 + voto_4));
	writeln('O percentual de votos do candidato 2 em relação ao total de votos validos é: ', (voto_2 * 100)/(voto_1 + voto_2 + voto_3 + voto_4));
	writeln('O percentual de votos do candidato 3 em relação ao total de votos validos é: ', (voto_3 * 100)/(voto_1 + voto_2 + voto_3 + voto_4));
	writeln('O percentual de votos do candidato 4 em relação ao total de votos validos é: ', (voto_4 * 100)/(voto_1 + voto_2 + voto_3 + voto_4));
End.