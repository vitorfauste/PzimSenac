Program ValorDeYSerie;

var
	i, j, sinal: integer;
	y: real;
	
Begin
	sinal := 0;
	j := 1;
	for i := 1 to 50 do
	begin
		inc(sinal);
		if (sinal = 1) or (sinal = 2) then
			y := y + (j / i)
		else
			y := y - (j / i);	
		
		j := j + 2;
		if (sinal = 4) then
			sinal := 0;	
	end;	  
	
	writeln(y);
End.