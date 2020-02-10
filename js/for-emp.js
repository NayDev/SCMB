function opcaofornecedor(){ // Função de salvar o fornecedor
	/* Dados de Fornecedor */
	var form = $('#dados_fornecedor');
	var nome_forn = form.find('input[name=\'Nome_completo_fornecedor\']').val();
	var rg_forn = form.find('input[name=\'RG_fornecedor\']').val();
	var cpf_forn = form.find('input[name=\'Cpf_fornecedor\']').val();
	var telefone_forn = form.find('input[name=\'telefone_fornecedor\']').val();
	var celular_forn = form.find('input[name=\'celular_fornecedor\']').val();
	var email_forn = form.find('input[name=\'Email_fornecedor\']').val();

	/* Dados de Empresa */
	var formEmpre = $('#dados_empresa');
	var nome_empresa = formEmpre.find('input[name=\'Nome_Completo\']').val();
	var cnpj_empresa = formEmpre.find('input[name=\'cnpj\']').val();
	var rua_empresa = formEmpre.find('input[name=\'rua\']').val();
	var numero_empresa = formEmpre.find('input[name=\'numero\']').val();
	var complemento_empresa = formEmpre.find('input[name=\'complemento\']').val();
	var cep_empresa = formEmpre.find('input[name=\'cep\']').val();
	var bairro_empresa = formEmpre.find('input[name=\'Bairro\']').val();
	var cidade_empresa = formEmpre.find('input[name=\'Cidade\']').val();
	var telefone1_empresa = formEmpre.find('input[name=\'telefone1\']').val();
	var telefone2_empresa = formEmpre.find('input[name=\'Telefone2\']').val();
	var email_empresa = formEmpre.find('input[name=\'Email\']').val();
	var observacao_empresa = formEmpre.find('textarea[name=\'obs\']').val();


	var dados_fornecedor ={ //Array
		nome_forn : nome_forn,
		rg_forn : rg_forn,
		cpf_forn : cpf_forn,
		telefone_forn : telefone_forn,
		celular_forn : celular_forn,
		email_forn : email_forn
	};

	var dados_empresa ={ //Array
		nome_empresa : nome_empresa,
		cnpj_empresa : cnpj_empresa,
		rua_empresa : rua_empresa,
		numero_empresa : numero_empresa,
		complemento_empresa : complemento_empresa,
		cep_empresa : cep_empresa,
		bairro_empresa : bairro_empresa,
		cidade_empresa : cidade_empresa,
		telefone1_empresa : telefone1_empresa,
		telefone2_empresa : telefone2_empresa,
		email_empresa : email_empresa,
		observacao_empresa : observacao_empresa

	};

	var dados = { // ação para salvar a empresa e depois o fornecedor pois podemos ter varios fornecedores
		action : 'salvarfornecedor',
		dados_fornecedor:dados_fornecedor,
		dados_empresa: dados_empresa
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
				alert('Cadastrado com Sucesso !');

			} else {
				alert('Não Cadastrado !');

			}

			limparCampos(form);
			limparCampos(formEmpre);
			return;
			/* FIM DO RETORNO */
		}
	});
}
