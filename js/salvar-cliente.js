
function opcaoSalvar(){ // função para salvar os dados do cliente
	var form = $('#formularioCliente');
	var nome = form.find('input[name=\'Nome_completo\']').val();
	var sexo = form.find('input[name=\'optsexo\']').val();
	var data_nasc = form.find('input[name=\'data_nasc\']').val();
	var rg = form.find('input[name=\'RG\']').val();
	var cpf = form.find('input[name=\'Cpf\']').val();
	var telefone = form.find('input[name=\'tel\']').val();
	var celular = form.find('input[name=\'Celular\']').val();
	var email = form.find('input[name=\'Email\']').val();
	var rua = form.find('input[name=\'rua\']').val();
	var numero = form.find('input[name=\'numero\']').val();
	var bairro = form.find('input[name=\'bairro\']').val();
	var cep = form.find('input[name=\'cep\']').val();
	var complemento = form.find('input[name=\'complemento\']').val();
	var cidade = form.find('input[name=\'cidade\']').val();
	var lista = "";
	var cont = 0;


	form.find('#lista-bike tr.registro_lista_bike').each(function(){ // para pegar o id das bicicleta
		var me = $(this);
		if(cont == 0) {
			lista += me.attr('id');
		} else {
			lista += "_" + me.attr('id');
		}
		cont++;
	});

	var dados = { //Array
		action : 'salvarcliente',
		nome : nome,
		sexo : sexo,
		data_nasc : data_nasc,
		rg : rg,
		cpf : cpf,
		telefone : telefone,
		celular : celular,
		email : email,
		rua : rua,
		numero : numero,
		bairro : bairro,
		cep : cep,
		complemento : complemento,
		cidade : cidade,
		lista : lista
	};
$.ajax({
		type : "POST",
		dataType : "json",
		url : "./modulos/salvarConteudo.php",
		data : dados,
		complete : function(e) {
			/* INICIO DO RETORNO */
			var resp = e.responseText;

			if(resp == "true") {
				alert('Cliente Cadastrado !');

			} else {
				alert('Cliente Não Cadastrado !');
			}
			
			limparCampos(form);
			return;
			/* FIM DO RETORNO */
		}
	});
}
