Program Pzim ;

var
	num: integer;
	
Begin
	write('Digite um n�mero: ');
	readln(num);
	while (num > 0) do
	begin
		if (num mod 2 = 0) then
			writeln('O n�mero digitado � par')
		else
			writeln('O n�mero � �mpar.');
		write('Digite um n�mero: ');
		readln(num);
	end;	
End.