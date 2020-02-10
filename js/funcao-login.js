function logar(){ // Função de logar com o usuario e senha
	var form = $('#form_login_tela');
	var usuario = form.find('input[name=\'usuario\']').val();
	var senha = form.find('input[name=\'senha\']').val();

	var dados_recebidos = { action: "loginUsuario", usuario : usuario, senha:senha};

	$.ajax({
			type : "POST",
			dataType : "json",
			url : "./modulos/salvarConteudo.php",
			data : dados_recebidos,
			complete : function(e) {
				/* INICIO DO RETORNO */
				var resp = e.responseText;

				if(resp == "true") {
					alert('Bem Vindo!!!');

					location.reload();
				
					return;

				} else {
					alert('Tente Novamente !');

					return;
				}
				/* FIM DO RETORNO */
			}
		});
}

function deslogar(){ // Função de deslogar (para sair do sistema)
	$.ajax({
			type : "POST",
			dataType : "json",
			url : "./modulos/salvarConteudo.php",
			data : { action: 'deslogarUsuario'},
			complete : function(e) {
				/* INICIO DO RETORNO */
				var resp = e.responseText;

				if(resp == "true") {
					alert('Até a Próxima!');

					location.reload();
					return;
				} else {
					alert('Login não deslogado!');
					return;
				}
				/* FIM DO RETORNO */
			}
		});
}
