// Fa�am um programa em pascal que carregue 50 n�meros inteiros. Para cada n�mero lido, fazer as seguintes verifica��es:

// a) Verificar se o n�mero � primo e armazenar em um vetor de primos inteiros;
// b) Verificar se o n�mero � par e armazenar em um vetor de pares inteiros;
// c) Verificar se o n�mero � impar e armazenas em um vetor de impares inteiros;
// d) Listar todos os vetores ( primos, pares, impares);
// e) Multiplicar 50  n�meros lidos, do primeiro ao ultimo: 
// soma := soma + (n[1] * n[50]); 
// soma := soma + (n[2] * n[49]);   at� 
// soma := soma + (n[24] * n[25]); utilize o comando de repeti��o For.

Program Vetores;

var
	numerosInteiros: array[1..50] of integer;
	primos: array[1..50] of integer;
	pares: array[1..50] of integer;
	impares: array[1..50] of integer;  
	i, j, contadorPrimos, somaDeTodos: integer;
	
Begin

	// ATRIBUI��ES INICIAIS
		
	for i := 1 to 50 do
	begin
		numerosInteiros[i] := 0;
		primos[i] := 0;
		pares[i] := 0;
		impares[i] := 0;
	end;	  
	

	// COMPARA��ES E ATRIBUI��ES DE VALORES
		
	for i := 1 to 50 do
	begin	
		contadorPrimos := 0;
		
		write('Digite o ', i, '� n�mero do vetor (EXCETO ZERO): ');
		readln(numerosInteiros[i]);
		
		if (numerosInteiros[i] > 0) then
		begin
			for j := 1 to numerosInteiros[i] do
			begin
				if (numerosInteiros[i] mod j = 0) then
					inc(contadorPrimos, 1);
			end;
			
			if (contadorPrimos = 2) then
				primos[i] := numerosInteiros[i];
			
			if (numerosInteiros[i] mod 2 = 0) then
				pares[i] := numerosInteiros[i]
			else
				impares[i] := numerosInteiros[i];
		end;		
	end;
	
	for j := 1 to 25 do
		begin
			somaDeTodos := somaDeTodos + (numerosInteiros[j] * (numerosInteiros[51 - j]));
		end;
					
	
	
	// APRESENTA��O DOS N�MEROS
	
	writeln;
	writeln('Todos os n�meros:');
	for i := 1 to 50 do
	begin
		if (numerosInteiros[i] <> 0) then
			if (i = 50) then
				write(numerosInteiros[i], '.')
			else
				write(numerosInteiros[i], ', ');
	end;
	writeln;
	writeln;
	
	writeln('N�meros pares:');
	for i := 1 to 50 do
	begin
		if (pares[i] <> 0) then
			if (i = 50) then
				write(pares[i], '.')
			else
				write(pares[i], ', ');
	end;
	writeln;
	writeln;
	
	writeln('N�meros �mpares:');
	for i := 1 to 50 do
	begin
		if (impares[i] <> 0) then
			if (i = 50) then
				write(impares[i], '.')
			else
				write(impares[i], ', ');
	end;
	writeln;
	writeln;
	
	writeln('N�meros primos:');
	for i := 1 to 50 do
	begin
		if (primos[i] <> 0) then
			if (i = 50) then
				write(primos[i], '.')
			else
				write(primos[i], ', ');
	end;
	writeln;
	writeln;
	
	writeln('Soma de todos os n�meros multiplicados: ', somaDeTodos);

End.