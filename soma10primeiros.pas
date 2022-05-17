Program Soma10Primeiros;

var
	i, j: integer;	
	valor: real;

Begin
	j := 500;
	valor := 0;
	for i := 1 to 10 do
	begin		
		if (j mod 100 = 0) then
		begin
			valor := valor + (2/j);
		end	
		else
		begin
			valor := valor - (5/j);
		end;
		
		dec(j, 50);
	end;	  
	
	writeln(valor);
End.