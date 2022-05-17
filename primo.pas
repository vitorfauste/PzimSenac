Program Pzim ;
var
	num, i, cont1, cont2: integer;
	
Begin
	cont1 := 0;
	cont2 := 0;
	write('Digite um número ou 0 (zero) para finalizar: ');
	read(num);
	while (num <> 0) do
	Begin
		if (num > 0) then
			for i := 1 to num do
			Begin
				if (num mod i = 0) then
					cont1 := cont1 + 1;
			End;
		if (cont1 = 2) then
			writeln(num, ' é primo.')
		else
			writeln(num, ' não é primo.');           
			
		cont1 := 0;
		
		write('Digite um número ou 0 (zero) para finalizar: ');
		read(num);
	End;  
End.