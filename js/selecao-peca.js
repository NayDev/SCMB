function selecaopeca(e){
	e.preventDefault();

	var me = $('#listapecas');
	var valor = me.val();

	if(valor == '0') {
		$('#campospeca').hide(1, function(){
			alert('Selecione uma opcao');
		});
		return;
	} else {
		$('#campospeca').show(1);
		return;
	}
}
function salvarPeca(){ //Função para salvar peças
	var elem = $('#formulario3').find('select[name=\'selectInicialpeca\']').val();

	switch (elem) {
		case '1':
			var lista = $('#listapecas').val();

			if(lista == '0')
				return;
			else {
				var div_elem = $('#campospeca');
				var id_peca = lista;
				var unidade = div_elem.find('input[name=\'unidade\']').val();
				var valor = div_elem.find('input[name=\'valor\']').val();

				var dados = { action: 'atualizarPeca',
											id_peca:id_peca,
											unidade: unidade,
											valor: valor};

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
								limparCampos(div_elem);
							return;
							/* FIM DO RETORNO */
						}
					});
			}
		break;
		case '2':
		//Cadastrar a pecas
		var form = $('#inserirpeca');
		var referencia = form.find('select[name=\'referencia\']').val();
		var nome = form.find('input[name=\'nome\']').val();
		var unidade = form.find('input[name=\'unidade\']').val();
		var marca = form.find('input[name=\'marca\']').val();
		var valor = form.find('input[name=\'valor\']').val();

		var inserirpeca ={ //Array
			referencia : referencia,
			nome : nome,
			unidade : unidade,
			marca : marca,
			valor : valor,

			action:'salvarpeca'
		};
		$.ajax({
				type : "POST",
				dataType : "json",
				url : "./modulos/salvarConteudo.php",
				data : inserirpeca,
				complete : function(e) {
					/* INICIO DO RETORNO */
					var resp = e.responseText;


					if(resp == "true") {
						alert('Cadastrado com Sucesso !');

					} else {
						alert('Não Cadastrado !');

					}

					limparCampos(form);
					return;
					/* FIM DO RETORNO */
				}
			});
		break;
	}
}
//Para o segundo modal de pecas
function opcaopeca(e){//
	e.preventDefault();

	var me = $(this);
	var form = $("#formulario3");
	var valor = me.val();

	switch(valor){
			case '1': // consultar
				form.find('#inserirpeca').hide(1, function(){
					form.find('#consultarpeca').show(2, function(){
						$.ajax({
								type : "POST",
								dataType : "json",
								url : "./modulos/salvarConteudo.php",
								data : {action: 'consultarpeca'},
								complete : function(e) {
									/* INICIO DO RETORNO */
										//para mostrar a lista  de bikes q tem no outro select
									var resp = e.responseJSON;
									var tamanho = resp.length;
									var script = "";

									script += "<option value=\"0\" > Selecione a peça .. </option>";
									for(var x=0; x< tamanho; x++){
										var nome = resp[x].nome_estoque;
										var ref = resp[x].nome_referencia;
										var id_estoque = resp[x].id_estoque;

										var valor = nome + ", " + ref;


										script += "<option value=\"" + id_estoque + "\" > "  + valor + "</option>";
									}

									$('#listapecas').find('option').each(function(e){
											$(this).remove();
									});

									$(script).appendTo("#listapecas");
									return;

												limparCampos(form);
												return;
									/* FIM DO RETORNO */
								}
							});

					});
				});
			break;
			/// Aqui que aparece o inserir as novas bicicleta
		case '2': // cadastrar
			form.find('#consultarpeca').hide(1, function(){
				form.find('#inserirpeca').show(2);
				});
			break;

			default:
				form.find('#consultarpeca').hide(1);
				form.find('#inserirpeca').hide(1);
			break;


	}
}
