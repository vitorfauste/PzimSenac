// Elabore um algoritmo para adivinhar um número. Carregar um número aleatoriamente e perguntar o número para o usuário.
// Se ele acertar emitir a mensagem: Você acertou Parabéns! caso contrario emitir a mensagem o número é maior ou o numero é menor, 
// dependendo do contexto. Permitir três tentativas. Para finalizar informar o número 0(zero).

Program AdivinharNumero;

var
	numeroDigitado, numeroCorreto, limiteNumeroCorreto, i, flag: integer;

Begin
	while true do
	begin	
		write('Digite o limite do número aleatório: ');
		readln(limiteNumeroCorreto);
		numeroCorreto := random(limiteNumeroCorreto) + 1;
		inc(flag);
		for i := 1 to 3 do
		begin        
			clrscr;
			writeln(i, 'ª TENTATIVA');
			writeln;
			write('Digite um número ou zero para finalizar: ');
			readln(numeroDigitado);		
			writeln;	
			
			if (numeroDigitado = 0) then
			begin
				writeln('Você finalizou o programa.');
				break;
			end;		
			
			if (numeroDigitado = numeroCorreto) then
			begin
				writeln('VOCÊ ACERTOU!');	
				readln;
				break;
			end
			
			else if (numeroDigitado > numeroCorreto) then
			begin
				writeln('O número digitado é maior que o número correto.');
				readln;
			end
				
			else
			begin  
				writeln('O número digitado é menor que o número correto.');	
				readln;
		  end;
		  
		  if (i = 3) then
		  	writeln('Tentativas finalizadas!');
		end;	  
	end;                                
End.