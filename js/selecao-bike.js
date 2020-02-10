function selecaoBicicletas(){ // Função para a seleção de bicicletas
	var id = $(this).val();

	if(id !== '-1') {
		$.ajax({
				type : "POST",
				dataType : "json",
				url : "./modulos/salvarConteudo.php",
				data : { action: 'selecaoBicicletas',
									id:id},
				complete : function(e) {
					/* INICIO DO RETORNO */
					var resp = e.responseJSON;
					var fields = "";

					$('#bicicleta option').remove();

					if(resp !== undefined){
						var tamanho = resp.length;

						for(var x=0; x<tamanho;x++){
							var variavel = "Aro: " + resp[x].aro_bicicleta + ", Cor: " + resp[x].cor_bicicleta + " - Modelo: " + resp[x].modelo_bicicleta + ", " + resp[x].marca_bicicleta;
							fields += "<option value=\"" + resp[x].id_bicicleta + "\">" + variavel + "</option>";
						}

						$(fields).appendTo('#bicicleta');
					} else {
						alert('Nenhuma bicicleta encontrada!');
					}

					return;
					/* FIM DO RETORNO */
				}
			});
	} else {
		alert("Selecione opções válidas!");
	}
}
function opcaoBike(e){ // função de salvar a bike
	e.preventDefault();

	var me = $(this);
	var form = $("#formulario2");
	var valor = me.val();

	switch(valor){
			case '1': // consultar
				form.find('#inserirBike').hide(1, function(){
					form.find('#consultarBike').show(2, function(){
						$.ajax({
								type : "POST",
								dataType : "json",
								url : "./modulos/salvarConteudo.php",
								data : {action: 'consultarBike'},
								complete : function(e) {
									/* INICIO DO RETORNO */
										//para mostrar a lista  de bikes q tem no outro select
									var resp = e.responseJSON;
									var tamanho = resp.length;
									var script = "";

									for(var x=0; x< tamanho; x++){
										var cor = resp[x].cor_bicicleta;
										var modelo = resp[x].modelo_bicicleta;
										var marca = resp[x].marca_bicicleta;
										var aro = resp[x].aro_bicicleta;
										var id = resp[x].id_bicicleta;

										var valor = id + ";" + cor + ";" + modelo + ";" + marca + ";" + aro;


										script += "<option value=\"" + valor + "\" > Cor: " + cor + ", Aro: " + aro + " - Modelo: " + modelo + ", " + marca + "</option>";
									}

									$("#listaBicicletas").find('option').each(function(e){
											$(this).remove();
									});

									$(script).appendTo("#listaBicicletas");
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
			form.find('#consultarBike').hide(1, function(){
				form.find('#inserirBike').show(2);
				});
			break;

			default:
				form.find('#consultarBike').hide(1);
				form.find('#inserirBike').hide(1);
			break;


	}
}
//Função para força o usuario a escolher
function opcaoBotaoSalvar(e){//
	e.preventDefault();
	var form = $("#formulariobike");
	var valor = form.find('select[name=\'selectInicialBike\']').val();

	if(valor == '1') consultarBikeBD();
	else if (valor == '2') inserirBikeBD();
	else alert('Selecione uma opção válida!');

	return;
}

function consultarBikeBD(){
	var select = $('#listaBicicletas');
	var valor = select.val(); //id + ";" + cor + ";" + modelo + ";" + marca + ";" + aro;
	parte = valor.split(";");

	var id = parte[0];
	var cor = parte[1];
	var modelo = parte[2];
	var marca = parte[3];
	var aro = parte[4];

	$("#telaNegra").css('z-index','19');

	$('#formulariobike').hide(2, function(){
		var criar = "";

		criar += "<tr class=\"registro_lista_bike remover\" id=\"" + id + "\"><td>" + modelo + "</td><td>" + marca + "</td><td>" + cor + "</td><td>" + aro + "</td></tr>";

		$('#lista-bike table tr:last').after(criar);
	});

	alert('Cadastrado com Sucesso e listado no seu registro!');
	return;

}
function inserirBikeBD(){
	var form_cadastrar = $('#inserirBike');

	var modelo = form_cadastrar.find('input[name=\'modelo\']').val();
	var marca = form_cadastrar.find('input[name=\'marca\']').val();
	var aro = form_cadastrar.find('input[name=\'aro\']').val();
	var cor = form_cadastrar.find('input[name=\'cor\']').val();

	var dados = {
		action : 'salvarBike',
		modelo : modelo,
		marca : marca,
		aro : aro,
		cor : cor
	}

	if(modelo && marca && aro && cor){
		$.ajax({
			type : "POST",
			dataType : "json",
			url : "./modulos/salvarConteudo.php",
			data : dados,
			complete : function(e) {
				/* INICIO DO RETORNO */
				var resp = e.responseText;

				if(resp != 'false') {
					var id = resp;

					$("#telaNegra").css('z-index','19');
					$('#formulariobike').hide(2, function(){
					var criar = "";

						criar += "<tr class=\"registro_lista_bike\" id=\"" + id + "\"><td>" + modelo + "</td><td>" + marca + "</td><td>" + cor + "</td><td>" + aro + "</td></tr>";

						$('#lista-bike table tr:last').after(criar);
					});

					alert('Cadastrado com Sucesso e listado no seu registro!');
				} else {
					alert('Não foi cadastrado!');
				}

				$('#inserirBike').find('input').each(function(){
				$(this).val('');
				});
				return;

				/* FIM DO RETORNO */
			}
		});
	} else {
		alert("Preencha todos os campos!");
		return;
	}

}
