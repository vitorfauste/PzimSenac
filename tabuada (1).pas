Program Numeros ;

var
	num, i: integer;

Begin
	write('Digite um n�mero para apresentar sua tabuada (ou 0 para finalizar o programa): ');
	readln(num);
	while (num <> 0) do
	begin
		if (num < 1) or (num > 9) then
		begin
			writeln;
			writeln('N�mero inv�lido! Insira novamente.');
			writeln;
		end
		else
		begin
			for i := 1 to 9 do   
				writeln(num, ' x ', i, ' = ', num * i);	
			writeln;
		end;
		write('Digite um n�mero para apresentar sua tabuada (ou 0 para finalizar o programa): ');
		readln(num);
	end;		  
End.                       