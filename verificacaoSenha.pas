Program verificacaoSenha;

var
	senha: string;

Begin
	repeat
		write('Digite a senha: ');
		readln(senha);
	until (senha = 'asdfg');  
End.