// Elabore um algoritmo para adivinhar um n�mero. Carregar um n�mero aleatoriamente e perguntar o n�mero para o usu�rio.
// Se ele acertar emitir a mensagem: Voc� acertou Parab�ns! caso contrario emitir a mensagem o n�mero � maior ou o numero � menor, 
// dependendo do contexto. Permitir tr�s tentativas. Para finalizar informar o n�mero 0(zero).

Program AdivinharNumero;

var
	numeroDigitado, numeroCorreto, limiteNumeroCorreto, i, quantidadeDeTentativas: integer;

Begin
	numeroDigitado := 1;
	
	while (numeroDigitado <> 0) do
	begin	
		clrscr;
		write('Digite o limite do n�mero aleat�rio: ');
		readln(limiteNumeroCorreto);
		numeroCorreto := random(limiteNumeroCorreto) + 1;
		
		write('Digite a quantidade de tentativas: ');
		readln(quantidadeDeTentativas);
		
		for i := 1 to quantidadeDeTentativas do
		begin        
			clrscr;
			writeln(i, '� TENTATIVA');
			writeln;
			write('Digite um n�mero ou zero para finalizar: ');
			readln(numeroDigitado);		
			writeln;	
			
			if (numeroDigitado = 0) then
			begin
				writeln('Voc� finalizou o programa.');
				break;
			end;		
			
			if (numeroDigitado = numeroCorreto) then
			begin
				writeln;
				writeln('VOC� ACERTOU!');	
				readln;
				break;
			end
			
			else if (numeroDigitado > numeroCorreto) then
			begin
				writeln('O n�mero digitado � maior que o n�mero correto.');
				readln;
			end
				
			else
			begin  
				writeln('O n�mero digitado � menor que o n�mero correto.');	
				readln;
		  end;
		  
		  if (i = quantidadeDeTentativas) then
		  begin
		  	writeln;
		  	writeln('Tentativas finalizadas!'); 
		  	readln;
		  end;
		end;	  
	end;                                
End.