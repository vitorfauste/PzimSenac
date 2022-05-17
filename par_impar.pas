Program Pzim ;

var
	num: integer;
	
Begin
	write('Digite um número: ');
	readln(num);
	while (num > 0) do
	begin
		if (num mod 2 = 0) then
			writeln('O número digitado é par')
		else
			writeln('O número é ímpar.');
		write('Digite um número: ');
		readln(num);
	end;	
End.