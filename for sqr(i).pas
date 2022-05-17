Program Sqri;

var
	i: integer;
	s: real;
	
Begin
	s := 0;
	for i := 1 to 10 do
	begin
			
		if (i mod 2 = 0) then
		begin
			s := s - (i/sqr(i));	
		end
		else
		begin
			s := s + (i/sqr(i));
		end;
		
	end;  
	
	writeln('Valor de S: ', s);
End.