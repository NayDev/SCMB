function opcaoordem(){ // função para salvar as ordem de serviço e orçamentos
	var form = $('#formularioordemservico');
	var tipo = form.find('select[name=\'tipos_servico\']').val();
	var vlo = form.find('input[name=\'valor\']').val();
	var dte = form.find('input[name=\'data_entrada\']').val();
	var dts = form.find('input[name=\'data_saida\']').val();
	var cli = form.find('select[name=\'cliente\']').val();
	var bik = form.find('select[name=\'bicicleta\']').val();
	var tabelaEstoque = $('#serv_os').find('table');
	var listaEstoque = [];

	tabelaEstoque.find('tr.linhasInseridas').each(function(){
		var id_est = $(this).find('.selecionarEstoque').val();

		if(id_est !== '-1') {
			var qtd = $(this).find('.quantidade').find('select').val();
			valor = id_est + "_" + qtd;

			listaEstoque.push(valor);
		}

	});

	var dados = {
		action : 'salvarordem',
		tipo : tipo,
		vlo : vlo,
		dte: dte,
		dts : dts,
		cli : cli,
		bik: bik,
		listaEstoque: listaEstoque
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
				window.location.href = './dompdf/pdf_ordem.php';
			} else {
				alert('Não Foi Salvo e não poderá realizar o pdf!');
			}
			limparCampos(form);
			return;
			/* FIM DO RETORNO */
		}
	});
}

/*Começando o PDF*/
